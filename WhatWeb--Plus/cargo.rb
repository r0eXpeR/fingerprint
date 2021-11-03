Plugin.define do
    name "cargo" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<link [^>]+Cargo feed/  },
    { :search => 'body', :regexp => /.cargo\./  }
]
end