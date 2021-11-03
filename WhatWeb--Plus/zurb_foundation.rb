Plugin.define do
    name "zurb_foundation" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<div [^>]*class="[^"]*(?:small|medium|large)-\d{1,2} columns/  },
    { :regexp => /<link[^>]+foundation[^>"]+css/  }
]
end