Plugin.define do
    name "insider" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /api\.useinsider\.\w+./, :search => 'body'  }
]
end