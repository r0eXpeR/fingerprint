Plugin.define do
    name "cmstop" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => '/css/cmstop-common.css'   },
    { :text => '/js/cmstop-common.js'   },
    { :text => '<a class="poweredby" href="http://www.cmstop.com'   },
    { :text => 'cmstop-list-text.css'   },
    { :url => '/css/content.css', :md5 => '5f34700f83bbe7a419971a3e51a97889'   },
    { :url => '/css/content.css', :md5 => 'a44c633434c6618019056db2ed9b0198'   },
    { :url => '/favicon.ico', :md5 => '5f98a480d7b16e33811df8d5dc520fe5'   },
    { :url => '/favicon.ico', :md5 => 'ecf667c14d3c6f3b0ae4b8b44b1f987a'   },
    { :url => '/img/images/commentLoad.gif', :md5 => '6afd13d396fb000b7a9c1fb488741268'   },
    { :url => '/install/images/bg-cmstop.jpg', :md5 => 'ce3639f044f5b2f53bc9d8ad5d88caae'   }
]
end