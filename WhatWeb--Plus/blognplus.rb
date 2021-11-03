Plugin.define do
    name "blognplus" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'Powered by'   },
    { :text => 'href="http://www.blogn.org'   }
]
end