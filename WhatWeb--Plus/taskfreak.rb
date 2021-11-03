Plugin.define do
name "TaskFreak"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "TaskFreak! Original is a simple but efficient web based task manager written in PHP."
website "http://www.taskfreak.com/original/"
matches [
{ :version=>/<br>Powered by <a href="http:\/\/www.taskfreak.com">TaskFreak <\/a> v([\d\.]+) - Released on [\d\-]+ under GNU General Public License/ },
{ :version=>/    <a href="http:\/\/www.taskfreak.com">TaskFreak! multi user<\/a> v([\d\.]+) - Released on [\d\-]+ under GNU General Public License/ },
]
end
