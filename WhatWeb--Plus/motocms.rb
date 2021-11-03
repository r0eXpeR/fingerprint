Plugin.define do
    name "motocms" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /.mt-includes.js.website(?:assets)?\.(?:min)?\.js/, :search => 'body'  },
    { :regexp => /<link [^>]*href="[^>]*\.mt-content\.[^>]*\.css/  }
]
end