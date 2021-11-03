Plugin.define do
    name "帆软报表" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [
    { :serach => 'headers', :text => '数据决策系统'   },
    { :text => 'ReportServer'   },
    { :text => 'WebReport/login.html'   },
]
end