Plugin.define do
    name "frogcms" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'href="http://www.madebyfrog.com">Frog CMS'   },
    { :text => 'target="_blank">Frog CMS'   }
]
end