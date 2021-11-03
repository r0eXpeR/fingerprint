Plugin.define do
    name "liangjing(良精)" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :url => '/', :text => 'liangjing'   },
    { :url => '/Ch/Memberphoto.Asp', :text => 'liangjing'   },
    { :url => '/En/Foot.Asp', :text => 'liangjing'   },
    { :url => '/Enrss.xml', :text => 'liangjing'   },
    { :url => '/Html_skin30/enabout.html', :text => 'liangjing'   }
]
end