Plugin.define do
name "Telerik UI"
authors [
  "Chad Brigance @ChadBrigance" 
]
version "0.1"
description "Telerik is a framework for creating user interfaces"
website "http://www.telerik.com"
matches [
{ :text=>'type="text/css" rel="stylesheet" class="Telerik_stylesheet" />' },
{ :regexp=>/\$create\(Telerik\.Web\.UI\.Rad[a-zA-Z]+,/ },
{ :regexp=>/(src|href)="\/(Telerik.Web.UI.)?WebResource.axd\?/ },
{ :url=>'/Telerik.Web.UI.WebResource.axd?type=rau', :text=>'{ "message" : "RadAsyncUpload handler is registered succesfully, however, it may not be accessed directly." }', },
]
end
