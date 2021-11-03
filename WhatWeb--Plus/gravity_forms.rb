Plugin.define do
    name "gravity_forms" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /.wp-content.plugins.gravityforms.js.[^.]+\.js\?ver=([\d.]+)$/,:offset => 1, :search => 'body'  },
    { :regexp => /<div class=(?:"|')[^>]*gform_body/  },
    { :regexp => /<div class=(?:"|')[^>]*gform_wrapper/  },
    { :regexp => /<link [^>]*href=(?:"|')[^>]*wp-content.plugins.gravityforms.css./  },
    { :regexp => /<ul [^>]*class=(?:"|')[^>]*gform_fields/  }
]
end