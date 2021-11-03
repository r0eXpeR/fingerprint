Plugin.define do
name "nopCommerce"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "nopCommerce is an open source e-commerce solution that contains both a catalog frontend and an administration tool backend. nopCommerce is a fully customizable shopping cart. It's stable and highly usable. "
website "http://www.nopcommerce.com/"
dorks [
'"powered by nopCommerce" "You have no items in your shopping cart."'
]
matches [
    {:certainty=>75, :ghdb=>'"powered by nopCommerce" "You have no items in your shopping cart."'},
    {:regexp=>/(?:<!--Powered by nopCommerce|Powered by: <a[^>]+nopcommerce)/},
    {:regexp=>/^nopCommerce$/, :search=>'body'},
    {:text=>'<!--Powered by nopCommerce - http://www.nopCommerce.com-->'},
    {:text=>'<input id="LoginForm_RememberMe" type="checkbox" name="LoginForm$RememberMe" checked="checked" /><label for="LoginForm_RememberMe">Remember me</label>'},
    {:text=>'<input type="submit" name="LoginForm$LoginButton" value="Log in" onclick="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;LoginForm$LoginButton&quot;, &quot;&quot;, true, &quot;LoginForm&quot;, &quot;&quot;, false, false))" id="LoginForm_LoginButton" class="adminButtonBlue" />'},
    {:text=>'Powered by <a href="http://www.nopcommerce.com" target="_blank">nopCommerce</a>'},
    {:text=>'Powered by <a href="http://www.nopcommerce.com/">nopCommerce</a>'},
    {:text=>'var LoginForm_UserNameOrEmailRequired = document.all ? document.all["LoginForm_UserNameOrEmailRequired"] : document.getElementById("LoginForm_UserNameOrEmailRequired");'}
]
end
