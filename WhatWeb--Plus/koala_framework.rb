Plugin.define do
    name "koala_framework" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<!--[^>]+This website is powered by Koala Web Framework CMS/  },
    { :regexp => /^Koala Web Framework CMS/, :search => 'body'  }
]
end