Plugin.define do
    name "handlebars" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :search => 'body', :regexp => /handlebars(?:\.runtime)?(?:-v([\d.]+?))?(?:\.min)?\.js/  },
    { :regexp => /<[^>]*type=[^>]text\.x-handlebars-template/  }
]
end