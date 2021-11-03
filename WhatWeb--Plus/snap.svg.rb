Plugin.define do
    name "snap.svg" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /snap\.svg(?:-min)?\.js/, :search => 'body'  }
]
end