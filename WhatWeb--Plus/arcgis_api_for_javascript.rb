Plugin.define do
    name "arcgis_api_for_javascript" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /basemaps\.arcgis\.com/, :search => 'body'  },
    { :regexp => /js\.arcgis\.com/, :search => 'body'  }
]
end