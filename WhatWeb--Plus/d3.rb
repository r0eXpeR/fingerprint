Plugin.define do
    name "d3" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /.d3(?:\. v\d+)?(?:\.min)?\.js/   },
    { :text => '/d3.js'    },
    { :text => '/d3.min.js'    },
    { :text => '/d3.v2.js'    },
    { :text => '/d3.v2.min.js'    }
]
end