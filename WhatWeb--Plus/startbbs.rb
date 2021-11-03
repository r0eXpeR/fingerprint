Plugin.define do
    name "startbbs" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'stb_csrf_cookie'   },
    { :text => 'content="Startbbs'   },
    { :url => '/robots.txt', :text => 'StartBBS'   },
    { :url => '/static/common/images/rss.png', :md5 => 'b37f501673e49a96d07d35d9f7af9c11'   },
    { :url => '/static/common/js/topic.js', :text => 'startbbs'   },
    { :url => '/uploads/avatar/default/small.png', :md5 => 'b0cd2581114b0b06581df1b84214bc99'   }
]
end