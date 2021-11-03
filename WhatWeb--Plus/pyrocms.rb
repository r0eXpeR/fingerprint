Plugin.define do
    name "pyrocms" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /PyroCMS/, :search => 'headers[x-streams-distribution]'  }
]
end