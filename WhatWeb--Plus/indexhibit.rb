Plugin.define do
    name "indexhibit" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<(?:link|a href) [^>]+ndxz-studio/  },
    { :regexp => /Indexhibit/, :search => 'body'  }
]
end