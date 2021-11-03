Plugin.define do
name "PHPGradeBook"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "PHP_GradeBook is a program for teachers to input students points for assignments and keep a running online tally for the students to view online."
website "http://sourceforge.net/projects/php-gradebook/"
dorks [
'inurl:"admin" intitle:"phpGradeBook"'
]
matches [
{ :certainty=>75, :text=>'<title>phpGradeBook</title> ' },
{ :version=>/<a href='http:\/\/phpGradeBook\.com'>PHP_GradeBook<\/a> ([^C^\n]+) Created by Robert/ },
{ :version=>/<small>PHP_GradeBook ([^C^\n]+) Created by Robert/ },
{ :md5=>"9761e989848ed31a7d7a5a5411197281" },
]
end
