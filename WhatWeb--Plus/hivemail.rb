Plugin.define do
name "HiveMail"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "HiveMail - PHP Webmail Portal Script - Hompage: http://www.hivemail.com/"
dorks [
'"You are not logged in" "Forgot your password" "Choose a skin"'
]
matches [
    {:search=>"headers", :text=>'hivesession'},
    {:search=>"headers[set-cookie]", :regexp=>/hivesession=/},
    {:text=>'<input type="text" class="validate[ajax[ajaxUserCall]] input" name="answer" id="answer" />'},
    {:text=>'<title>Database Error in HiveMail&trade;</title>'},
    {:text=>'content="Hivemail'},
    {:version=>/<meta name="product" content="Hivemail v([^"]+)">/},
    {:version=>/\/\/ myaccounts holds the userpics\s+myaccounts = '[^']*';\s+recaptcha_global = "[^"]+";\s+hiveversion = "v([^"]+)";/}
]
end
