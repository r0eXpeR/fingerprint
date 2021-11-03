Plugin.define do
    name "strapi" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /^Strapi/, :search => 'headers[x-powered-by]'  }
]
end