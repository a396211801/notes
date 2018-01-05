/**
 	*小小金融phone通用javascript
	*liujq
**/
/**
 	* 移动端适配方案
 	* 计算比例为/100，如10px=.1rem;160px=1.6rem
 **/
(function(doc,win){var docEl=doc.documentElement,resizeEvt="orientationchange" in window?"orientationchange":"resize",recalc=function(){var clientWidth=docEl.clientWidth;if(!clientWidth){return}if(clientWidth>=640){docEl.style.fontSize="100px"}else{docEl.style.fontSize=100*(clientWidth/640)+"px"}};if(!doc.addEventListener){return}win.addEventListener(resizeEvt,recalc,false);doc.addEventListener("DOMContentLoaded",recalc,false)})(document,window);