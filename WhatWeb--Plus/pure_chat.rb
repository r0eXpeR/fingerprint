Plugin.define do
    name "pure_chat" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /app\.purechat\.com/  }
]
end