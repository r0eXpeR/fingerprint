Plugin.define do
    name "twistphp" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[x-powered-by]', :regexp => /TwistPHP/  }
]
end