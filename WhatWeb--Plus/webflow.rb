Plugin.define do
    name "webflow" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<html[^>]+data-wf-site/  },
    { :regexp => /Webflow/, :search => 'body'  }
]
end