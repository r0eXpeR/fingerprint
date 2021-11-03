Plugin.define do
name "Meta-Author"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "This plugin retrieves the author name from the meta name tag - info: http://www.webmarketingnow.com/tips/meta-tags-uncovered.html#author"
matches [
{ :string=>/<meta[^>^=]+name[\s]*=[\s]*['"]?author['"]?[^>^=]+content[\s]*=[\s]*['"]([^'^"^>]+)/i },
{ :string=>/<meta[^>^=]+content[\s]*=[\s]*['"]([^"^'^>]+)['"][^>^=]+name[\s]*=[\s]*['"]?author['"]?/i },
]
end
