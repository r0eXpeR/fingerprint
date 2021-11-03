Plugin.define do
name "DVWA"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Damn Vulnerable Web App (DVWA) is a PHP/MySQL web application that is damn vulnerable."
website "http://www.dvwa.co.uk/"
dorks [
'intitle:"Damn Vulnerable Web App (DVWA) - Login"'
]
matches [
    {:regexp=>/		<link rel="stylesheet" type="text\/css" href="[^"]*dvwa\/css\/login.css" \/>/},
    {:text=>'			<p><label for="pass">Password</label><input type="password" AUTOCOMPLETE="off" size="20" name="password"></p><br />'},
    {:text=>'		<title>Damn Vulnerable Web App (DVWA) - Login</title>'},
    {:text=>'Damn Vulnerable Web App (DVWA) - Login'},
    {:text=>'dvwa/css/login.css'},
    {:text=>'dvwa/images/login_logo.png'}
]
end
