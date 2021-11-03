Plugin.define do
    name "newvane_onlineexam" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :url => '/checkbrower/utils.js', :text => 'MinVer'   },
    { :url => '/images/menu_en.gif', :md5 => 'dd5e4b1e48933753748837c05b1e9a57'   },
    { :url => '/images/menu_gbk.gif', :md5 => '933be27325375c97818f5b14fe062829'   }
]
end