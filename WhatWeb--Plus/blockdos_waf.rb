Plugin.define do
    name "blockdos_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers', :text => 'BlockDos.net'  },
    { :search => 'headers', :text => 'blockdos.net'  }
]
end