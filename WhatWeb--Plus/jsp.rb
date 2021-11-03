Plugin.define do
    name "jsp" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'JBoss'   },
    { :search => "headers", :text => 'JSESSIONID'   },
    { :search => "headers", :text => 'Servlet'   },
    { :search => "headers", :text => 'jsp'   }
]
end