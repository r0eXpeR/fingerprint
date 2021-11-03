Plugin.define do
    name "borderfree" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /bfx\.js/, :search => 'body'  },
    { :regexp => /global\.prd\.borderfree\.com/, :search => 'body'  },
    { :regexp => /wm\.prd\.borderfree\.com/, :search => 'body'  }
]
end