Plugin.define do
name "Biscom-Delivery-Server"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Biscom Delivery Server - Secure File Transfer (SFT) software"
website "http://www.biscomdeliveryserver.com/"
dorks [
'inurl:"bds/Login.do"'
]
matches [
    {:text=>'/bds/includes/fdsJavascript.do'},
    {:text=>'/bds/stylesheets/fds.css'},
    {:text=>'<link rel="ICON" href="/bds/images/icons/favicon.ico" />'},
    {:text=>'<link rel="StyleSheet" href="/bds/stylesheets/fds.css" type="text/css">'},
    {:text=>'<script src="/bds/includes/fdsJavascript.do" type="text/javascript"></script>'},
    {:url=>"/bds/images/icons/favicon.ico", :md5=>"eb05f77bf80d66f0db6b1f682ff08bee"}
]
end
