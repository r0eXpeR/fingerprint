Plugin.define do
    name "gov.uk_elements" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :certainty => 25, :regexp => /<div[^>]+phase-banner-alpha/  },
    { :regexp => /<div[^>]+govuk-box-highlight/, :certainty => 25  },
    { :regexp => /<div[^>]+phase-banner-beta/, :certainty => 25  },
    { :regexp => /<link[^>]+elements-page[^>"]+css/, :certainty => 25  }
]
end