Plugin.define do
    name "Harbor" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => '<title>Harbor</title>'   },
    {:serach => 'headers', :text => 'harbor-lang'   }
]
end