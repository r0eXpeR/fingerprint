Plugin.define do
    name "sympa" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<a href="https?:..www\.sympa\.org">\s*Powered by Sympa\s*<.a>/  },
    { :regexp => /^Sympa$/, :search => 'body'  }
]
end