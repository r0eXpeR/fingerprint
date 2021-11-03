Plugin.define do
    name "backdrop" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :search => 'body', :regexp => /^Backdrop CMS(?:\s([\d.]+))?/  },
    {:offset => 1, :search => 'headers[x-generator]', :regexp => /^Backdrop CMS(?:\s([\d.]+))?/  }
]
end