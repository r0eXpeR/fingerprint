Plugin.define do
name "DeluxeBB"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "DeluxeBB is a powerful open source bulletin board, which helps you create your own web communities in less than 10 minutes. The board is written completely in PHP and uses a MySQL database to store its content."
website "http://www.deluxebb.com/"
dorks [
'"DeluxeBB 1.3 is copyrighted to the DeluxeBB team \'05-08"'
]
matches [
    {:regexp=>/<!-- \|-\|-\|-\|-\|-\|-\|-\|-\|-\|-\|-\|-\|-\|-\|-\|-\|-\|-\|-\|[\r\n\s]+\| This forum is coded by and          \|[\r\n\s]+\| copyrighted to Frank Nissel         \|/},
    {:text=>'<meta name="description" content="powered by DeluxeBB - www.deluxebb.com" />'},
    {:text=>'content="powered by DeluxeBB'},
    {:version=>/<p><a href="http:\/\/www.deluxebb.com" target="_blank">DeluxeBB ([\d\.]+)<\/a> is copyrighted to the DeluxeBB team '05/}
]
end
