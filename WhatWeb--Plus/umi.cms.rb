Plugin.define do
    name "umi.cms" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /UMI\.CMS/, :search => 'headers[x-generated-by]'   },
    { :search => "headers", :text => 'UMI.CMS'    }
]
end