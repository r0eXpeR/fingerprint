Plugin.define do
    name "snap" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[server]', :regexp => /Snap.([.\d]+)/,:offset => 1  }
]
end