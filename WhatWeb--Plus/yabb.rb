Plugin.define do
    name "yabb" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /Powered by <a href="[^>]+yabbforum/   },
    { :search => "headers", :text => 'Y2User'    },
    { :text => '/YaBB.js'    },
    { :text => 'YaBBTime.getTime()'    }
]
end