Plugin.define do
    name "microsoft_word" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /(?:<html [^>]*xmlns:w="urn:schemas-microsoft-com:office:word"|<w:WordDocument>|<div [^>]*class="?WordSection1[" >]|<style[^>]*>[^>]*@page WordSection1)/  },
    { :search => 'body', :regexp => /^Word\./  },
    {:offset => 1, :search => 'body', :regexp => /Microsoft Word( [\d.]+)?/  }
]
end