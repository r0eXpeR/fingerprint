Plugin.define do
    name "jsdelivr" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<link [^>]*?href="?[a-zA-Z]*?:?..cdn\.jsdelivr\.net./   },
    { :search => "headers", :text => 'cdn.jsdelivr.net'    },
    { :search => 'body', :regexp => /..cdn\.jsdelivr\.net./   },
    { :text => 'cdn.jsdelivr.net'    }
]
end