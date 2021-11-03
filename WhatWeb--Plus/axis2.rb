Plugin.define do
    name "axis2" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :url => '/axis2/axis2-admin/login', :text => 'Axis2'   },
    { :url => '/axis2/axis2-web/images/asf-logo.gif', :md5 => '83fa69bb142b2d213d437be46abd64c5'   },
    { :url => '/axis2/axis2-web/images/axis_l.jpg', :md5 => '830fb825643b5996062aba8a78e3bf24'   }
]
end