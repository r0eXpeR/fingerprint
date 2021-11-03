Plugin.define do
    name "gsap" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /TweenMax(?:\.min)?\.js/  }
]
end