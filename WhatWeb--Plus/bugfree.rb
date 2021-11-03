Plugin.define do
name "BugFree"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "BugFree [Chinese]"
website "http://www.bugfree.org.cn/"
dorks [
'inurl:"Login.php" intitle:"BugFree"'
]
matches [
    {:text=>'<img src="Image/login_bg_left.gif" class="loginBgImage"/>'},
    {:text=>'<select name=\'Language\' id=\'Language\' class="NormalSelect MyInput select" onchange="xajax_xSelectLanguage(this.value);return false;" >'},
    {:text=>'<td><input type="password" name="BugUserPWD" class="MyInput"></td>'},
    {:text=>'BugFree'},
    {:text=>'class="loginBgImage" alt="BugFree'},
    {:text=>'id="logo" alt=BugFree'},
    {:text=>'name="BugUserPWD'},
    {:version=>/<div id="LoginMain">[\s]+<div id="LoginLogo">[\s]+<span id="Version">([^\s^<]+)<\/span>[\s]+<\/div>[\s]+<div id="LoginFormContainer">/},
    {:version=>/<div id="loginLogo">[\s]+<img src="Image\/login_logo\.png" id="logo" alt=BugFree \/><br \/>[\s]+<center style="color:#666666;font-size:10px;padding-left:4px;">([^\s^<]+)<\/center>[\s]+<\/div>/},
    {:version=>/<span id="Version"><img src="Image\/logo\.png" height=40 title=BugFree \/>([^\s^<]+)<\/span>/}
]
end
