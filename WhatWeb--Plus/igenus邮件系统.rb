Plugin.define do
    name "igenus邮件系统" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'Copyright by<A HREF="http://www.igenus.org'   },
    { :text => 'iGENUS webmail'   }
]
end