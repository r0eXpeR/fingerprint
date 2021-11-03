Plugin.define do
    name "simsite" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /.sim(?:site|core).js/  }
]
end