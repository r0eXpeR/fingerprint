Plugin.define do
    name "phpok" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'Powered By phpok.com'   },
    { :text => 'content="phpok'   },
    { :text => 'phpok'   },
    { :url => '/images/blank.gif', :md5 => '59ee141255b469bbe56342c6e29c576d'   },
    { :url => '/images/blank.gif', :md5 => 'fc94fb0c3ed8a8f909dbc7630a0987ff'   },
    { :url => '/images/email.png', :md5 => '2eebe41ec1dc181e976249bd884fbd87'   },
    { :url => '/images/swfupload.png', :md5 => '8cb9cf25fb19ea4552d8fa318cfc1cca'   },
    { :url => '/images/swfupload.png', :md5 => 'd9f5ceb0a4a5f933338be76e047f68e6'   },
    { :url => '/images/top.jpg', :md5 => '8f9777e8857f0d6923b6fb8445f6a796'   },
    { :url => '/images/zip.png', :md5 => '82c39858f221dbda74ca71d5415f5791'   },
    { :url => '/install/tpl/error.html', :md5 => '201e1549d1ca2435748cf105ca3e1b79'   },
    { :url => '/install/tpl/images/loading.gif', :md5 => '0fad94fbb2fd7e0ec9e74e72c1688acd'   },
    { :url => '/js/www.js', :md5 => '80ca751b87e8a1f160d93545a898b54c'   },
    { :url => '/libs/xheditor/xheditor_plugins/editor.gif', :md5 => 'c83d69ea9a0656eafcc7ce61ea8389b0'   },
    { :url => '/robots.txt', :md5 => '35c9586841033dd2d6eb5a05aa3694fe'   }
]
end