Plugin.define do
    name "damicms" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :url => '/config.xml', :text => 'damicms'   }
]
end