Plugin.define do
    name "sony摄像头" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'Sony Network Camera'   },
    { :text => 'inquiry.cgi?inqjs=system&inqjs=camera'   }
]
end