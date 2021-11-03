Plugin.define do
    name "aesecure_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers', :text => 'AeSecure-Code'  },
    { :search => 'headers', :text => 'aeSecure-code'  },
    { :search => 'headers', :text => 'aesecure-code'  },
    { :text => 'aesecure_denied.png'  }
]
end