Plugin.define do
    name "rockrms" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /^Rock v([0-9.]+)/,:offset => 1, :search => 'body'  }
]
end