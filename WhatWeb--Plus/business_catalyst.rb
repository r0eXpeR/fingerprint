Plugin.define do
    name "business_catalyst" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<!-- BC_OBNW -->/  },
    { :regexp => /CatalystScripts/, :search => 'body'  }
]
end