Plugin.define do
    name "impresspages" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :regexp => /ImpressPages(?: CMS)?( [\d.]*)?/, :search => 'body'  }
]
end