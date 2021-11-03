Plugin.define do
    name "小蚂蚁" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'AntXiaouserslogin'   },
    { :text => '/Template/Ant/Css/AntHomeComm.css'   },
    { :text => 'Powered by 小蚂蚁地方门户网站系统'   }
]
end