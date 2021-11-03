Plugin.define do
    name "bluecms" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'bcms_plugin'   },
    { :text => 'power by bcms'   },
    { :url => '/templates/default/css/index.htm', :text => 'BlueCMS'   },
    { :url => '/templates/default/images/menu_bg.gif', :md5 => 'fd27da1bc4aaf63e10b457c42d015380'   },
    { :url => '/templates/default/images/more.gif', :md5 => 'c045ca2b7354e33ef5d4abe4c8d71683'   }
]
end