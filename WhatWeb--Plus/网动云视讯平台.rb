Plugin.define do
    name "网动云视讯平台" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => '/js/roomHeight.js'   },
    { :text => 'Acenter'   },
    { :text => 'meetingShow!show.action'   }
]
end