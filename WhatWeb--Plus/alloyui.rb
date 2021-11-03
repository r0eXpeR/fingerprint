Plugin.define do
    name "alloyui" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /^https?:..cdn\.alloyui\.com./, :search => 'body'   },
    { :text => 'cdn.alloyui.com'    }
]
end