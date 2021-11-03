Plugin.define do
    name "rbs_change" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<html[^>]+xmlns:change=/  },
    { :regexp => /RBS Change/, :search => 'body'  }
]
end