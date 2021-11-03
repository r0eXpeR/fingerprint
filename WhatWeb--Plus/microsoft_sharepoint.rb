Plugin.define do
    name "microsoft_sharepoint" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /Microsoft SharePoint/, :search => 'body'  }
]
end