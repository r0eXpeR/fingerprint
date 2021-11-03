Plugin.define do
    name "pigcms" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'X-Powered-By: PigCms.com'   },
    { :url => '/tpl/home/pigcms/common/js/page.js', :md5 => 'e8322fde1ae0c9edd44cdb29578d863f'   }
]
end