Plugin.define do
name "SmarterMail"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "SmarterMail delivers Exchange-level email server software features for a fraction of the cost. With lower hardware requirements, superior stability and reduced maintenance costs, SmarterMail has significantly lower Total Cost of Ownership (TCO) and is the best-in-class Microsoft Exchange alternative for businesses and hosting companies."
website "http://www.smartertools.com/smartermail/mail-server-software.aspx"
matches [
{ :string=>/<a href='http:\/\/www.smartertools.com\/smartermail\/mail-server-software.aspx' target='_blank'>SmarterMail (Enterprise|Professional|Free|FREE) ([\d\.]+)<\/a>( |&nbsp;)\|( |&nbsp;)<a href='http:\/\/www.smartertools.com\/smartermail\/mail-server-software.aspx' target='_blank'>(Windows Mail Server|Email Server Software|Mail Server Software)<\/a>/ },
{ :version=>/<a href='http:\/\/www.smartertools.com\/smartermail\/mail-server-software.aspx' target='_blank'>SmarterMail (Enterprise|Professional|Free|FREE) ([\d\.]+)<\/a>( |&nbsp;)\|( |&nbsp;)<a href='http:\/\/www.smartertools.com\/smartermail\/mail-server-software.aspx' target='_blank'>(Windows Mail Server|Email Server Software|Mail Server Software)<\/a>/, :offset=>1 },
{ :string=>/										<td class="?bar1inner"?>SmarterMail (Enterprise|Professional|Free|FREE) Edition ([\d\.]+)<\/td>/ },
{ :version=>/										<td class="?bar1inner"?>SmarterMail (Enterprise|Professional|Free|FREE) Edition ([\d\.]+)<\/td>/, :offset=>1 },
{ :text=>"<title>Login - SmarterMail</title>" },
]
end
