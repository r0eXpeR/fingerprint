Plugin.define do
    name "天融信脆弱性扫描与管理系统" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => '/js/report/horizontalReportPanel.js'     },
    { :text => '/js/report/horizontalReportPanel.js'    },
    { :text => '天融信脆弱性扫描与管理系统'     }
]
end