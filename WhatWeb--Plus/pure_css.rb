Plugin.define do
    name "pure_css" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<div[^>]+class="[^"]*pure-u-(?:sm-|md-|lg-|xl-)?\d-\d/  },
    { :regexp => /<link[^>]+(?:([\d.])+.)?pure(?:-min)?\.css/,:offset => 1  }
]
end