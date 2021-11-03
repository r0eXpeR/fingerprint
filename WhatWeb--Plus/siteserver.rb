Plugin.define do
    name "siteserver" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'Powered by SiteServer CMS'   },
    { :text => 'SiteServer CMS")'   },
    { :text => 'T_系统首页模板'   },
    { :text => 'http://www.siteserver.cn'   },
    { :text => 'sitefiles")'   },
    { :url => '/', :text => 'siteserver'   },
    { :url => '/LiveServer/Configuration/UrlRewrite.config', :text => 'siteserver'   },
    { :url => '/LiveServer/Inc/html_head.inc', :text => 'siteserver'   },
    { :url => '/SiteFiles/bairong/SqlScripts/cms.sql', :text => 'siteserver'   },
    { :url => '/SiteFiles/bairong/TextEditor/ckeditor/plugins/nextpage/plugin.js', :text => 'siteserver'   },
    { :url => '/SiteFiles/bairong/TextEditor/eWebEditor/language/zh-cn.js', :text => 'siteserver'   },
    { :url => '/SiteFiles/bairong/TextEditor/eWebEditor/style/coolblue.js', :text => 'siteserver'   },
    { :url => '/SiteServer/CMS/vssver2.scc', :text => 'siteserver'   },
    { :url => '/SiteServer/Inc/html_head.inc', :text => 'siteserver'   },
    { :url => '/SiteServer/Installer/EULA.html', :text => 'siteserver'   },
    { :url => '/SiteServer/Installer/SqlScripts/liveserver.sql', :text => 'siteserver'   },
    { :url => '/SiteServer/Installer/readme/problem/1.html', :text => 'siteserver'   },
    { :url => '/SiteServer/Services/AdministratorService.asmx', :md5 => 'b44557ebcbe60ddd358e8726778d68c1'   },
    { :url => '/SiteServer/Services/AdministratorService.asmx', :text => 'siteserver'   },
    { :url => '/SiteServer/Themes/Language/en.xml', :text => 'siteserver'   },
    { :url => '/SiteServer/Themes/Skins/Skin-DirectoryTree.ascx', :text => 'siteserver'   },
    { :url => '/SiteServer/UserCenter/Skins/Skin-Footer.ascx', :text => 'siteserver'   },
    { :url => '/UserCenter/Inc/script.js', :text => 'siteserver'   },
    { :url => '/Web.config', :text => 'siteserver'   },
    { :url => '/robots.txt', :md5 => 'daae653583650582032c5c258faa7d8a'   },
    { :url => '/robots.txt', :text => 'siteserver'   },
    { :url => '/siteserver/pic/company/logo.gif', :md5 => 'ecd5a74dda8f311d8ab3c16ed263dcc8'   }
]
end