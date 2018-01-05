/*******
	*****20160918 by liujq****
	****btnClick****
 ********/
(function($,win,doc){
	function Xxjrbtn(type,opts,el){
		this.opts = $.extend({},Xxjrbtn.DEFAULTS,opts);
		this.$el = el;
		var that = this;
		this.defaultText="";
		this.defaultHref="";
		
		if(type == "loading"){
			this.btnLoading();			
		}else if(type == "reset"){
			this.btnReset();
		}else{
			console.error("未选择类型");
		}
	}
	Xxjrbtn.DEFAULTS = {
		btnActiveText : "加载中",
		btnDisabledClass : "btn-disabled",
	}
	Xxjrbtn.prototype.btnLoading = function(){
		if(this.$el.localName == "input"){
			$(this.$el).attr("defaultText",$(this.$el).val());
		}else{
			$(this.$el).attr("defaultText",$(this.$el).text());
		}	
		if(this.$el.localName == "a"){
			$(this.$el).attr("defaultHref",$(this.$el).attr("href")).attr("href","javascript:;");
			$("body").append("<div id='l-layer' class='cur'></div>");
		}
		if(this.$el.localName == "input" || this.$el.localName == "button"){
			$(this.$el).attr("disabled","disabled")
		}
		
		if(this.$el.localName == "input"){
			$(this.$el).val(this.opts.btnActiveText);
		}else{
			$(this.$el).text(this.opts.btnActiveText)
		}
		
		$(this.$el).addClass(this.opts.btnDisabledClass);
	}
	Xxjrbtn.prototype.btnReset = function(){
		if(this.$el.localName == "input" || this.$el.localName == "button"){
			$(this.$el).removeAttr("disabled");
		}else if(this.$el.localName == "a"){
			$("#l-layer").removeClass("cur").remove();
			$(this.$el).attr("href",$(this.$el).attr("defaultHref"));
		}
		if(this.$el.localName == "input"){
			$(this.$el).val($(this.$el).attr("defaultText"));
		}else{
			$(this.$el).text($(this.$el).attr("defaultText"))
		}
		$(this.$el).removeClass(this.opts.btnDisabledClass);
	}
	$.fn.xxjrbtn = function(type,opts){
		return this.each(function(){
			new Xxjrbtn(type,opts,this);
		});
	}
})(jQuery,window,document);
