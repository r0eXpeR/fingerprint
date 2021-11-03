Plugin.define do
    name "xdcms" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :url => '/system/templates/xdcms/index.html', :text => 'xdcms/footer.html'   },
    { :url => '/uploadfile/nopic.gif', :md5 => '8167e1359daab0a25106bba9fd606d94'   }
]
end