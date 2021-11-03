Plugin.define do
    name "typo3_cms" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<!--
	This website is powered by TYPO3/  },
    { :regexp => /<img[^>]+ src=".?typo3(?:conf|temp)./  },
    { :regexp => /<link[^>]+ href=".?typo3(?:conf|temp)./  },
    { :regexp => /TYPO3\s+(?:CMS\s+)?.*?(?:\s+CMS)?/, :search => 'body'  },
    { :search => 'body', :regexp => /^.?typo3(?:conf|temp)./  }
]
end