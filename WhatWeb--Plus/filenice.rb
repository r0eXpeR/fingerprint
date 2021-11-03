Plugin.define do
name "FileNice"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "fileNice is a free php file browser, particularly useful if you have a 'dump' folder on your server where you regularly upload files and you want to be able to see what.s there."
website "http://filenice.com/"
dorks [
'"Files in" "Free open source file browser available from fileNice.com"'
]
matches [
    {:text=>"<!-- please leave the word fileNice and the link to fileNice.com in the about, it's only polite really isn't it. I didn't do all this work just for you to try to pass it off as your own. -->"},
    {:text=>"<!-- please leave the word fileNice visible on the page, it's only polite really isn't it. -->"},
    {:text=>'	<meta name="generator" content="the fantabulous mechanical eviltwin code machine" />'},
    {:text=>'Free open source file browser available from <a href="http://fileNice.com" title="fileNice.com">fileNice.com</a><br />'},
    {:text=>'content="the fantabulous mechanical eviltwin code machine'},
    {:text=>'fileNice/fileNice.js'}
]
end
