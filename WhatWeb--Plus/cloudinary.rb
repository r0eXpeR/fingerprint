Plugin.define do
    name "cloudinary" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :certainty => 80, :regexp => /<img[^>]+\.cloudinary\.com/  }
]
end