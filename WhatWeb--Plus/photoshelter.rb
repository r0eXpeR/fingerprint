Plugin.define do
    name "photoshelter" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<!--\s+#+ Powered by the PhotoShelter Beam platform/  },
    { :regexp => /<link[^>]+c\.photoshelter\.com/  }
]
end