Plugin.define do
    name "grandnode" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /(?:<!--GrandNode |<a[^>]+grandnode - Powered by |Powered by: <a[^>]+nopcommerce)/  },
    { :search => 'body', :regexp => /grandnode/  }
]
end