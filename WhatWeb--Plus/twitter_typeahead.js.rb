Plugin.define do
    name "twitter_typeahead.js" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /(?:typeahead|bloodhound)\.(?:jquery|bundle)?(?:\.min)?\.js/, :search => 'body'  }
]
end