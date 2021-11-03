Plugin.define do
    name "font_awesome" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /(?:F|f)o(?:n|r)t-?(?:A|a)wesome(?:.*?([0-9a-fA-F]{7,40}|[\d]+(?:.[\d]+(?:.[\d]+)?)?)|)/, :search => 'body'  },
    { :regexp => /<link[^>]* href=[^>]*kit\-pro\.fontawesome\.com.releases.v([0-9.]+)./,:offset => 1  },
    { :regexp => /<link[^>]* href=[^>]+(?:([\d.]+).)?(?:css.)?font-awesome(?:\.min)?\.css/,:offset => 1  },
    { :regexp => /\.fontawesome\.com.([0-9a-z]+).js/, :search => 'body'  }
]
end