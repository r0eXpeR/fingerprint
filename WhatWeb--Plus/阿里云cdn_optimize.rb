Plugin.define do
    name "阿里云cdn" 
    authors [
        "winezero",

    ]
    version "0.1"
matches [
    {:search=>"headers", :text=>'cdn.aliyuncs.com'},
    {:search=>'headers', :text=>'aliyungf_tc='},
    {:text=>'cdn.aliyuncs.com'},
    {:text=>'errors.aliyun.com'}
]
end