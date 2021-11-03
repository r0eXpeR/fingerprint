Plugin.define do
    name "swiftlet" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /Powered by <a href="[^>]+Swiftlet/   },
    { :regexp => /Swiftlet/, :search => 'body'   },
    { :regexp => /Swiftlet/, :search => 'headers[x-generator]'   },
    { :regexp => /Swiftlet/, :search => 'headers[x-powered-by]'   },
    { :search => "headers", :text => 'Swiftlet'    }
]
end