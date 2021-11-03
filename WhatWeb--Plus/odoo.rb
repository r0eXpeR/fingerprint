Plugin.define do 
name "Odoo" 
  authors [
  	"Naglis Jonaitis",

    "Andrew Horton", 

  ]
  version '0.2'
  description 'Odoo is an all-in-one management software that offers a range of business applications that form a complete suite of enterprise management applications targeting companies of all sizes.'
  website 'https://www.odoo.com/'
matches [
    {:name=>'favicon', :url=>'/web/static/src/img/favicon.ico', :md5=>'a342fe863a8e41dff2a55410c7f118c5'},
    {:name=>'generator', :text=>'<meta name="generator" content="Odoo"/>'},
    {:regexp=>/<link[^>]* href=[^>]+.web.css.(?:web\.assets_common.|website\.assets_frontend.)/, :certainty=>25},
    {:search=>'body', :regexp=>/.web.js.(?:web\.assets_common.|website\.assets_frontend.)/, :certainty=>25},
    {:search=>'body', :regexp=>/Odoo/}
]
end
