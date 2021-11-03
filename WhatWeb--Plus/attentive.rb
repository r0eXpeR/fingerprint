Plugin.define do
    name "attentive" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /cdn\.attn\.tv/, :search => 'body'  }
]
end