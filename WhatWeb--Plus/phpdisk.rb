Plugin.define do
    name "phpdisk" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'Powered by PHPDisk'   },
    { :text => 'content="PHPDisk'   },
    { :url => '/favicon.ico', :md5 => '297465a972da8844823361c6383ca127'   },
    { :url => '/images/login_nav.gif', :md5 => 'd0eb8623e5e69148659a03ef5bc8dbc9'   },
    { :url => '/includes/js/common.js', :text => 'PHPDISK'   },
    { :url => '/includes/js/tree.js', :text => 'PHPDISK'   }
]
end