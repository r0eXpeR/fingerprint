Plugin.define do
    name "salesforce_commerce_cloud" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<[^>]+demandware\.edgesuite/  },
    { :search => 'body', :regexp => /.demandware\.static./  },
    { :search => 'headers[server]', :regexp => /Demandware eCommerce Server/  }
]
end