Plugin.define do
    name "usablenet" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<iframe[ˆ>]*\.usablenet\.com.pt./  },
    { :regexp => /\.usablenet\.com.pt./, :search => 'body'  }
]
end