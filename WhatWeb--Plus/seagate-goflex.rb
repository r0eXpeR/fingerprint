Plugin.define do
name "Seagate-GoFlex"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Seagate-GoFlex - centralized file storage with remote access via seagateshare.com"
website "http://www.seagate.com/home-entertainment/media-sharing-devices/goflex-home/"
matches [
{ :search=>"headers[location]", :string=>/^https:\/\/www\.seagateshare\.com\/\?hipname=([^\s^&]+)/ },
{ :string=>/<input id="inSubdomain" name="inSubdomain" type="text" maxlength="30" size="23" value="([^\s^"^>]*)"><br><br>/ },
]
end
