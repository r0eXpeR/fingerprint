Plugin.define do
    name "panabit" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :url => '/css/common.css', :text => 'x-grid-row-over .x-grid-cell-inner'   },
    { :url => '/img/logo.gif', :md5 => '7f2125bf1ce7f77d4a7e340a8aee0d18'   }
]
end