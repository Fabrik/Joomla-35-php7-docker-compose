/*! Fabrik */
var FbYesno=new Class({Extends:FbRadio,initialize:function(a,b){this.setPlugin("fabrikyesno"),this.parent(a,b)},eventDelegate:function(){var a="input[type="+this.type+"][name^="+this.options.fullName+"]";return a+=", [class*=fb_el_"+this.options.fullName+"] .fabrikElement label"},checkEventAction:function(a){return"change"===a&&(a="click"),a},getChangeEvent:function(){return this.options.changeEvent}});