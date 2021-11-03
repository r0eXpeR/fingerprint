Plugin.define do
    name "dkcms" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :url => '/js/dkcms.js', :text => 'this.state.shouldvisible'   }
]
end