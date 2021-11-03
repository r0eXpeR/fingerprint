Plugin.define do
    name "commerce.js" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /Commerce.js/, :search => 'headers[x-powered-by]'  },
    { :regexp => /cdn\.chec\.io.v(\d+).commerce\.js/, :search => 'body'  },
    { :regexp => /chec.commerce\.js/, :search => 'body'  }
]
end