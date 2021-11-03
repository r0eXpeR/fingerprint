Plugin.define do
    name "binarysec_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers', :text => 'BinarySec'  },
    { :search => 'headers', :text => 'binarysec'  },
    { :search => 'headers', :text => 'x-binarysec-cache'  },
    { :search => 'headers', :text => 'x-binarysec-nocache'  },
    { :search => 'headers', :text => 'x-binarysec-via'  }
]
end