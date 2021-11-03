Plugin.define do
    name "mouse_flow" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /cdn\.mouseflow\.com/, :search => 'body'  }
]
end