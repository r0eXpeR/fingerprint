Plugin.define do
    name "govcms" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :regexp => /Drupal ([\d]+) \(http:\.\.drupal\.org\) \+ govCMS/, :search => 'body'  }
]
end