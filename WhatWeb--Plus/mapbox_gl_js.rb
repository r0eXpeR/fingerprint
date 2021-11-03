Plugin.define do
    name "mapbox_gl_js" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /mapbox-gl.js/, :search => 'body'  }
]
end