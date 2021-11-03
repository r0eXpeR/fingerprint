Plugin.define do
    name "ezoffice" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => '/defaultroot/js/cookie.js'   },
    { :text => 'EZOFFICEUSERNAME'   },
    { :text => 'Wanhu ezOFFICE'   },
    { :text => 'whirRootPath'   },
    { :text => '万户OA'   }
]
end