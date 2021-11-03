Plugin.define do
    name "civic" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /cc\.cdn\.civiccomputing\.com/, :search => 'body'  }
]
end