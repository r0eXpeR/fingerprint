Plugin.define do
    name "m.r._inc_siteframe" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[powered-by]', :regexp => /M\.R\. Inc SiteFrame/  }
]
end