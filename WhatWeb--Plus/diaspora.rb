Plugin.define do
name "Diaspora"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Diaspora - social networking service"
website "https://joindiaspora.com/"
dorks [
'intitle:"Sign In" "Sign up" "Forgot your password?" inurl:"users/sign_in"'
]
matches [
    {:search=>"headers", :text=>'_diaspora_session'},
    {:search=>"headers", :text=>'x-git-revision'},
    {:search=>"headers", :text=>'x-git-update'},
    {:search=>"headers[set-cookie]", :regexp=>/_diaspora_session=/},
    {:search=>"headers[x-git-revision]", :regexp=>/^[a-f\d]{32}$/},
    {:search=>"headers[x-git-update]", :string=>/^([\d]{4}-[\d]{2}-[\d]{2} [\d]{2}:[\d]{2}:[\d]{2} .+)$/},
    {:text=>'<input name="user[remember_me]" type="hidden" value="0" /><input id="user_remember_me" name="user[remember_me]" type="checkbox" value="1" />'}
]
end
