Plugin.define do
name "Google-API"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "This plugin identifies references to Google API in <script>."
matches [
{ :regexp=>/<script[^>]+src[\s]*=[\s]*["|']?http:\/\/www.google.com\/jsapi[^>]*>[\s]*<\/script[\s]*>/i, :string=>"Dynamic" },
{ :string=>/<script[^>]+src[\s]*=[\s]*["|']?http:\/\/ajax.googleapis.com\/([a-zA-Z0-9\/\.-_]+)["|']?[^>]*>[\s]*<\/script[\s]*>/i },
]
end
