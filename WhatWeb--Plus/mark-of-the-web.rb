Plugin.define do
name "Mark-of-the-Web"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "The MOTW is a comment added to the HTML markup for a Web page. When a user opens the Web page from their local machine, Internet Explorer references this comment to determine the security zone in which it should run the page."
website "http://msdn.microsoft.com/en-us/library/ms537628%28v=vs.85%29.aspx"
matches [
{ :string=>/<!-- saved from url=\([\d]+\)([^>]+) -->[\r\n]/ },
]
end
