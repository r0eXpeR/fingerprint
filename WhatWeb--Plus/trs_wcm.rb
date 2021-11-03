Plugin.define do
    name "trs_wcm" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => '/wcm" target="_blank">管理'   },
    { :text => '/wcm" target="_blank">网站管理'   },
    { :text => '/wcm/app/js'   },
    { :text => '0;URL=/wcm'   },
    { :text => 'window.location.href = "/wcm";'   },
    { :url => '/common/js/com.tmd.base/common.js', :text => 'ajaxFormSubmit'   },
    { :url => '/wcm/app/js/source/wcmlib/WCMConstants.js', :text => 'WCM_VERSION'   }
]
end