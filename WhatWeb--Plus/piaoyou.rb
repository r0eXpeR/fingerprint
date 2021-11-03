Plugin.define do
    name "piaoyou" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :url => '/css/sexybuttons.css', :text => '.sexybutton.sexyorange:hover'   },
    { :url => '/images/favicon.ico', :md5 => 'e5f1286caa95dd59893462952a0eef8b'   },
    { :url => '/js/login.js', :text => 'rightOverlay_write'   }
]
end