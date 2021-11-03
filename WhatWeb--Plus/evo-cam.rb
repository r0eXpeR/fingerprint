Plugin.define do
    name "evo-cam" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => '<applet archive="evocam.jar'   },
    { :text => 'value="evocam.jar'   }
]
end