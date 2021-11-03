Plugin.define do
name "MochiWeb"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "MochiWeb is an Erlang library for building lightweight HTTP servers. WebMachine is a REST-based system for building web applications on top of the bit-pushing and HTTP syntax-management provided by MochiWeb, and provides a simple and clean way to connect that to your application's behavior. - Homepages: https://github.com/mochi/mochiweb - https://bitbucket.org/justin/webmachine/wiki/Home"
matches [
    {:module=>/^MochiWeb.*(WebMachine\/[^\s]+)/, :search=>"headers[server]"},
    {:regexp=>/^MochiWeb/, :search=>"headers[server]"},
    {:search=>'headers[server]', :regexp=>/MochiWeb(?:.([\d.]+))?/,:offset=>1  },
    {:version=>/^MochiWeb\/([^\s]+)/, :search=>"headers[server]"}
]
end
