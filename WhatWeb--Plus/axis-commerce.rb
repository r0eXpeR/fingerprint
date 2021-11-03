Plugin.define do
name "Axis-Commerce"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Axis Commerce - open source eCommerce software - Requires: PHP and MySQL"
website "http://axiscommerce.com/"
matches [
    {:search=>"headers", :text=>'axisid'},
    {:search=>"headers[set-cookie]", :regexp=>/axisid=[a-z\d]{20,32};/},
    {:text=>"<p class=\"bug-report\">Report any <a href='http://github.com/axis/axiscommerce/issues' onclick='window.open(this.href); return false;' title='Report'>Bugs or Issues</a> you've found</p>"},
    {:text=>'<div class="head"><h2>Forgot password</h2><p class="powered">Powered by Axis</p></div>'},
    {:text=>'<title>Login to Axis administrator panel</title>'},
    {:text=>'Login to Axis administrator'},
    {:text=>'Powered by Axis'},
    {:version=>/<div class="head"><h2>Login<\/h2><p class="powered">Powered by Axis v. ([\d\.]+)<\/p><\/div>/}
]
end
