Plugin.define do
    name "upupw_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers', :text => '-upupw'  },
    { :text => '<title>UPUPW WARNING</title>'  }
]
end