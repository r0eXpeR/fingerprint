Plugin.define do
    name "dedecms" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /dedeajax/, :search => 'body'   },
    { :text => '/templets/default/style/dedecms.css'    },
    { :text => 'Power by DedeCms'    },
    { :text => 'Powered by DedeCms'    },
    { :text => 'http://www.dedecms.com/'    }
]
end