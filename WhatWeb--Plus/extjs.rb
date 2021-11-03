Plugin.define do
name "ExtJS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Ext JS is a cross-browser JavaScript library for building rich internet applications."
website "http://www.sencha.com/products/extjs/"
matches [
    {:regexp=>/<script [^>]*src=["'][^>]*ext\-base\.js["']/i },
    {:regexp=>/ext-base\.js/, :search=>'body'},
    {:text=>'ext-base.js'}
]
end
