Plugin.define do
    name "cisco_asr" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'CISCO ASR'     },
    { :text => 'CISCO ASR'     },
    { :text => 'CISCO ASR'    }
]
end