Plugin.define do
    name "xheditor" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => '.xheditor('   },
    { :text => 'class="xheditor'   },
    { :text => 'xheditor_lang/zh-cn.js'   }
]
end