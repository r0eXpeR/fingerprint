Plugin.define do
    name "nextgen_gallery" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :regexp => /<!-- <meta name="NextGEN" version="([\d.]+)" .> -->/  },
    { :regexp => /.nextgen-gallery.js./, :search => 'body'  }
]
end