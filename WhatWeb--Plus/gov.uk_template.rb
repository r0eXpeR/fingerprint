Plugin.define do
    name "gov.uk_template" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<link[^>]+govuk-template-ie6[^>"]+css/  },
    { :regexp => /<link[^>]+govuk-template-ie7[^>"]+css/  },
    { :regexp => /<link[^>]+govuk-template-ie8[^>"]+css/  },
    { :regexp => /<link[^>]+govuk-template-print[^>"]+css/  },
    { :regexp => /<link[^>]+govuk-template[^>"]+css/  },
    { :regexp => /govuk-template\.js/, :search => 'body'  }
]
end