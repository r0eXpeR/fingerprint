Plugin.define do
    name "saia_pcd" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[server]',:offset => 1, :regexp => /Saia PCD(?:([.a-z\d.]+))?/  }
]
end