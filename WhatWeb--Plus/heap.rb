Plugin.define do
    name "heap" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /cdn\.heapanalytics\.com/, :search => 'body'  },
    { :regexp => /heap-\d+\.js/, :search => 'body'  }
]
end