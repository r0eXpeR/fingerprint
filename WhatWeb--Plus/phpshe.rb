Plugin.define do
    name "phpshe" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'Powered by phpshe'   },
    { :text => 'content="phpshe'   },
    { :url => '/include/js/formcheck.js', :text => 'phpshe'   },
    { :url => '/template/default/admin/images/btn.gif', :md5 => 'd9502f7f7ee74153fec0e8c196b1e647'   }
]
end