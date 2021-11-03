Plugin.define do
    name "amcharts" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /amcharts.*\.js/, :search => 'body'  },
    {:offset => 1, :regexp => /<svg[^>]*><desc>JavaScript chart by amCharts ([\d.]*)/  }
]
end