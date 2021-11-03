Plugin.define do
    name "hanweb" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :url => '/module/jslib/jquery/jquery.js', :text => 'Use the correct document accordingly'   },
    { :url => '/script/page.css', :text => 'BORDER-RIGHT: #e6e6e6'   }
]
end