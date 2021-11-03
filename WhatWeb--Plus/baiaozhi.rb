Plugin.define do
    name "baiaozhi" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :url => '/portal/dbportal/jsutil/form.js', :text => '/dbportal.ajaxcount.do'   },
    { :url => '/portal/dbportal/popup/popupdiv.js', :text => 'mozilla bug'   },
    { :url => '/portal/root/lims_std/images/sybg2.gif', :md5 => '4a5c393a8b509f2eb2932a0560234ce1'   },
    { :url => '/portal/root/lims_std/images/zbg.gif', :md5 => 'd45388002c821a33b982cad8c6f6e7b8'   }
]
end