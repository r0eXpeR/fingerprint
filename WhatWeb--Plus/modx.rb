Plugin.define do
    name "modx" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :certainty => 20, :regexp => /<(?:link|script)[^>]+assets.snippets./  },
    { :certainty => 20, :regexp => /<form[^>]+id="ajaxSearch_form/  },
    { :regexp => /<a[^>]+>Powered by MODX<.a>/  },
    { :regexp => /<input[^>]+id="ajaxSearch_input/, :certainty => 20  },
    { :search => 'headers[x-powered-by]', :regexp => /^MODX/  },
    {:offset => 1, :search => 'body', :regexp => /MODX[^\d.]*([\d.]+)?/  }
]
end