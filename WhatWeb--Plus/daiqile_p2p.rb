Plugin.define do
    name "daiqile_p2p" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :url => '/bbs/main/html', :text => '/bbs/main.html?q=reply'   },
    { :url => '/creditshop/product/main.html', :text => 'daiqile_p2p'   },
    { :url => '/themes/default/images/sum_bg.png', :md5 => '95b98806a55027a15597f4507a3e13c0'   }
]
end