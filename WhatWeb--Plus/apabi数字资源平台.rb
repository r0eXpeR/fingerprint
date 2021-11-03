Plugin.define do
    name "apabi数字资源平台" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => '<link href="HTTP://apabi'   },
    { :text => 'Default/apabi.css'   },
    { :text => '数字资源平台'   }
]
end