Plugin.define do
name "CrazyEgg"
authors [
  "Peter van der Laan",

]
version "0.1"
description "Visualizes where your visitors click"
website "http://www.crazyegg.com/"
matches [
{ :text=>"cetrk.com" },
{ :account=>/dnn506yrbagrg\.cloudfront\.net\/pages\/scripts\/(\d+\/\d+)/}
]
end
