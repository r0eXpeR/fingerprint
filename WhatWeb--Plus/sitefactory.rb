Plugin.define do
    name "sitefactory" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :url => '/clientfiles/js/public.js', :text => 'assets'   },
    { :url => '/sitefactory/signon.aspx?ReturnUrl=%2fsitefactory%2fdefault.aspx', :text => 'SiteFactory <span>CMS'   }
]
end