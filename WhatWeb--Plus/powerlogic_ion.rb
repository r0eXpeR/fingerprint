Plugin.define do
    name "powerlogic_ion" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'Allegro-Software-RomPager'   },
    { :text => 'PowerLogic'   }
]
end