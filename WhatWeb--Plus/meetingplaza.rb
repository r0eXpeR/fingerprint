Plugin.define do
name "MeetingPlaza"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "MeetingPlaza Distance Conference Service for internet conferencing, meeting, presentations, seminars, collaboration, events, and training."
website "http://www.meetingplaza.com/e/"
dorks [
'"Hello. I\'m MeetingPlaza HTTP Tunneling Server." "Date"'
]
matches [
{ :certainty=>25, :text=>'<html> <body> Hello. I\'m MeetingPlaza HTTP Tunneling Server.<br>Date: ' },
{ :version=>/^InterSpace HTTP Tunneling\/([^\s]+)$/, :search=>"headers[server]" },
{ :regexp=>/^InterSpace HTTP Tunneling/, :search=>"headers[server]" },
]
end
