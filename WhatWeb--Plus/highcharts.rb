Plugin.define do
    name "highcharts" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :regexp => /<svg[^>]*><desc>Created with Highcharts ([\d.]*)/  },
    { :regexp => /highcharts.*\.js/, :search => 'body'  }
]
end