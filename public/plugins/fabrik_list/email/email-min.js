/*! Fabrik */
var FbListEmail=new Class({Extends:FbListPlugin,initialize:function(a){this.parent(a)},buttonAction:function(){var a="index.php?option=com_fabrik&controller=list.email&task=popupwin&tmpl=component&ajax=1&id="+this.listid+"&renderOrder="+this.options.renderOrder;this.listform.getElements("input[name^=ids]").each(function(b){b.get("value")!==!1&&b.checked!==!1&&(a+="&ids[]="+b.get("value"))}),a+=this.listform.getElement("input[name=checkAll]").checked?"&checkAll=1":"&checkAll=0";var b="email-list-plugin";this.windowopts={id:b,title:"Email",loadMethod:"iframe",contentURL:a,width:520,height:470,evalScripts:!0,minimizable:!1,collapsible:!0},Fabrik.getWindow(this.windowopts)}});