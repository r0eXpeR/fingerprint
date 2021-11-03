Plugin.define do
    name "亿赛通-电子文档安全管理系统" 
    authors [
        "winezero",

    ]
    version "0.1"
matches [
    {:text=>'CDGServer3'},
    {:regexp=>/电子文档安全管理系统|\/CDGServer3\/index.jsp|\/CDGServer3\/SysConfig.jsp|\/CDGServer3\/help\/getEditionInfo.jsp/}
]
end