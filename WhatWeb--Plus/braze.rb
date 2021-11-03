Plugin.define do
    name "braze" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :search => 'body', :regexp => /js\.appboycdn\.com.web-sdk.([\d.]+)/  }
]
end