Plugin.define do
    name "ljcms(良精)" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :url => '/Admin/MasterPage/Default.Master', :text => 'ljcms'   },
    { :url => '/Ch/Index.Asp', :text => 'ljcms'   },
    { :url => '/En/Index.Asp', :text => 'ljcms'   },
    { :url => '/Global.asax', :text => 'ljcms'   },
    { :url => '/HtmlAspx/ascx/CreateOrder.ascx', :text => 'ljcms'   },
    { :url => '/Html_skin30/downclass_29_1.html', :text => 'ljcms'   },
    { :url => '/Master/default.Master', :text => 'ljcms'   },
    { :url => '/Module/AboutDetail.ascx', :text => 'ljcms'   },
    { :url => '/T/skin01/enindex.html', :text => 'ljcms'   },
    { :url => '/T/skin05/about.html', :text => 'ljcms'   },
    { :url => '/Web.config', :text => 'ljcms'   },
    { :url => '/ashx/comment.ashx', :text => 'ljcms'   },
    { :url => '/en/Module/AboutDetail.ascx', :text => 'ljcms'   }
]
end