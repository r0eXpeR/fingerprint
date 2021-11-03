Plugin.define do
    name "nuxt.js" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /._nuxt./, :search => 'body'  },
    { :regexp => /<div [^>]*id="__nuxt/  },
    { :regexp => /<script [^>]*>window\.__NUXT__/  }
]
end