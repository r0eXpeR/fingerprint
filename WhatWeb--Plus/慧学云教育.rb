Plugin.define do
    name "慧学云教育" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'SchoolCopyRight'   },
    { :text => 'ctl00_ContentPlaceHolder1_dltTopVideos'   }
]
end