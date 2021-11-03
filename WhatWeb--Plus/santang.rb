Plugin.define do
    name "santang" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :url => '/js/daydream.js', :text => 'meizzCalendarIframe'   },
    { :url => '/js/public.js', :text => 'DQOpenPage(strv,name,width,height)'   }
]
end