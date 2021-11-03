Plugin.define do
    name "rd_station" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /d335luupugsy2\.cloudfront\.net.js.loader-scripts..*-loader\.js/, :search => 'body'  }
]
end