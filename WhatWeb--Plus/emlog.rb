Plugin.define do
    name "emlog" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'content="emlog'   },
    { :url => '/admin/views/default/main.css', :text => 'emlog'   },
    { :url => '/admin/views/images/login_logo.png', :md5 => '30f23137659a1d7aec7c60c9197ab185'   },
    { :url => '/admin/views/style/default/style.css', :text => 'emlog'   },
    { :url => '/admin/views/style/green/style.css', :md5 => '4d50eee0c43bc7d1ac708c5622d5b481'   },
    { :url => '/admin/views/style/green/style.css', :text => 'emlog'   },
    { :url => '/content/cache/blogger', :text => 'emlog'   },
    { :url => '/content/cache/links', :text => 'emlog'   },
    { :url => '/content/cache/options', :text => 'emlog'   },
    { :url => '/content/templates/default/main.css', :text => 'emlog'   },
    { :url => '/content/templates/default/tpl.ini', :text => 'emlog'   },
    { :url => '/robots.txt', :text => 'emlog'   },
    { :url => '/wlwmanifest.xml', :text => 'emlog'   }
]
end