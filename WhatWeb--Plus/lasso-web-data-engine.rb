Plugin.define do
name "Lasso-Web-Data-Engine"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Lasso Web Data Engine is a cross-platform Web Application Server"
website "http://www.blueworld.com/blueworld/products/"
dorks [
'ext:lasso'
]
matches [
{ :certainty=>25, :ghdb=>"filetype:lasso" },
{ :search=>"headers[server]", :version=>/Lasso\/([^\s]+)/ },
]
end
