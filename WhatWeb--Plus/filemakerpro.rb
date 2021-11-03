Plugin.define do
name "FileMakerPro"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "FileMaker Pro web publishing - FileMaker Pro is powerful, easy-to-use database software that helps you and your team get any task done faster. Millions of people in business, government, and education use FileMaker Pro to effortlessly manage all their information on Windows, Mac, and the web."
website "http://www.filemaker.com.au/products/filemaker-pro/"
matches [
    {:module=>/^FileMakerPro\/[^\s]+ (WebCompanion\/.+)$/, :search=>"headers[server]"},
    {:regexp=>/^FileMakerPro/, :search=>"headers[server]"},
    {:search=>"headers", :text=>'FileMakerPro'},
    {:version=>/^FileMakerPro\/([^\s]+)/, :search=>"headers[server]"}
]
end
