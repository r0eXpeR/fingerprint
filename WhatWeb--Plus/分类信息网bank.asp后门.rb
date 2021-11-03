Plugin.define do
    name "分类信息网bank.asp后门" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :url => '/login.js', :md5 => '885e990ba6f70e555f04e86fe1a41b9b'   },
    { :url => '/skin/skin3/login.gif', :md5 => '376954146cc22e0b7b2ea2a98c8aa5a5'   },
    { :url => '/skin/skin3/reg.gif', :md5 => '3040f02aab88fd436a45467935bf14f7'   }
]
end