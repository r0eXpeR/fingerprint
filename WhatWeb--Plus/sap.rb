Plugin.define do
    name "sap" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[server]', :regexp => /SAP NetWeaver Application Server/  }
]
end