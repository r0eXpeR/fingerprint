Plugin.define do
    name "google_maps" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /(?:maps\.google\.com.maps\?file=api(?:&v=([\d.]+))?|maps\.google\.com.maps.api.staticmap)/, :search => 'body'   },
    { :regexp => /..maps\.google(?:apis)?\.com.maps.api.js/, :search => 'body'   },
    { :text => 'maps.google.com/maps'    }
]
end