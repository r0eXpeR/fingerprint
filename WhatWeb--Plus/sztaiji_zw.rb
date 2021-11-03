Plugin.define do
    name "sztaiji_zw" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :url => '/css/head.css', :text => 'background-image: url(/images/index/Tab1.gif);'   },
    { :url => '/images/tb3.png', :md5 => '35bbd07154ea86ea80350d2d7dcf04ca'   }
]
end