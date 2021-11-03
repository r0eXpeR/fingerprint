Plugin.define do
    name "ltpower" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :url => '/Content/css/common.css', :text => 'btn{display:inline-block; height:28px;'   },
    { :url => '/Content/images/warning.png', :md5 => '15faac1c7ed012854aec8f3973f2d481'   }
]
end