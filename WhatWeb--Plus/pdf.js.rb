Plugin.define do
    name "pdf.js" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<\.div>\s*<!-- outerContainer -->\s*<div\s*id="printContainer"><\.div>/  }
]
end