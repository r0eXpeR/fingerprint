Plugin.define do
    name "webdev" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<!-- [a-zA-Z0-9_]+ [\d.]+ [\d:]+ WebDev \d\d ([\d.]+) -->/,:offset => 1  },
    { :regexp => /^WEBDEV$/, :search => 'body'  }
]
end