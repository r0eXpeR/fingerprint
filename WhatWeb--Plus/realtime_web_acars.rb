Plugin.define do
    name "realtime_web_acars" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'acarsd'   },
    { :text => 'content="KjM <acarsd@acarsd.org>'   },
    { :text => 'content="Realtime Web ACARS'   }
]
end