Plugin.define do
    name "invenio" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :regexp => /(?:Powered by|System)\s+(?:CERN )?<a (?:class="footer" )?href="http:..(?:cdsware\.cern\.ch(?:.invenio)?|invenio-software\.org|cern\.ch.invenio)(?:.)?">(?:CDS )?Invenio<.a>\s*v?([\d\.]+)?/  }
]
end