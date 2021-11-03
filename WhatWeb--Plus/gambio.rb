Plugin.define do
    name "gambio" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /(?:<link[^>]* href="templates.gambio.|<a[^>]content\.php\?coID=\d|<!-- gambio eof -->|<!--[\s=]+Shopsoftware by Gambio GmbH \(c\))/  },
    { :regexp => /gm_javascript\.js\.php/, :search => 'body'  }
]
end