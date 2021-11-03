Plugin.define do
name "Huawei-Firewall"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Huawei Firewall"
website "http://www.huawei.com/en/products/data-communication/network-security/firewall/index.htm"
dorks [
'intitle:"Web Admin login" "Password" "Huawei Technologies Co., Ltd."'
]
matches [
    {:search=>"headers", :text=>'Eudemon Server'},
    {:search=>"headers[server]", :version=>/^Eudemon Server ([^\s]+)$/, :model=>"Eudemon"},
    {:string=>/<div align="center">Copyright \(c\) 2005-(20[\d]{2}) Huawei Technologies Co\., Ltd\.<\/div><\/td>/},
    {:string=>/<div align="center">Copyright \(c\) Huawei Technologies Co\., Ltd\. 2005-(20[\d]{2})\. All rights reserved\. <\/div>/},
    {:text=>'<!--Modify by wangxiangguang 2006-9-29 for BYDD15857 Begin -->'},
    {:text=>'<!--Modify by wangxiangguang 2006-9-29 for BYDD15857 End -->'},
    {:text=>'<input type="text" onpaste="checkPaste(this,\'012\')" name="username" id="username" maxlength='},
    {:text=>'Modify by wangxiangguang'}
]
end
