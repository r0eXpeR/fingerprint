Plugin.define do
    name "phenomic" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /.phenomic\.browser\.[a-f0-9]+\.js/, :search => 'body'  },
    { :regexp => /<[^>]+id="phenomic(?:root)?/  }
]
end