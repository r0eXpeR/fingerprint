Plugin.define do
    name "netcontinuum_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers', :text => 'NCI__SessionId='  },
    { :search => 'headers', :text => 'nnCoection'  }
]
end