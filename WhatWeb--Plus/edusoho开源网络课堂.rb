Plugin.define do
    name "edusoho开源网络课堂" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'Powered By EduSoho'   },
    { :text => 'Powered by <a href="http://www.edusoho.com'   },
    { :text => 'edusoho'   }
]
end