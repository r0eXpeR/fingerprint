Plugin.define do
    name "浪潮政务系统" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'LangChao.ECGAP.OutPortal'     },
    { :text => 'LangChao.ECGAP.OutPorta'     },
    { :text => 'OnlineQuery/QueryList.aspx'     },
    { :text => '浪潮政务'     }
]
end