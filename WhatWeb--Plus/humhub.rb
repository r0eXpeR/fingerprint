Plugin.define do
    name "humhub" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :url => '/css/animate.min.css', :text => 'Animate.css - http://daneden.me/animate'   },
    { :url => '/user/auth/login', :text => 'Powered by <a href="http://www.humhub.org"target="_blank">HumHub</a>'   }
]
end