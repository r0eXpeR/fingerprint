Plugin.define do
    name "atutor_elearning" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'ATutorID'   },
    { :text => 'ATutor.course'   },
    { :text => 'content="ATutor'   }
]
end