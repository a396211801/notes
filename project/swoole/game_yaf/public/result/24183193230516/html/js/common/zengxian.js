$(function() {
	$('#tabOption li').each(function() {
		$(this).click(function() {
			changeType($(this).attr('value'));
		});
	});

	$('.field-radio').find('label').click(function() {
		$(this).parent().parent().find('label').removeClass('radio-select');
		$(this).addClass('radio-select');
	});

	$('#submitButton').click(function() {
		submitForm();
	});

	var inputValue;

	$('.form-item').find('input').focus(function() {
		inputValue = $(this).val();
	});
	
	$('.form-item').find('input').blur(function() {
		var newInputValue = $(this).val();

		if(newInputValue != '' && newInputValue != inputValue) {

			if($(this).attr('id') == 'mobile') {
				if(!(/^1(3|4|5|7|8)\d{9}$/.test(newInputValue))) {
					return false;
				}
				else {
					inputOnblur();
				}
			}
			else {
				inputOnblur();
			}
		}
		else {
			return false;
		}
	});

	$('#submitCheckBtn').click(function() {
		if ($('#agreeCheck').prop('checked')) {
			submitForm();
		} else {
			TipWindow.showSingle('请勾选我同意', '关闭');
		}
	});

	$('#submitInformationButton').click(function() {
		submitInformation();
	});

	$('#calculateButton').click(function() {
		calculate();
	});

	$('#surveyButton').click(function() {
		survey();
	});

	$('#participantButton')
			.click(
					function() {
						location.href = getRealPath('/activity{0}/survey.html?gorderId=')
								+ $('#gorderId').val();
					});

	$('#promotionButton').click(function() {
		gotoPromotion(false);
	});

	$('#promotionButtonInSurvey').click(function() {
		gotoPromotion(true);
	});

	popupInput('#insuredSumValue', '#insuredSum', '#insuredSumPopTipList');
	popupInput('#genderValue', '#gender', '#genderPopTipList');
	selectInput('#insuredSumSelectValue', '#insuredSum',
			'#insuredSumPopTipList');

	$('#insuredSumPopTipList').find('li').click(function() {
		var value = $(this).attr('reference');
		$('#dailyAllowanceValue').text('最高' + value + '元/天');
		$('#dailyAllowance').val(value);
		TipWindow.hide('#insuredSumPopTipList');
	});

	selectCalculatorRadio('payWay');
	selectCalculatorRadio('additional');
	selectCalculatorRadio('socialSecurity');

	$('#sendSmsButton').click(function() {
		var disabled = $('#sendSmsButton').attr('disabled');
		if (disabled == 'disabled') {
			return;
		}
		sendSmsCode(false);
	});

	$('#vertifyCodePopupSendSmsButton').click(function() {
		var disabled = $('#vertifyCodePopupSendSmsButton').attr('disabled');
		if (disabled == 'disabled') {
			return;
		}
		vertifyCodePopupSendSmsCode(false);
	});

	selectGender('#genderRadio', '#gender');
	selectGender('#childGenderRadio', '#childGender');

});

var $t = 60;

function showPopupSendTime() {
    $('#vertifyCodePopupSendSmsButton').attr('disabled', 'disabled');
    $('#vertifyCodePopupSendSmsButton').addClass('sms-button-disabled');
    $('#vertifyCodePopupSendSmsButton').html($t + '秒');
    $t -= 1;
    if ($t <= 0) {
        $('#vertifyCodePopupSendSmsButton').removeAttr('disabled');
        $('#vertifyCodePopupSendSmsButton').removeClass('sms-button-disabled')
        $('#vertifyCodePopupSendSmsButton').html('获取验证码');
        $t = 60;
        return false;
    }
    setTimeout("showPopupSendTime()", 1000);
}

function vertifyCodePopupSendSmsCode(voice, handleFunction) {
    if (checkMobile('#vertifyPopupMobile')){
        if (voice == 'true') {
            TipWindow.showSingle('已获取语音验证码，请注意接听电话');
        } else {
            showPopupSendTime();
        }
        $.ajax({
            type:"POST",
            dataType:"json",
            url: "/interfaces/sms/send.html",
            async:false,
            data:{
                mobile: $('#vertifyPopupMobile').val(),
                voice: voice,
                tip: $('#smsTipContent').val(),
                smsToken: $('#' + $('#smsTokenId').val()).val() + smsTokenPrefix
            },
            success:function(data){
                if (typeof(handleFunction) == 'undefined') {
                    if(data.retCode === "200"){
                        errorTip('#username', sendSMSMessage, 2);
                        $('#voiceCode').css('display', 'block');
                        //sendSms(phoneNumber);
                    } else{
                        $t = 0;
                        errorCommit('#vertifyPopupMobile', data.retDesc, 2);
                        return;
                    }
                } else {
                    handleFunction(data);
                }
            }
        });
    }
}

function selectCalculatorRadio(fieldName) {
	$('div[name="' + fieldName + 'Value"]').click(function() {
		$('#' + fieldName).val($(this).attr('value')).change();
		$('div[name="' + fieldName + 'Value"]').each(function() {
			$(this).removeClass('radio-btn-select');
		});
		$(this).addClass('radio-btn-select');
	})
}

var didiLink = 'http://t.cn/Rfy3x3C';
var zhonganLink = '/m/j/tuihuo.html';

function selectGender(inputId, hiddenId) {
	$(inputId).find('li').click(function() {
		$(inputId).find('li').each(function() {
			$(this).removeClass('gender-select');
		});
		clearError(hiddenId);
		$(this).addClass('gender-select');
		$(hiddenId).val($(this).attr('value'));
	});
}

//循环获取数据
function getQAData(prefix, count) {
	var o = {};
	for(var i = 1; i <= count; i++) {
		var questionName = prefix + 'question' + i;
		var answerName = prefix + 'answer' + i;
		o['question' + i] = $('input:hidden[name=' + questionName + ']').val(); 
		o['answer' + i] = $('input:radio[name=' + answerName + ']:checked').val(); 
	}

	return o;
}

function getRealPath(path) {
	if ($('#isMobilePage').val() == "true") {
		path = '/m' + path;
	}
	return $.format(path, $('#activityPath').val());
}

function hasIndexSurvey() {
	return $('#surveyPositionConfig').val() == "index";
}

function hasPopupResult() {
	return $('#resultPagePositionConfig').val() == "popup";
}

function hasSinglePageResult() {
	return $('#resultPagePositionConfig').val() == "single";
}

function isResultPage() {
	if(isNotNull($('#isResultPage')) && $('#isResultPage').val() == "true") {
		return true;
	}
	return false;
}

function hasPopupEmail() {
	if(!isResultPage() && $('#emailPositionConfig').val() == "popup") {
		return true;
	} 
	if( isResultPage() && $('#emailPositionConfig').val() == "resultPopup") {
		return true;
	}
	else {
		return false;
	}
}

function hasLastEmail() {
	return $('#emailPositionConfig').val() == "last";
}

function hasPopupSurvey() {
	if(!isResultPage() && $('#surveyPositionConfig').val() == "popup") {
		return true;
	} 
	if( isResultPage() && $('#surveyPositionConfig').val() == "resultPopup") {
		return true;
	}
	else {
		return false;
	}
}

function hasPopupCalculator() {
	if(!isResultPage() && $('#calculatePositionConfig').val() == "popup") {
		return true;
	}
	if(isResultPage() && $('#calculatePositionConfig').val() == "resultPopup") {
		return true;
	} 
	else {
		return false;
	}
}

// function hasPopupVertifyCode() {
// 	if(!isResultPage() && $('#hasVerifyCodeConfig').val() == "popup") {
// 		return true;
// 	} 
// 	if( isResultPage() && $('#hasVerifyCodeConfig').val() == "resultPopup") {
// 		return true;
// 	}
// 	else {
// 		return false;
// 	}
// }

function hasPopupIdentityCard() {
	return $('#identityCardPopupConfig').val() != "no";
}

function isPopupIdentityCardForce() {
	return $('#identityCardPopupConfig').val() == "force";
}

function isEmailNotOption() {
	return $('#emailOptionConfig').val() == "false";
}

function getThirdStatCodeConfig() {
	return $('#thirdStatCodeConfig').val();
}

function changeType(type) {
	$('#tabOption li').each(function() {
		$('#' + $(this).attr('value') + 'Option').addClass('option-unselect');
		$('#' + $(this).attr('value') + 'Banner').addClass('hide');
		$('#' + $(this).attr('value') + 'Triangle').addClass('hide');
		$('#' + $(this).attr('value') + 'Title').addClass('hide');
		$('#' + $(this).attr('value') + 'Description').addClass('hide');
		$('#' + $(this).attr('value') + 'Count').addClass('hide');
	});
	$('#' + type + 'Option').removeClass('option-unselect');
	$('#' + type + 'Banner').removeClass('hide');
	$('#' + type + 'Title').removeClass('hide');
	$('#' + type + 'Triangle').removeClass('hide');
	$('#' + type + 'Description').removeClass('hide');
	$('#' + type + 'Count').removeClass('hide');
	$('#' + type + 'Image').attr('src', $.format($('#imageValue').val(), type));
	$('#type').val(type);
}

function submitForm() {
	if (hasIndexSurvey()) {
		if (!checkSurvey('')) {
			return;
		}
	}
	if (checkForm()) {
		showLoading();
		$.ajax({
			type : 'POST',
			url : getRealPath('/activity{0}/commit.html'),
			data : getFormData(),
			dataType : 'json',
			success : function(data) {
				handleSubmitResult(data);
				// handleThirdStatistics(data);
				try {
					clickedStatistics()
				} catch(e) {
					console.error(e);
				}
			},
			error : function(data) {
				hideLoading();
				errorCommit('', '信息已提交，保险公司客服后期会致电您确认保单信息等具体事宜。');
			}
		});
	}
}

function inputOnblur() {
	$.ajax({
		type : 'POST',
		url : getRealPath('/activity/common/storeTemporaryInfo.html'),
		data : getFormData(),
		dataType : 'json',
		success : function(data) {
		},
		error : function(data) {
		}
	});
}

function submitSurveyForm(gorderId) {
	var QAData = getQAData('surveyTip', 3);
	var baseData = {
		email : $('#surveyFormEmail').val(),
		gorderId : gorderId
	};

	var data = Object.assign(baseData, QAData);

	$.ajax({
		type : 'POST',
		url : getRealPath('/activity/common/survey/commit.html'),
		data : data,
		dataType : 'json',
		success : function(data) {
			handleLatterResult(data, '#surveyTip');
		},
		error : function(data) {
			errorCommit('#' + data.retField, data.retDesc);
		}
	});
}

function submitCalculatorForm(gorderId) {
	$('#calculatorTip').css('z-index', '-1');
	showLoading();

	var QAData = getQAData('calcuTip', 3);
	var baseData = {
		gorderId : gorderId
	};
	var data = Object.assign(baseData, QAData);

	$.ajax({
		type : 'POST',
		url : '/m/activity/common/questionCalculate.html',
		data : data,
		dataType : 'json',
		success : function(data) {
			hideLoading();
			if (data.retCode == '200') {
				TipWindow.hide('#calculatorTip');

				executeWorkflow();

				// var calculatorResultTemplate = '<p>如果您购买《{0}》，您每{1}需支付保费预估为：<span class="money">￥{2}元</span></p>'
				// 		+ '<p>折合每天仅：<span class="money">￥{3}元</span></p>';
				// var calcuResultHtml = '';
				// if (data.merchant.englishName == 'pingan') {
				// 	if (data.payWay == '按月交费') {
				// 		calcuResultHtml += $.format(
				// 				calculatorResultTemplate,
				// 				"鸿运随行经典版返还型意外保障", "月",
				// 				data.calculator.totalMonthPremium,
				// 				data.calculator.dayForMonthPremium);
				// 	} else if (data.payWay == '按年交费') {
				// 		calcuResultHtml += $.format(
				// 				calculatorResultTemplate,
				// 				"鸿运随行经典版返还型意外保障", "年",
				// 				data.calculator.totalYearPremium,
				// 				data.calculator.dayForYearPremium);
				// 	}
				// } else if (data.merchant.englishName == 'yangguang') {
				// 	if (data.payWay == '按月交费') {
				// 		calcuResultHtml += $.format(
				// 				calculatorResultTemplate, "阳光真心守护保障计划",
				// 				"月", data.calculator.monthPremium,
				// 				data.calculator.dayForMonthPremium);
				// 	} else if (data.payWay == '按年交费') {
				// 		calcuResultHtml += $.format(
				// 				calculatorResultTemplate, "阳光真心守护保障计划",
				// 				"年", data.calculator.yearPremium,
				// 				data.calculator.dayForYearPremium);
				// 	}
				// } else if (data.merchant.englishName == 'taiping') {
				// 	calcuResultHtml += $.format(
				// 			calculatorResultTemplate, "乐享太平B款意外保障计划",
				// 			"年", data.calculator.yearPremium,
				// 			data.calculator.dayPremium);
				// } else if (data.merchant.englishName == 'hezhong') {
				// 	if (data.payWay.indexOf("按月交") != -1) {
				// 		calcuResultHtml += $.format(
				// 				calculatorResultTemplate, "合众合家康健终身寿险",
				// 				"月", data.calculator.monthPremium,
				// 				data.calculator.dayForMonthPremium);
				// 	}
				// 	if (data.payWay.indexOf("按年交") != -1) {
				// 		calcuResultHtml += $.format(
				// 				calculatorResultTemplate, "合众合家康健终身寿险",
				// 				"年", data.calculator.yearPremium,
				// 				data.calculator.dayForYearPremium);
				// 	}
				// } else if (data.merchant.englishName == 'bainian') {
				// 		calcuResultHtml += $.format(
				// 				calculatorResultTemplate, "百年健康壹佰两全保险",
				// 				"年", data.calculator.yearPremium,
				// 				data.calculator.dayForYearPremium);
				// }

				// $('#resultCont').append(calcuResultHtml);
				// TipWindow.hide('#resultTip');
				// TipWindow.showTip('#calcuResultTip');

			}
		},
		error : function(data) {
			hideLoading();
			errorCommit('#' + data.retField, data.retDesc);
		}
	});
}

var workflowArray = [];
var executedWorkflow = [];
var previousWorkflow = -1;

function preparePopWindowsForResult(data) {
	workflowArray = [];
	previousWorkflow = -1;
	if(data.isPopupVerifyCode == true) {
		$('#vertifyCodeTipClose').click(function() {
			TipWindow.hide('#vertifyCodeTip')
		});
		$('#vertifyCodeTipButton').click(function() {
			submitVertifyCodeForm(data);
		});
		$('.tip-overlay').click(function() {	
			TipWindow.hide('#vertifyCodeTip')
		});
		if($('#vertifyPopupMobile').val() == '') {
			$('#vertifyPopupMobile').val(data.mobile);
		}
		addWorkflow('#vertifyCodeTip');
	}
	if (hasPopupIdentityCard() && data.hasIdentityCard == "false") {
		$('#identityCardTipButton').click(function() {
			commitIdentityCard(data.gorderId, data.gorderKey);
			TipWindow.hide('#identityCardTip')
		});
		$('.tip-overlay').click(function() {
			if (TipWindow.isShow('#identityCardTip')) {
				commitIdentityCard(data.gorderId, data.gorderKey);
			}
		});
		$('#identityCardTipClose').click(function() {
			commitIdentityCard(data.gorderId, data.gorderKey);
		});
		addWorkflow('#identityCardTip');
	}
	if (hasPopupSurvey()) {
		if (hasPopupEmail()) {
			$('#emailInSurvey').removeClass('hide');
		}
		setSurveyForm(data);
		$('#surveyTipButton').click(function() {
			submitSurveyForm(data.gorderId);
		});
		$('#surveyTipClose').click(function() {
			submitSurveyForm(data.gorderId);
		});
		$('.tip-overlay').click(function() {
			if (TipWindow.isShow('#surveyTip')) {
				submitSurveyForm(data.gorderId);
			}
		});

		$('#surveyGorderId').val(data.gorderId);
		$('#surveyGorderKey').val(data.gorderKey);
		$('.field-radio').find('label').click(
				function() {
					$(this).parent().parent().find('label').removeClass(
							'radio-select');
					$(this).addClass('radio-select');
				});
		addWorkflow('#surveyTip');

	} else if (hasPopupEmail()) {
		$('#emailTipClose').click(function() {
			submitEmailForm(data);
		});
		$('#emailTipButton').click(function() {
			submitEmailForm(data);
		});
		$('.tip-overlay').click(function() {
			submitEmailForm(data);
		});
		addWorkflow('#emailTip');
	}
	if (hasPopupCalculator() && data.isCalculator == 'true') {
		setCalculatorForm(data);
		$('#calculatorTipButton').click(function() {
			submitCalculatorForm(data.gorderId);
		});
		$('#calculatorTipClose').click(function() {
			submitCalculatorForm(data.gorderId);
		});
		$('.tip-overlay').click(function() {
			if (TipWindow.isShow('#calculatorTip')) {
				submitCalculatorForm(data.gorderId);
			}
		});

		$('#calculatorGorderId').val(data.gorderId);
		$('#calculatorGorderKey').val(data.gorderKey);
		$('.field-radio').find('label').click(
				function() {
					$(this).parent().parent().find('label').removeClass(
							'radio-select');
					$(this).addClass('radio-select');
				});
		addWorkflow('#calculatorTip');

	}
	if (data.notOriginalMerchant == 'true' || (hasPopupCalculator() && data.isCalculator == 'true') || isResultPage()) {
		var url = getResultPage(data);
		if (isNotEmpty($('#type').val())) {
			url = url + '&type=' + $('#type').val();
		}
		addWorkflow(url);
	} else if (hasPopupResult()) {
		$('#resultGorderId').val(data.gorderId);
		$('#resultGorderKey').val(data.gorderKey);
		addWorkflow('#resultTip');
	} else {
		var url = getRealPath('/activity{0}/result.html?gorderId=')
				+ data.gorderId;
		url = url + "&gorderKey=" + data.gorderKey;
		if (isNotEmpty($('#type').val())) {
			url = url + '&type=' + $('#type').val();
		}
		addWorkflow(url);
	}
}

function addWorkflow(action) {
	for ( var i in executedWorkflow) {
		if (executedWorkflow[i] == action) {
			return;
		}
	}
	workflowArray.push(action);
}

function executeWorkflow() {
	previousWorkflow++;
	if (previousWorkflow >= workflowArray.length) {
		return;
	}
	var action = workflowArray[previousWorkflow];
	executedWorkflow.push(action);
	if (action.indexOf('#') == 0) {
		TipWindow.showTip(action);
	} else {
		location.href = action;
	}
}

function submitInformation() {
	if (hasIndexSurvey()) {
		if (!checkSurvey('')) {
			return;
		}
	}
	if (checkForm()) {
		showLoading();
		$.ajax({
			type : 'POST',
			url : getRealPath('/{0}/commit.html'),
			data : getFormData(),
			dataType : 'json',
			success : function(data) {
				hideLoading();
				if (data.retCode == '200') {
					if (hasPopupResult()) {
						$('#resultGorderId').val(data.gorderId);
						$('#resultGorderKey').val(data.gorderKey);
						TipWindow.showSingle(
								'恭喜您已成功申请，稍后贷款专员将致电协助您办理贷款，请注意接听。', '确定');
					} else {
						var url = getRealPath('/{0}/result.html?gorderId=')
								+ data.gorderId;
						url = url + "&gorderKey=" + data.gorderKey;
						if (isNotEmpty($('#type').val())) {
							url = url + '&type=' + $('#type').val();
						}
						location.href = url;
					}
				} else if (data.retCode == '330') {
					errorCommit('', '您填写的手机号已经在近期申请过贷款');
				} else if (data.retCode == '331') {
					errorCommit('', '您填写的身份证号已经在近期申请过贷款');
				} else if (data.retCode == '335' || data.retCode == '336') {
					errorCommit('', '小遗憾哦，您暂时没有符合的贷款可以申请');
				} else if (data.retCode == '202') {
					errorCommit('', '信息已提交，平台客服后期会致电您确认信息。');
					return false;
				} else {
					errorCommit('#' + data.retField, data.retDesc);
					return false;
				}
			},
			error : function(data) {
				hideLoading();
				errorCommit('', '信息已提交，平台客服后期会致电您确认信息。');
			}
		});
	}
}

function handleSubmitResult(data) {
	hideLoading();
	if (data.retCode == '200') {
		preparePopWindowsForResult(data);
		executeWorkflow();
	} else if (data.retCode == '330') {
		handleFail();
	} else if (data.retCode == '331') {
		handleFail();
	} else if (data.retCode == '335') {
		handleFail();
	} else if (data.retCode == '336') {
		handleFail();
	} else if (data.retCode == '340') {
		handleInvalid(data);
	} else if (data.retCode == '202') {
		errorCommit('', '信息已提交，保险公司客服后期会致电您确认保单信息等具体事宜。');
		return false;
	} else {
		errorCommit('#' + data.retField, data.retDesc);
		return false;
	}
}

function handleLatterResult(data, popWindowId) {
	hideLoading();
	if (data.retCode == '200') {
		if (popWindowId) {
			TipWindow.hide(popWindowId);
		}
		executeWorkflow();
	} else {
		errorCommit('#' + data.retField, data.retDesc);
		return false;
	}
}

function initQuestion(id, questionData) {
	var questionContent = '';
	var questionFormat = '<div class="form-item"><div class="question-cont">{0}. <span id="'+ id +'question{0}"><input type="hidden" name="'+ id +'question{0}" value="{1}"/>{1}</span></div>{2}</div>';
	var answerFormat = '<div class="field-radio"><input type="radio" name="'+ id +'answer{0}" id="'+ id +'option{1}"  value="{2}"/><label for="'+ id +'option{1}">{2}</label></div>';

	for (var i = 1; i < questionData.length + 1; i++) {
		var calculatorQuestion = questionData[i - 1];
		var answerContent = "";
		for (var j = 1; j < calculatorQuestion.answerList.length + 1; j++) {
			answerContent += $.format(answerFormat, i, i + '' + j,
					calculatorQuestion.answerList[j - 1]);
		}
		questionContent += $.format(questionFormat, i,
				calculatorQuestion.question, answerContent);
	}

	return questionContent;
}

function setSurveyForm(data) {
	if (data.insurance == null || data.insurance.questionList == null) {
		return;
	}

	if (isNotEmpty(initQuestion('surveyTip', data.insurance.questionList))) {
		$('#commonSurveyForm').empty();
		$('#commonSurveyForm').html(
				initQuestion('surveyTip', data.insurance.questionList));
	}
}

function setCalculatorForm(data) {
	if (data.calculatorQuestion == null) {
		return;
	}

	$('#calculatorLogoImg').attr('src',
			$.format($('#calculatorLogoUrl').val(), data.merchantKey));
	$('#calculatorBannerImg').attr('src',
			$.format($('#calculatorBannerUrl').val(), data.merchantKey));

	if (isNotEmpty(initQuestion('calcuTip', data.calculatorQuestion))) {
		$('#commonCalculatorForm').empty();
		$('#commonCalculatorForm').html(
				initQuestion('calcuTip', data.calculatorQuestion));
	}

	$('#calcuResultTipBtn').click(function() {
		TipWindow.hide('#calcuResultTip');
		executeWorkflow();
	});
	$('.tip-overlay').click(function() {
		if (TipWindow.isShow('#resultTip')) {
			TipWindow.hide('#calcuResultTip');
			executeWorkflow();
		}
	});
}

function getResultPage(data, survey) {
	if (!isResultPage() && (data.showResult == 'true' || hasSinglePageResult())) {
		var resultPath = '/activity{0}/result.html?gorderId=';
		if (survey) {
			resultPath = '/activity{0}/survey/result.html?gorderId=';
		}
		var url = getRealPath(resultPath) + data.gorderId;
		url = url + "&gorderKey=" + data.gorderKey;
		return url;
	} else {
		var url = getRealPath('/activity/common/success.html?gorderId=')
				+ data.gorderId + "&gorderKey=" + data.gorderKey;
		if ($('#singleMerchantPage').val() == 'true') {
			url = url + "&originalMerchant=" + data.originalMerchant;
		}
		if (survey) {
			url = url + "&survey=true";
		}
		return url;
	}
}

function handleFail() {
	var failText = $('#failTipTextConfig').val();
	var failLink = $('#failTipLinkConfig').val();
	if (failLink.split(',').length > 1) {
		showLoading();
		location.href = "/activity/common/fail.html";
	} else {
		// showLoading();
		// location.href="/activity/common/fail.html";
		if (isNotEmpty(failLink)) {
			TipWindow.showSingle('小遗憾哦，您暂时没有符合的保险可以领，别气馁哈，领取' + failText
					+ '压压惊', '立即领取' + failText, 'location.href="' + failLink
					+ '"');
		} else {
			TipWindow.showSingle('小遗憾哦，您暂时没有符合的保险可以领');
		}

	}
}

function handleInvalid(data) {
	var invalidText = $('#invalidTipTextConfig').val();
	var invalidLink = $('#invalidTipLinkConfig').val();
	if (invalidLink.split(',').length > 1) {
		showLoading();
		location.href = "/activity/common/invalid.html?gorderKey="
				+ data.gorderKey;
	} else {
		// showLoading();
		// location.href="/activity/common/invalid.html?gorderKey=" +
		// data.gorderKey;
		// TipWindow.showSingle('恭喜您，已成功提交申请' + data.insuranceName, '立即领取' +
		// invalidText, 'location.href="' + invalidLink +'"');
		if (isNotEmpty(invalidLink)) {
			TipWindow.showSingle('恭喜您，已成功提交申请' + data.insuranceName, '立即领取'
					+ invalidText, 'location.href="' + invalidLink + '"');
		} else {
			TipWindow.showSingle('恭喜您，已成功提交申请' + data.insuranceName);
		}
	}

}

function commitIdentityCard(gorderId, gorderKey) {
	if (!isPopupIdentityCardForce()
			|| checkIdentityCard('#identityCard', identityCardErrorMessage)) {
		showLoading();
		$.ajax({
			type : 'POST',
			url : getRealPath('/activity{0}/commitIdentityCard.html'),
			data : {
				gorderId : gorderId,
				gorderKey : gorderKey,
				identityCard : $('#identityCard').val()
			},
			dataType : 'json',
			success : function(data) {
				handleLatterResult(data, '#identityCardTip');
			}
		});
	}
}

function submitEmailForm(data) {
	$.ajax({
		type : 'POST',
		url : getRealPath('/activity/common/emailCommit.html'),
		data : {
			email : $('#email').val(),
			gorderId : data.gorderId
		},
		dataType : 'json',
		success : function(data) {
			handleLatterResult(data, '#emailTip');
		},
		error : function(data) {
			errorCommit('#' + data.retField, data.retDesc);
		}
	});
}

function submitVertifyCodeForm(data) {
	$.ajax({
		type : 'POST',
		url : getRealPath('/activity/common/commitMobile.html'),
		data : {
			mobile : $('#vertifyPopupMobile').val(),
			smsCode: $('#vertifyPopupSmsCode').val(),
			gorderId: data.gorderId,
			gorderKey: data.gorderKey
		},
		dataType : 'json',
		success : function(data) {
			handleLatterResult(data, '#vertifyCodeTip');
		},
		error : function(data) {
			errorCommit('#' + data.retField, data.retDesc);
		}
	});
}

function getFormData() {
	var QAData = getQAData('', $('#surveyCountConfig').val());

	var data = {
		name : $('#name').val(),
		mobile : $('#mobile').val(),
		identityCard : $('#identityCard').val(),
		email : $('#email').val(),
		type : $('#type').val(),
		code : $('#code').val(),
		inviteCode : $('#inviteCode').val(),
		smsCode : $('#smsCode').val(),
		smsToken : $('#' + $('#smsTokenId').val()).val() + smsTokenPrefix
	};
	if (hasIndexSurvey()) {
		for(var i = 1; i <= $('#surveyCountConfig').val(); i++) {
			data['question' + i] = QAData['question' + i];
			data['answer' + i] = QAData['answer' + i];
		}
	}
	if ($('#noIdentityCard').val() == 'true') {
		data.birthdayValue = $('#birthday').val();
		data.gender = $('#gender').val();
		data.noIdentityCard = 'true';
	}
	if ($('#hasChild').val() == 'true') {
		data.childBirthdayValue = $('#childBirthday').val();
		data.childGender = $('#childGender').val();
		data.childName = $('#childName').val();
		data.hasChild = 'true';
	}

	return data;
}

function checkForm() {
	return checkChildForm() & checkNormalInput('#name', nameErrorMessage)
			& checkMobile('#mobile', mobileErrorMessage)
			& checkIdentityCardOrBirthday() & checkEmailOption();
}

function checkSurvey(prefix) {
	var data = getQAData(prefix, $('#surveyCountConfig').val());

	$.each(data, function(key, val) {
		if(val == undefined) {
			TipWindow.showSingle('亲，答完题才可以领取赠险哟');
			return false;
		} 
	})

	return true;
}

function checkIdentityCardOrBirthday() {
	var noIdentityCard = $('#noIdentityCard').val();
	if (noIdentityCard == 'true') {
		return checkNormalInput('#birthday', birthdayErrorMessage)
				& checkNormalInput('#gender', genderErrorMessage);
	} else {
		return checkIdentityCard('#identityCard', identityCardErrorMessage);
	}
}

function checkChildForm() {
	if ($('#hasChild').val() == 'true') {
		return checkNormalInput('#childBirthday', birthdayErrorMessage)
				& checkNormalInput('#childName', nameErrorMessage)
				& checkNormalInput('#childGender', genderErrorMessage);
	}
	return true;
}

function checkEmailOption() {
	if (isEmailNotOption()) {
		return checkEmail('#email', emailErrorMessage);
	}
	return isEmpty($('#email').val())
			|| checkEmail('#email', emailErrorMessage);
}

function calculate() {
	if (checkNormalInput('#insuredSum', insuredSumErrorMessage)) {
		if (!hasLastEmail() || isNotEmpty($('#existEmail').val())) {
			$('#calculateForm').submit();
			return;
		}
		showLoading();
		$.ajax({
			type : 'POST',
			url : getRealPath('/activity{0}/survey/calculateCommit.html'),
			data : {
				gorderId : $('#gorderId').val(),
				insuredSum : $('#insuredSum').val(),
				payWay : $('#payWay').val()
			},
			dataType : 'json',
			success : function(data) {
				hideLoading();
				if (data.retCode == '200') {
					showEmailTip(function() {
						$('#calculateForm').submit();
					});
				} else {
					TipWindow.showSingle(data.retDesc);
				}
			}
		});
	}
}

function survey() {
	var answer1 = $("input[name='answer1']:checked").val();
	var answer2 = $("input[name='answer2']:checked").val();
	var answer3 = $("input[name='answer3']:checked").val();
	if (isEmpty(answer1) || isEmpty(answer2) || isEmpty(answer3)) {
		TipWindow.showSingle('请您回答调查中的问题');
		return;
	}
	TipWindow.hide('#surveyTip');
	$.ajax({
		type : 'POST',
		url : getRealPath('/activity{0}/survey/commit.html'),
		data : {
			gorderId : $('#gorderId').val(),
			surveyGorderId : $('#surveyGorderId').val(),
			question1 : $('#question1').text(),
			answer1 : answer1,
			question2 : $('#question2').text(),
			answer2 : answer2,
			question3 : $('#question3').text(),
			answer3 : answer3
		},
		dataType : 'json',
		success : function(data) {
			if (data.retCode == '200') {
				if (hasLastEmail()) {
					showEmailTip(function() {
						location.href = $('#surveyPromotionLinkConfig').val();
					});
				} else {
					var link = $('#surveyPromotionLinkConfig').val();
					if (isNotEmpty(link)) {
						location.href = link;
					} else {
						TipWindow.showSingle('提交成功');
					}
				}
			} else {
				errorCommit('#' + data.retField, data.retDesc);
				return false;
			}
		}
	});
}

function showEmailTip(handleSuccess) {
	TipWindow.showTip('#emailTip');
	$('#emailTipClose').click(function() {
		submitEmailTip(handleSuccess);
	});
	$('#emailTipButton').click(function() {
		submitEmailTip(handleSuccess);
	});
	$('.tip-overlay').click(function() {
		if (TipWindow.isShow('#emailTip')) {
			submitEmailTip(handleSuccess);
		}
	});
}

function submitEmailTip(handleSuccess) {
	$.ajax({
		type : 'POST',
		url : getRealPath('/activity/common/emailCommit.html'),
		data : {
			gorderId : $('#gorderId').val(),
			email : $('#email').val()
		},
		dataType : 'json',
		success : function(data) {
			hideLoading();
			if (data.retCode == '200') {
				handleSuccess();
			} else {
				TipWindow.showSingle(data.retDesc);
			}
		}
	});
}

function showProtocol() {
	var content = $('#protocolContent').html();
	TipWindow.showSingleWithContent('用户协议', '确定', content);
}

function showClause() {
	var content = $('#clauseContent').html();
	TipWindow.showSingleWithContent('信息安全条款', '确定', content);
}

function showInsurance() {
	var content = $('#insuranceContent').html();
	TipWindow.showSingleWithContent('保险条款', '确定', content);
}

function showActivityRule() {
	var content = $('#activityRulePopWindow').html();
	TipWindow.showSingleWithContent('活动规则', '确定', content);
}

function showLiability() {
	var content = $('#liabilityPopWindow').html();
	TipWindow.showSingleWithContent('保险责任描述', '确定', content);
}

function gotoPromotion(checkSurvey) {
	if (checkSurvey) {
		if (hasLastEmail() && isEmpty($('#existEmail').val())) {
			showEmailTip(function() {
				location.href = $('#surveyPromotionLinkConfig').val();
			});
			return;
		}
	}

	location.href = $('#surveyPromotionLinkConfig').val();
}

function clickedStatistics() {
	if(isNotEmpty(getThirdStatCodeConfig())) {
		if (getThirdStatCodeConfig().indexOf('duiba') != -1) {
			TuiaAdverter.init();
		} else if (getThirdStatCodeConfig().indexOf('bxm') != -1) {
			_bxmPlatformFn();
		}
	}
}

// function handleThirdStatistics(data) {
// 	if (data.retCode == '200' && isNotEmpty(getThirdStatCodeConfig())) {
// 		if(getThirdStatCodeConfig().indexOf('toutiao') != -1) {
// 			_taq.push({
// 				convert_id : getThirdStatCodeConfig(),
// 				event_type : "form"
// 			});
// 		}
// 	}
// }