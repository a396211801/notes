Array.prototype.containsRwl = function (obj) {  
    var i = this.length;  
    while (i--) {  
        if (this[i] === obj) {  
            return true;  
        }  
    }  
    return false;  
}

;(function($) {
	/**
	 * eleprovince : '',
	 * elecity : '',
	 * defprovince: '',
	 * provinceSelect : function(_value) {},
	 * citySelect : function(_value) {}
	 * 
	 * 
	 */

	$.extend($.fn, {
		rwlProvinceCity : function(_config) {

			var selprovince;
			var selcity;
			var seldist;

			_config.eleprovince = "rwlprovince_" + new Date().getTime();
			_config.elecity = "rwlcity_" + new Date().getTime();
			_config.eledist = "rwldist_" + new Date().getTime();

			//
			var selectarea = "<select class=\"span2\" id=\""+_config.eleprovince+"\" name=\"province\">";
			selectarea += "<option value=''>选省份</option>";
			selectarea += "</select>";

			selectarea += "<select class=\"span2\" id=\""+_config.elecity+"\" name=\"city\">";
			selectarea += "<option value=''>选城市</option>";
			selectarea += "</select>";

			selectarea += "<select class=\"span2\" id=\""+_config.eledist+"\" name=\"dist\">";
			selectarea += "<option value=''>选地区</option>";
			selectarea += "</select>";

			//$("#"+_config.target).html(selectarea);
			this.append(selectarea);

			var provincesOptionHtml = "";
		    var provinces = [];
		    if(_config.defprovince) {
		    	provincesOptionHtml += "<option value=" + _config.defprovince + " selected>" + _config.defprovince + "</option>"; 
		    } else {
		    	var size = provinceCityArea.length;
		    	for(var i = 0; i<size; i++) {
					//城市过滤处理
					if(_config.filterprovince && _config.filterprovince.length > 0) {
						if(_config.filterprovince.indexOf(provinceCityArea[i].name) < 0) {
							continue;
						}
					}
			        provinces.push(provinceCityArea[i].name);  
			        //var theval = el;
			        var theval = provinceCityArea[i].name;
			        provincesOptionHtml += "<option value=" + theval + ">" + theval + "</option>";
			    }  
		    }
		    
		    $("#"+_config.eleprovince).append(provincesOptionHtml);  
		    
		    if(_config.defprovince) {
		    	var selectedProvince = _config.defprovince;
		        if(selectedProvince != -1) {  
		            var citiesOptionHtml = "";  
		            var cities = [];  
		            //cities = provinceAndCityArray[selectedProvince].cities;  
		            cities = rwlAreaGetCitis(selectedProvince);
		            var size = cities.length;
			    	for(var i = 0; i<size; i++) {
		            	//城市过滤处理
	            		if(_config.filtercity && _config.filtercity.length > 0) {
	            			if(!_config.filtercity.containsRwl(cities[i].name)) {
	            				continue;
	            			}
	            		}
		                citiesOptionHtml += "<option value=" + cities[i].name + ">" + cities[i].name + "</option>";  
		            }  
		            // 清空之前的城市列表  
		            $("#"+_config.elecity+" option").remove();
		            $("#"+_config.elecity).append(citiesOptionHtml);  
		            //$("#"+_config.elecity).selectmenu("refresh");  
		            
		        } 
		    }
		    
		    // 填充城市下拉列表  
		    $("#"+_config.eleprovince).bind("change", function() { 
		        var selectedProvince = $("#"+_config.eleprovince+" option:checked").val();
		        var selectedProvinceHtml = $("#"+_config.eleprovince+" option:checked").html();
		        if(selectedProvince != -1) {  
		            var citiesOptionHtml = "<option>选城市</option>";
		            var distsOptionHtml = "<option>选地区</option>";
		            // 清空之前的城市列表  
				            $("#"+_config.eledist+" option").remove();
				            $("#"+_config.eledist).append(distsOptionHtml); 
		            selcity = undefined;
		            seldist = undefined;
		            //cities = provinceAndCityArray[selectedProvince].cities;
		            var cities = rwlAreaGetCitis(selectedProvince);
		            if(cities) {
		            	var size = cities.length;
				    	for(var i = 0; i<size; i++) {
		            		
		            		//城市过滤处理
		            		if(_config.filtercity && _config.filtercity.length > 0) {
		            			if(!_config.filtercity.containsRwl(cities[i].name)) {
		            				continue;
		            			}
		            		}
		            		
			                citiesOptionHtml += "<option value=" + cities[i].name + ">" + cities[i].name + "</option>";  
			            }  
			            // 清空之前的城市列表  
			            $("#"+_config.elecity+" option").remove();
			            $("#"+_config.elecity).append(citiesOptionHtml);  
//			            $("#"+_config.elecity).selectmenu("refresh");  
		            }

					selprovince = {
						id: selectedProvince,
						name: selectedProvinceHtml
					};

		            if(_config.provinceSelect) {
		            	_config.provinceSelect(selprovince);
		            }
		            
		        }  
		    });
		    
		    //城市选择处理
		    $("#"+_config.elecity).bind("change", function() {
		    	var selectedProvince = $("#"+_config.eleprovince+" option:checked").val();
		        var selectedCity = $("#"+_config.elecity+" option:checked").val();
		        var selectedCityHtml = $("#"+_config.elecity+" option:checked").html();
		        seldist = undefined;
		        if(selectedCity != -1) {  
		        	
		        	if(_config.eledist) {
		        		var distsOptionHtml = "<option>选地区</option>";
			            var dists = rwlAreaGetAreas(selectedProvince, selectedCity);
			            if(dists) {
			            	var size = dists.length;
					    	for(var i = 0; i<size; i++) { 
			            		//县区过滤处理
			            		if(_config.filterarea && _config.filterarea.length > 0) {
			            			if(!_config.filterarea.containsRwl(dists[i])) {
			            				continue;
			            			}
			            		}
				            	distsOptionHtml += "<option value=" + dists[i] + ">" + dists[i] + "</option>";  
				            }  
				            // 清空之前的城市列表  
				            $("#"+_config.eledist+" option").remove();
				            $("#"+_config.eledist).append(distsOptionHtml); 
			            }
			            
		        	}
		        	
		        	
		        	selcity = {
		            	id: selectedCity,
		            	name: selectedCityHtml
		            };
		            if(_config.citySelect) {
		            	_config.citySelect(selcity);
		            }
		            
		        }  
		    });
		    
		    //地区选择
		    if(_config.eledist) {
		    	$("#" + _config.eledist).bind("change", function() {
			    	var selectedDist = $("#"+_config.eledist+" option:checked").val();
			        var selectedDistHtml = $("#"+_config.eledist+" option:checked").html();
			        if(selectedDist != -1) {  
			        	seldist = {
			            	id: selectedDist,
			            	name: selectedDistHtml
			            };
			            if(_config.cityDist) {
			            	_config.cityDist(seldist);
			            }
			            
			        }
			    });
		    }

			return {
				getselprovince : function() {
					return selprovince;
				},
				getselcity : function() {
					return selcity;
				},
				getseldist : function() {
					return seldist;
				}
			}

		},
		
		rwlInitDist : function(_config) {
			var selectedProvince = $("#"+_config.eleprovince+" option:checked").val();
			var selectedCity = $("#"+_config.elecity+" option:checked").val();
			var distsOptionHtml = "";  
            var dists = []; 
            dists = rwlAreaGetAreas(selectedProvince, selectedCity);
            for(var dist in dists) {  
            	distsOptionHtml += "<option value=" + dists[dist] + ">" + dists[dist] + "</option>";  
            }  
            // 清空之前的城市列表  
            $("#"+_config.eledist+" option").remove();
            $("#"+_config.eledist).append(distsOptionHtml); 
		}
	});
	
})(Zepto);