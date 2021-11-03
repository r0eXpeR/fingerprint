Plugin.define do
    name "boblog" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :url => '/images/js/ajax.js', :text => 'boblog_ajax'   },
    { :url => '/robots.txt', :text => 'for Bo-blog'   }
]
end