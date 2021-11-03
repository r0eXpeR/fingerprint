Plugin.define do
    name "supesite" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'supe_sid'   },
    { :url => '/favicon.ico', :md5 => '50d9867b328c656c71a9e2eed840c505'   },
    { :url => '/include/js/ajax.js', :md5 => '592b57710e9f8179fb0222c7bda38dca'   },
    { :url => '/include/js/ajax.js', :md5 => '60441bd5893e169020f00be423068ed8'   },
    { :url => '/templates/default/css/common.css', :md5 => '01f73274141495e8a9a13d2c5548b4bb'   },
    { :url => '/templates/default/images/dotline_h.gif', :md5 => '61d710a5bbfb0ea9cf8962cc87572ef6'   },
    { :url => '/templates/default/images/link_icons.gif', :md5 => 'd3a2a4e2606751cf742c2ba26718753c'   },
    { :url => '/templates/defaultimages/btn_search_bg.gif', :md5 => '606092bf56c4c08b8a17a11e58a764c9'   }
]
end