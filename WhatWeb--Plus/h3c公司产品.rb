Plugin.define do
    name "h3c公司产品" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'H3C Corporation")'     },
    { :text => 'icg_helpScript.js'     },
    { :text => 'service@h3c.com'     },
    { :text => 'service@h3c.com'    }
]
end