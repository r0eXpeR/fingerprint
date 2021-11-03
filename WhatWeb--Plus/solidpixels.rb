Plugin.define do
    name "solidpixels" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /^https?:..cdn\.solidpixels\.net./, :search => 'body'  },
    { :search => 'body', :regexp => /^solidpixels/  }
]
end