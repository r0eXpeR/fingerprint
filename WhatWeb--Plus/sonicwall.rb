Plugin.define do
    name "sonicwall" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :mmh3 => '631108382'     },
    { :mmh3 => '631108382'    },
    { :search => "headers", :text => 'Server: SonicWALL'     }
]
end