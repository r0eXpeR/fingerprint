Plugin.define do
name "playSMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Free and Open Source SMS Gateway"
website "http://playsms.org/"
dorks [
'intitle:"SMS" "Username" "Password" "Register an account" "Forgot password"'
]
matches [
{ :certainty=>25, :regexp=>/<div id="wraplogin">[\s]+<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">/ },
{ :regexp=>/<!--td background="https?:\/\/[^>^"]+\/plugin\/themes\/km2\/images\/header-4\.png"-->/ },
{ :text=>"<a href='index.php?app=page&inc=register'>Register an account</a>" },
{ :text=>"<a href='index.php?app=page&inc=forgot'>Forgot password</a>" },
]
end
