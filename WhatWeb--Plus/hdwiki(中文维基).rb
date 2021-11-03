Plugin.define do
    name "hdwiki(中文维基)" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :url => '/install/testdata/hdwikitest.sql', :md5 => '8fd7a95b3755e88fd71694c22bb652e6'   },
    { :url => '/install/testdata/hdwikitest.sql', :text => 'hdwiki'   },
    { :url => '/js/api.js', :text => 'hdwiki'   },
    { :url => '/js/editor/editor.js', :text => 'hdwiki'   },
    { :url => '/js/hdeditor/hdeditor.min.js', :text => 'hdwiki'   },
    { :url => '/js/hdeditor/skins/content.css', :text => 'hdwiki'   },
    { :url => '/js/jqeditor/hdwiki.js', :text => 'hdwiki'   },
    { :url => '/js/jqeditor/skins/content_default.css', :text => 'hdwiki'   },
    { :url => '/plugins/hdapi/view/admin_hdapi.htm', :text => 'hdwiki'   },
    { :url => '/plugins/mwimport/desc.xml', :text => 'hdwiki'   },
    { :url => '/plugins/mwimport/view/admin_mwimport.htm', :text => 'hdwiki'   },
    { :url => '/plugins/ucenter/view/admin_ucenter.htm', :text => 'hdwiki'   },
    { :url => '/robots.txt', :text => 'hdwiki'   },
    { :url => '/style/aoyun/hdwiki.css', :text => 'hdwiki'   },
    { :url => '/style/default/admin/admin.css', :text => 'hdwiki'   },
    { :url => '/style/default/admin/logo.gif', :md5 => 'bf8216415c9f5fe23997cd5c15484f68'   },
    { :url => '/style/default/desc.xml', :text => 'hdwiki'   },
    { :url => '/style/default/folder.gif', :md5 => '275ad2dc7ccf0629af42cead62b5e1bd'   },
    { :url => '/style/default/fujian_top_bg.jpg', :md5 => '35ac654ff98eb5dd985ae0a42234a7e4'   },
    { :url => '/style/default/hdwiki.css', :md5 => '1c9a27d7c1b47da2083be4012408c75e'   },
    { :url => '/style/default/index_login_bg.jpg', :md5 => '69d7e3d0fd6971f300a914d0d33301ed'   },
    { :url => '/style/default/login_bg.jpg', :md5 => '61ff56e1d34228ca768bda34cb4ece20'   },
    { :url => '/style/default/style/bg_title.jpg', :md5 => '97c5bf95c0aeca83fb85d47c0a8d1785'   },
    { :url => '/view/default/admin_addlink.htm', :text => 'hdwiki'   }
]
end