Plugin.define do
name "Escenic"
authors [
  "Erik Inge Bolsø <knan+whatweb@redpill-linpro.com>",

  "nikosk <nk@dsigned.gr>",

  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.3"
description "Escenic is a commercial CMS popular in the Nordic region."
website "http://escenic.com/"
dorks [
'filetype:ece'
]
matches [
    {:certainty=>25, :regexp=>/<a[^>]+href="[^"^>]+\/article[\d]{5,10}\.ece">[^<]*<\/a>/},
    {:certainty=>25, :regexp=>/<form action="\/sok\/" id="[^"]+" method="get" accept-charset="utf-8"[^>]*>/},
    {:certainty=>25, :regexp=>/<img[^>]+src="[^"^>]+\/archive\/\d{5}\/[^"^>]+"[^>]*>/},
    {:certainty=>75, :ghdb=>"filetype:ece inurl:article"},
    {:certainty=>75, :text=>'<meta name="author" content="Escenic AS"/>'},
    {:text=>'<!-- Start Escenic Analysis Engine client script -->'},
    {:text=>'content="Escenic'}
]
end
