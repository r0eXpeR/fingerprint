Plugin.define do
    name "opennemas" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /OpenNemas/, :search => 'body'  },
    { :regexp => /OpenNemas/, :search => 'headers[x-powered-by]'  }
]
end