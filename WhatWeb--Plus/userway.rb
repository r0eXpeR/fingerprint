Plugin.define do
    name "userway" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /cdn\.userway\.org.widget.*\.js/, :search => 'body'  }
]
end