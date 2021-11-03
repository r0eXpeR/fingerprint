Plugin.define do
    name "telerik_sitefinity" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'Telerik.Web.UI.WebResource.axd'   },
    { :text => 'content="Sitefinity'   }
]
end