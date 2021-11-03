Plugin.define do
name "WebSocket"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "WebSocket is a technology providing for bi-directional, full-duplex communications channels, over a single Transmission Control Protocol (TCP) socket. - More info: https://secure.wikimedia.org/wikipedia/en/wiki/WebSocket - Protocol: https://tools.ietf.org/html/draft-ietf-hybi-thewebsocketprotocol-12"
matches [
    {:regexp=>/<(?:link|a)[^>]+href=["']wss?:../},
    {:regexp=>/<link[^>]+rel=["']web-socket["']/},
    {:search=>"headers[sec-websocket-location]", :string=>/^(wss?:\/\/.+)/},
    {:search=>"headers[sec-websocket-protocol]", :module=>/(.+)/},
    {:search=>"headers[sec-websocket-version-server]", :version=>/(.+)/},
    {:search=>"headers[upgrade]", :regexp=>/^WebSocket$/i},
    {:search=>"headers[websocket-location]", :string=>/^(wss?:\/\/.+)/}
]
end
