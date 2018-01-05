function isCnName(t){return/^[\u4e00-\u9fa5]{2,4}$/.test(t)}function isPhoneNumber(t){return/(13\d|14[57]|15[^4,\D]|17[678]|18\d)\d{8}|170[059]\d{7}/.test(t)}function isNull(t){if(void 0===t||""===t||null===t)return!0;var e=t+"";return""===(e=e.replace(/(^\s*)|(\s*$)/g,""))}function isMoney(t){return/^[1-9]\d*$/.test(t)}function isMoneyBetween(t,e,r){return!!(isMoney(t)&&t>=e&&t<=r)}function validateStr(t){var e=/^(([0-9]{1,})([a-z]{1,}))|(([a-z]{1,})([0-9]{1,}))$/,r=/^(([0-9]{1,})([A-Z]{1,}))|(([A-Z]{1,})([0-9]{1,}))$/;return t=valueTrim(t),!!e.test(t)||!!r.test(t)}function valiDateLength(t){return null!==t&&""!==t&&(t=valueTrim(t),!(parseFloat(t.length)<8)&&!(parseFloat(t.length)>20))}function valiDate(t){return null!==t.match(/((^((1[8-9]\d{2})|([2-9]\d{3}))(-)(10|12|0?[13578])(-)(3[01]|[12][0-9]|0?[1-9])$)|(^((1[8-9]\d{2})|([2-9]\d{3}))(-)(11|0?[469])(-)(30|[12][0-9]|0?[1-9])$)|(^((1[8-9]\d{2})|([2-9]\d{3}))(-)(0?2)(-)(2[0-8]|1[0-9]|0?[1-9])$)|(^([2468][048]00)(-)(0?2)(-)(29)$)|(^([3579][26]00)(-)(0?2)(-)(29)$)|(^([1][89][0][48])(-)(0?2)(-)(29)$)|(^([2-9][0-9][0][48])(-)(0?2)(-)(29)$)|(^([1][89][2468][048])(-)(0?2)(-)(29)$)|(^([2-9][0-9][2468][048])(-)(0?2)(-)(29)$)|(^([1][89][13579][26])(-)(0?2)(-)(29)$)|(^([2-9][0-9][13579][26])(-)(0?2)(-)(29)$))/)}function validateEmail(t){return/^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/.test(t)}function isNumber(t){var e=/^[0-9]{0,}$/,r=/^[1-9]{1}[0-9]{0,}$/;return null!==t&&0!==t.length&&(t=valueTrim(t),t.length<2?e.test(t):r.test(t))}function isMoney(t){if(""===t)return!1;t=valueTrim(t),t=t.replace(/(^\s*)|(\s*$)/g,"");var e=/^[0-9]*\.?[0-9]{0,2}$/;return!!isNumber(t)||!(t.length>3&&"0"==t.substr(0,1)&&t.substr(3,t.length).length>2)&&e.test(t)}function isZeroToOne(t){return""!==t&&(t=valueTrim(t),!!(isMyFloat(t)&&parseFloat(t)<100&&parseFloat(t)>0))}function isMyFloat(t){if(""===t)return!1;t=valueTrim(t);var e=/^(\d+)(\.\d+)$/;return!!isNumber(t)||!(t.length>3&&"0"===t.substr(0,1)&&"0."!==t.substr(0,2))&&e.test(t)}function isCharacter(t){return/^[\u4e00-\u9fa5]{0,}$/.test(t)}function valiDateTel(t){var e=/^(\(\d{3,4}\)|\d{3,4}-)?\d{7,8}$/;return t=valueTrim(t),!!e.test(t)}function IdCardValidate(t){if(t=valueTrim(t.replace(/ /g,"")),15===t.length)return isValidityBrithBy15IdCard(t);if(18===t.length){var e=t.split("");return!(!isValidityBrithBy18IdCard(t)||!isTrueValidateCodeBy18IdCard(e))}return!1}function isTrueValidateCodeBy18IdCard(t){var e=0;"x"===t[17].toLowerCase()&&(t[17]=10);for(var r=0;r<17;r++)e+=Wi[r]*t[r];return valCodePosition=e%11,t[17]===ValideCode[valCodePosition]}function isValidityBrithBy18IdCard(t){var e=t.substring(6,10),r=t.substring(10,12),n=t.substring(12,14),a=new Date(e,parseFloat(r)-1,parseFloat(n));return a.getFullYear()===parseFloat(e)&&a.getMonth()===parseFloat(r)-1&&a.getDate()===parseFloat(n)}function isValidityBrithBy15IdCard(t){var e=t.substring(6,8),r=t.substring(8,10),n=t.substring(10,12),a=new Date(e,parseFloat(r)-1,parseFloat(n));return a.getYear()===parseFloat(e)&&a.getMonth()===parseFloat(r)-1&&a.getDate()===parseFloat(n)}function valueTrim(t){return t.replace(/(^\s*)|(\s*$)/g,"")}function idCardVildate(t){var e=[7,9,10,5,8,4,2,1,6,3,7,9,10,5,8,4,2],r=[1,0,"X",9,8,7,6,5,4,3,2];if(/^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}([0-9]|X)$/.test(t)){for(var n,a=0,i=0;i<t.length-1;i++)a+=parseInt(t.substr(i,1),10)*e[i];return n=a%11,r[n]===t.substr(17,1).toUpperCase()}return!1}function getDateStr(t,e){var r=24*e*60*60*1e3,n=new Date;n=""==t?new Date:new Date(t);var a=n.getTime()+r,i=new Date(a),u=i.getFullYear(),s=i.getMonth()+1,l=i.getDate();return s<10&&(s="0"+s),l<10&&(l="0"+l),u+"-"+s+"-"+l}function getMonthStr(t,e){var r=new Date;r=""===t?new Date:new Date(t);var n=r.getFullYear(),a=r.getMonth()+1;return a+=e,0===a?(a="12",n-=1):a<10?a="0"+a:a>12&&(a-=12,a="0"+a,n+=1),n+"-"+a}function dealNull(t){return void 0===t?"":t}var Wi=[7,9,10,5,8,4,2,1,6,3,7,9,10,5,8,4,2,1],ValideCode=[1,0,10,9,8,7,6,5,4,3,2];
function getQueryString(n){var e=new RegExp("(^|&)"+n+"=([^&]*)(&|$)","i"),r=window.location.search.substr(1).match(e);return null!==r?unescape(r[2]):null}function getQueryStringOrSetDefault(n,e){var r=getQueryString(n);return void 0!==r&&""!==r&&null!==r||(r=e),r}