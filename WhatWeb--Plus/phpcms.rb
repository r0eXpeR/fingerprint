Plugin.define do
    name "phpcms" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => '/index.php?m=content&amp;c=index&amp;a=lists'   },
    { :text => '/index.php?m=content&c=index&a=lists'   },
    { :text => 'Powered by Phpcms'   },
    { :text => 'content="Phpcms'   },
    { :text => 'data/config.js'   },
    { :text => 'http://www.phpcms.cn")'   },
    { :url => '/favicon.ico', :md5 => '18fb0c67f6a7e5c7ad62fc37c5ab7637'   },
    { :url => '/favicon.ico', :md5 => '6e9f36b06ea21f69f5374a0472c85415'   },
    { :url => '/phpcms/libs/data/font/Vineta.ttf', :md5 => 'e6e557bad69b09533827d9652e0c11ab'   },
    { :url => '/robots.txt', :md5 => '0fd86d5f9c1070613e22fb30456bf609'   },
    { :url => '/robots.txt', :md5 => '7750f62fc14ea34527c09c7694a3d406'   },
    { :url => '/robots.txt', :md5 => 'b8185cecb2bb24b2d0169f15e2ed09a8'   },
    { :url => '/statics/images/admin_img/arrowhead-y.png', :md5 => '6c34f70bd2a05c8c5ddebb369b5b9509'   }
]
end