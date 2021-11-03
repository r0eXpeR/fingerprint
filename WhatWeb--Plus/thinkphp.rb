Plugin.define do
    name "thinkphp" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :md5 => 'f49c4a4bde1eec6c0b80c2277c76e3db'      },
    { :md5 => 'f49c4a4bde1eec6c0b80c2277c76e3db'    },
    { :search => "headers", :text => 'think_template'      },
    { :search => "headers", :text => 'thinkphp'      },
    { :search => 'headers[x-powered-by]', :regexp => /ThinkPHP/    },
    { :serach => 'headers', :text => 'ThinkPHP'      },
    { :serach => 'headers', :text => 'ThinkPHP'    },
    { :text => '/Public/static/js/'      },
    { :text => '/Public/static/js/'    },
    { :url => '/ThinkPHP/LICENSE.txt', :text => 'ThinkPHP'      },
    { :url => '/robots.txt', :text => 'thinkphp'      }
]
end