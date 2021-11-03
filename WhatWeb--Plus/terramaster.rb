Plugin.define do
    name "terramaster" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => '/js/common.js'   },
    { :text => 'TerraMaster'   },
    { :url => '/css/common.css', :text => 'input:-moz-placeholder{color:#A9A9A9;}'   }
]
end