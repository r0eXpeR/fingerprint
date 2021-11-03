Plugin.define do
    name "cisco-cx20" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'CISCO-CX20'     },
    { :text => 'CISCO-CX20'     },
    { :text => 'CISCO-CX20'    }
]
end