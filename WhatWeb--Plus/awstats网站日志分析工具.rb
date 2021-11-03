Plugin.define do
    name "awstats网站日志分析工具" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'Created by awstats'   },
    { :text => 'content="AWStats'   }
]
end