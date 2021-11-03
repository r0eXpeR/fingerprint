Plugin.define do
    name "turbocms" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => '/cmsapp/count/newstop_index.jsp?siteid='   },
    { :text => '/cmsapp/zxdcADD.jsp'   },
    { :text => 'Powered by TurboCMS'   }
]
end