Plugin.define do
    name "yongyou_icc" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :url => '/web/icc/images/chat-1-3/zh-cn/close.gif', :md5 => '8154081e55ef91ace3a254ed90485b52'   },
    { :url => '/web/icc/js/chat-msg.js', :text => 'icc.swfParam.deid'   },
    { :url => '/web/icc/js/chat.js', :text => 'icc.opArray'   },
    { :url => '/web/images/pageLoading.gif', :md5 => 'efc31261a794bf893a2cd3043f2f53ff'   }
]
end