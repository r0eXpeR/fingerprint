Plugin.define do
    name "openui5" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /sap-ui-core\.js/, :search => 'body'  }
]
end