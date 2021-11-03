Plugin.define do
    name "materialize_css" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<link[^>]* href="[^"]*materialize(?:\.min)?\.css/  },
    { :regexp => /materialize(?:\.min)?\.js/, :search => 'body'  }
]
end