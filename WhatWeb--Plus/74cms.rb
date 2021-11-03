Plugin.define do
    name "74cms" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'Powered by <a href="http://www.74cms.com/'   },
    { :text => 'content="74cms.com'   },
    { :text => 'content="骑士CMS'   },
    { :text => 'selectjobscategory")'   },
    { :url => '/admin/images/admin_submit.jpg', :md5 => '47f025f42749b4c802cbd00cc3b57c74'   },
    { :url => '/admin/images/admin_submit.jpg', :md5 => '74c085725f90a5ae8a6cd1d92bd872f2'   },
    { :url => '/data/setmealimg/3.gif', :md5 => '1aeaef8d8cc6c46980ee15deb9a50cc9'   },
    { :url => '/data/setmealimg/3.gif', :md5 => '1fbbfc27216faf3cb03735fd0e2dba75'   },
    { :url => '/include/payment/logo/remittance.gif', :md5 => '02dc0df8b6a9a5dc41e0461c58fad372'   },
    { :url => '/include/payment/logo/remittance.gif', :md5 => '47484accac84e2d2878377f77fa43af4'   },
    { :url => '/install/templates/images/link_bg.gif', :md5 => '0a2972286de60087205b5bb3217fbdc5'   }
]
end