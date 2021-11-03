Plugin.define do
    name "foosuncms(风讯)" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :url => '/Admin/Collect/vssver2.scc', :text => 'foosuncms'   },
    { :url => '/Admin/FreeLabel/vssver2.scc', :text => 'foosuncms'   },
    { :url => '/Admin/News/images/vssver2.scc', :text => 'foosuncms'   },
    { :url => '/Admin/News/lib/vssver2.scc', :text => 'foosuncms'   },
    { :url => '/Admin/PublicSite/vssver2.scc', :text => 'foosuncms'   },
    { :url => '/Apsearch.html', :text => 'foosuncms'   },
    { :url => '/CSS/imges/52.gif', :md5 => '01ce5561da02267709df0a2abffc674e'   },
    { :url => '/FS_Inc/vssver2.scc', :text => 'foosuncms'   },
    { :url => '/FS_InterFace/vssver2.scc', :text => 'foosuncms'   },
    { :url => '/Foosun/Admin/Mall/Mall_Factory.Asp', :text => 'foosuncms'   },
    { :url => '/Index.html', :text => 'foosuncms'   },
    { :url => '/Install/SQL/Value/site_param.sql', :text => 'foosuncms'   },
    { :url => '/Tags.html', :text => 'foosuncms'   },
    { :url => '/Templets/about/index.htm', :text => 'foosuncms'   },
    { :url => '/Templets/pro/cms.htm', :text => 'foosuncms'   },
    { :url => '/User/contr/lib/vssver2.scc', :text => 'foosuncms'   },
    { :url => '/Users/All_User.Asp', :text => 'foosuncms'   },
    { :url => '/Users/Mall/OrderPrint.Asp', :text => 'foosuncms'   },
    { :url => '/down/index.html', :text => 'foosuncms'   },
    { :url => '/manage/collect/MasterPage_Site.master', :text => 'foosuncms'   },
    { :url => '/search.html', :text => 'foosuncms'   },
    { :url => '/sysImages/folder/error.gif', :md5 => 'a42a8e2c6ccef2f28e29727394b1c10a'   },
    { :url => '/xml/products/dotnetcmsversion.xml', :text => 'foosuncms'   }
]
end