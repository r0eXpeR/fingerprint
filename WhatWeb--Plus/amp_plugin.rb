Plugin.define do
    name "amp_plugin" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :regexp => /^AMP Plugin v(\d+\.\d+.*)$/, :search => 'body'  }
]
end