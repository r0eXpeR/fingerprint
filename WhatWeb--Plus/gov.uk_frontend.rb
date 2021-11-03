Plugin.define do
    name "gov.uk_frontend" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :certainty => 10, :regexp => /<a[^>]+govuk-link/  },
    { :regexp => /<body[^>]+govuk-template__body/, :certainty => 80  },
    {:offset => 1, :regexp => /<link[^>]* href=[^>]*?govuk-frontend(?:[^>]*?([0-9a-fA-F]{7,40}|[\d]+(?:.[\d]+(?:.[\d]+)?)?)|)[^>]*?(?:\.min)?\.css/  },
    {:offset => 1, :regexp => /govuk-frontend(?:[^>]*?([0-9a-fA-F]{7,40}|[\d]+(?:.[\d]+(?:.[\d]+)?)?)|)[^>]*?(?:\.min)?\.js/, :search => 'body'  }
]
end