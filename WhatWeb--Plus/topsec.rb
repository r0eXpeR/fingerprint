Plugin.define do
    name "topsec" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :url => '/js/exploerscss.js', :text => '<LINK REL=stylesheet HREF="/site/css/main.css"TYPE="text/css">'   },
    { :url => '/js/guicheck.js', :text => 'else if((startIP[0] == endIP[0])&& ( parseInt(startIP[1]) >  parseInt(endIP[1])))'   },
    { :url => '/js/xblib.js', :text => '( obj, evType, fn, useCapture, Nav4EventCode, oldHandler )'   }
]
end