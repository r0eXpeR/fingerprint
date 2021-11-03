Plugin.define do
name "Trbas"
authors [
  "Sigit Dewanto",

]
version "0.1"
description "Trbas is a news website engine for sites of Tribune Newspaper, used by mcall.com, chicagotribune.com and latimes.com"
matches [
{ :text=> '<link rel="stylesheet" href="http://www.trbas.com' }
]
end
