Plugin.define do
    name "adcash" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /^[^\.]*..(?:[^\.]+\.)?adcash\.com.(?:script|ad)./, :search => 'body'  }
]
end