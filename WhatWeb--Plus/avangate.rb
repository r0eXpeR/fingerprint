Plugin.define do
    name "avangate" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<link[^>]* href="https?:..edge\.avangate\.net./  },
    { :search => 'body', :regexp => /^https?:..edge\.avangate\.net./  }
]
end