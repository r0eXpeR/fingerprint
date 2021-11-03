Plugin.define do
    name "pkpmbs" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :url => '/pkpmbs/html/css/login.css', :text => 'login p span'   },
    { :url => '/pkpmbs/image/btnbg.gif', :md5 => 'c487f6aeb15ca18dd442910e5925d16d'   },
    { :url => '/pkpmbs/jdmanage/loaddata.js', :text => 'RequestCodeData = function(code,id)'   },
    { :url => '/pkpmbs/manager/js/epass.vbs', :text => 'epsFileOffSet'   }
]
end