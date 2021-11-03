Plugin.define do
    name "swiper_slider" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<[^>]+=swiper-container/  },
    { :regexp => /swiper(?:\.min)?\.js/, :search => 'body'  }
]
end