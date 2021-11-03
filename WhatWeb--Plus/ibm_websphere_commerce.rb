Plugin.define do
    name "ibm_websphere_commerce" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<(?:a|link|script)[^>]*(?:href|src)=".*(?:.wcsstore.|webapp\.wcs)/  }
]
end