Plugin.define do
    name "i@report" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'ESENSOFT_IREPORT_SERVER'   },
    { :text => 'com.sanlink.server.Login'   },
    { :text => 'css/ireport.css'   },
    { :text => 'ireportclient'   }
]
end