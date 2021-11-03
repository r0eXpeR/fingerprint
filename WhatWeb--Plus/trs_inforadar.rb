Plugin.define do
    name "trs_inforadar" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :url => '/inforadar/jsp/cis4/js/common/CTRSHTMLTr.js', :text => 'TRSHTMLTr_isInvalidElement'   }
]
end