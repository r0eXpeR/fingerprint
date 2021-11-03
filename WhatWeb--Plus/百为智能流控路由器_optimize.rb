Plugin.define do
    name "百为智能流控路由器" 
    authors [
        "winezero",

    ]
    version "0.1"
matches [
    {:text=>'<a href="http://www.bytevalue.com/" target="_blank">'},
    {:text=>'BYTEVALUE 智能流控路由器'},
    {:text=>'提交验证的id必须是ctl_submit'}
]
end