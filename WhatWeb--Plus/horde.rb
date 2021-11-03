Plugin.define do
    name "horde" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'Horde3'   },
    { :search => "headers", :text => 'Set-Cookie: Horde'   },
    { :text => 'IMP: Copyright 2001-2009 The Horde Project'   }
]
end