Plugin.define do
    name "mod_security_(owasp_csr)_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :status => '406', :text => '406 not acceptable'  }
]
end