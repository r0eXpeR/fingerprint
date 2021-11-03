Plugin.define do
    name "volusion_(v2)" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<body [^>]*data-vn-page-name/  }
]
end