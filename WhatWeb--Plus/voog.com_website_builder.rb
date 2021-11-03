Plugin.define do
    name "voog.com_website_builder" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<script [^>]*src="[^"]*voog\.com.tracker\.js/  },
    { :regexp => /voog\.com.tracker\.js/, :search => 'body'  }
]
end