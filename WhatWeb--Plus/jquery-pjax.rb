Plugin.define do
    name "jquery-pjax" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<div[^>]+data-pjax-container/  },
    { :regexp => /jquery[.-]pjax(?:-([\d.]))?(?:\.min)?\.js(?:\?ver=([\d.]+))?/,:offset => 1, :search => 'body'  }
]
end