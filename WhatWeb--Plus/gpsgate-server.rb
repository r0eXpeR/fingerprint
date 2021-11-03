Plugin.define do
name "GpsGate-Server"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "GpsGate Server is a platform for web based GPS tracking of vehicles, valuable assets and persons. The modular GpsGate Server platform also allows you to configure, extend and customize applications to your needs."
website "http://gpsgate.com/products/gpsgate_server"
dorks [
'"GpsGate Server - Login" intitle:"GpsGate Server - Login"'
]
matches [
    {:regexp=>/<head><title>\r?\n\tGpsGate Server - Login\r?\n<\/title><\/head>/},
    {:text=>'<input name="LoginControl$TextBoxPassword" type="password" id="LoginControl_TextBoxPassword" tabindex="2" class="form" onfocus="document.getElementById(\'LoginControl_TextBoxPassword\').select()" value="password"'},
    {:text=>'GpsGate Server -'}
]
end
