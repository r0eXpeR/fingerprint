Plugin.define do
    name "hfs" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'HFS_SID_='     },
    { :search => "headers", :text => 'Server: FHFS'     },
    { :search => "headers", :text => 'Server: HFS'     },
    { :text => 'HFS'     },
    { :text => 'href=\http://www.rejetto.com/hfs/'     },
    { :text => 'href=\http://www.rejetto.com/hfs/'    }
]
end