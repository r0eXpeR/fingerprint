Plugin.define do
    name "simple_analytics" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /^https:\.\.cdn\.simpleanalytics\.io\.hello\.js/, :search => 'body'  }
]
end