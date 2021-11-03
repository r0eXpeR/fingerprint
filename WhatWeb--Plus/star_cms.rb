Plugin.define do
    name "star_cms" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => '<img alt="STAR CMS'   },
    { :text => 'content="STARCMS'   }
]
end