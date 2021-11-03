Plugin.define do
    name "pligg" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<span[^>]+id="xvotes-0/  },
    { :search => 'body', :regexp => /Pligg/  }
]
end