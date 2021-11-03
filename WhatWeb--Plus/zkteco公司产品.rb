Plugin.define do
    name "zkteco公司产品" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'sessionidadms'   },
    { :text => '/media/images/ZKECO16.ico'   },
    { :text => 'ZKTeco Inc. All Rights Reserved'   }
]
end