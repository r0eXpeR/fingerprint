Plugin.define do
    name "oracle_opera" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'MICROS Systems Inc., OPERA'   },
    { :text => 'OperaLogin/Welcome.do'   }
]
end