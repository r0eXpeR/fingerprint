Plugin.define do
name "Simplewire"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Simplewire - Wireless Messaging Network - Simplewire is a premium billing and messaging aggregator. Simplewire's aggregation services provide the most direct and reliable route into each mobile operator's network for the delivery of text-messages, premium content, cross-carrier short-codes, billing transactions and other value-added mobile services."
website "http://www.simplewire.com/"
matches [
	{ :regexp=>/^Simplewire/, :search=>"headers[server]" },
	{ :version=>/^Simplewire\/([^\s]+)$/, :search=>"headers[server]" },
]
end
