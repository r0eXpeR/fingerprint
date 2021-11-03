Plugin.define do
    name "roadiz_cms" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :regexp => /^Roadiz ?(?:master|develop)? v?([0-9\.]+)/, :search => 'body'  },
    { :regexp => /Roadiz CMS/, :search => 'headers[x-powered-by]'  }
]
end