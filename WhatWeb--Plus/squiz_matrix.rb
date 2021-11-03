Plugin.define do
    name "squiz_matrix" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<!--\s+Running (?:MySource|Squiz) Matrix/  },
    { :regexp => /Squiz Matrix/, :search => 'body'  },
    { :regexp => /Squiz Matrix/, :search => 'headers[x-powered-by]'  }
]
end