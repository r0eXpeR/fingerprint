Plugin.define do
    name "bugtracker.net" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => '<div class=logo>BugTracker.NET'   },
    { :text => 'href="btnet.css'   },
    { :text => 'valign=middle><a href=http://ifdefined.com/bugtrackernet.html>'   }
]
end