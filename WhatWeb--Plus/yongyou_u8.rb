Plugin.define do
    name "yongyou_u8" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :url => '/download.php', :text => '/help.php'   },
    { :url => '/pic/downbj.png', :md5 => '14ef9332e4e6ceed98263347f63a6f2b'   },
    { :url => '/pic/logo.png', :md5 => '77725189036c03a4d2a8f49c0bc06e72'   }
]
end