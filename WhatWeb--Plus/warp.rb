Plugin.define do
    name "warp" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[server]', :regexp => /^Warp.(\d+(?:\.\d+)+)?$/,:offset => 1  }
]
end