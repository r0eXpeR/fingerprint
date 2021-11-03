Plugin.define do
    name "nivcms" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /NivCMS/, :search => 'headers[x-powered-by]'  },
    { :regexp => /NivCMSPro/, :search => 'headers[set-cookie]'  },
    { :search => 'body', :regexp => /^NivCMS/  }
]
end