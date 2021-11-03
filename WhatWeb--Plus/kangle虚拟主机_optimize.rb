Plugin.define do
    name "kangle虚拟主机" 
    authors [
        "winezero",
    ]
    version "0.1"
    matches [ 
    { :text => 'welcome use kangle'   },
    { :search => "headers", :text => 'kangle'   },
    { :url => '/vhost/view/default/imgs/vhost_login.png', :md5 => 'f9e1b8ac323811d27ba15dfb29fba21b'   },
]
end