Plugin.define do
    name "flexcmp" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<!--[^>]+FlexCMP[^>v]+v\. ([\d.]+)/,:offset => 1  },
    { :regexp => /FlexCMP.+\[v\. ([\d.]+)/,:offset => 1, :search => 'headers[x-powered-by]'  },
    { :search => 'body', :regexp => /^FlexCMP/  }
]
end