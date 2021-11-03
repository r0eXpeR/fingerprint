Plugin.define do
name "PrestaShop"
authors [
  "Chris@NetAgence.com", 

  "Bhavin Senjaliya <bhavin.senjaliya@gmail.com>", 

]
version "0.2"
description "Ecommerce CMS Prestashop."
website "http://www.prestashop.com/"
dorks [
'inurl:id_cms'
]
matches [
    {:name=>"PrestaShop-powered meta generator",
  :regexp=>/<meta name="generator"[^>]*content="PrestaShop/},
    {:name=>"html comment",
  :regexp=>/<!-- \/Block permanent links module HEADER -->/},
    {:regexp=>/<!-- .Block [a-z ]+ module (?:HEADER|TOP)?\s?-->/},
    {:regexp=>/<!-- .Module Block [a-z ]+ -->/},
    {:regexp=>/Powered by <a\s+[^>]+>PrestaShop/},
    {:search=>"headers", :text=>'PrestaShop'},
    {:search=>"headers[set-cookie]", :regexp=>/PrestaShop/, :name=>"PrestaShop cookie"},
    {:search=>'body', :regexp=>/PrestaShop/},
    {:search=>'headers[powered-by]', :regexp=>/^Prestashop$/},
    {:string=>"EN",
  :name=>"PrestaShop-Powered meta description",
  :regexp=>/<meta name="description"[^>]*content="Shop powered by PrestaShop/},
    {:string=>"FR",
  :name=>"PrestaShop-Powered meta description",
  :regexp=>/<meta name="description"[^>]*content="par PrestaShop/},
    {:text=>'Shop powered by PrestaShop'}
]
end
