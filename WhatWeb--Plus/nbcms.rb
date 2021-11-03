Plugin.define do
    name "nbcms" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :url => '/api/login.api.php', :md5 => '9f0e3df5b46b039ed97c68242dff6621'   },
    { :url => '/favicon.ico', :md5 => 'f6cf853a92768fc5d44edcc5341b3997'   },
    { :url => '/template/cn/prompt/images/prompt.css', :md5 => 'c1d080e15e4c5dc0e8cfc7d6cb3249e5'   },
    { :url => '/template/cn/red/images/sina.gif', :md5 => 'b203f946195f320245554837216eb6ed'   },
    { :url => '/template/cn/red/js/ks-switch.pack.js', :md5 => 'f349b7cdda74326b8f8adc3c3bab2f7d'   }
]
end