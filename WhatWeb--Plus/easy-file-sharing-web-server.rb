Plugin.define do
name "Easy-File-Sharing-Web-Server"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Easy File Sharing Web Server is a file sharing software that allows visitors to upload/download files easily through a Web Browser"
website "http://www.sharing-file.com/"
matches [
    {:search=>"headers", :text=>'Easy File Sharing Web Server'},
    {:version=>/^Easy File Sharing Web Server v(.+)$/, :search=>"headers[server]"}
]
end
