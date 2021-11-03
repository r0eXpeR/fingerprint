Plugin.define do
    name "raychat" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /app\.raychat\.io.scripts.js/  }
]
end