Plugin.define do
    name "klevu" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :search => 'body', :regexp => /js\.klevu\.\w+.klevu-js-v([\d.]+)/  }
]
end