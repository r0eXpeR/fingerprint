Plugin.define do
name "vcard"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "vCard is a file format standard for electronic business cards. This plugin identifies vcards and extracts the vcard version, name, full name and organization details."
passive do
	m=[]
	if @body =~ /^BEGIN:VCARD[\s]*$/i and @body =~ /^END:VCARD/i
		m << { :version=>@body.scan(/^BEGIN:VCARD[\s]*$.*^VERSION:([\d\.]{1,3})[\s]*$.*^END:VCARD/im).flatten } if @body =~ /^BEGIN:VCARD[\s]*$.*^VERSION:([\d\.]{1,3})[\s]*$.*^END:VCARD/im
		m << { :string=>"Name:"+@body.scan(/^BEGIN:VCARD[\s]*$.*^N:([^\r^\n]+)[\s]*$.*^END:VCARD/im).flatten } if @body =~ /^BEGIN:VCARD[\s]*$.*^N:([^\r^\n]+)[\s]*$.*^END:VCARD/im
		m << { :string=>"Full Name:"+@body.scan(/^BEGIN:VCARD[\s]*$.*^FN:([^\r^\n]+)[\s]*$.*^END:VCARD/im).flatten } if @body =~ /^BEGIN:VCARD[\s]*$.*^FN:([^\r^\n]+)[\s]*$.*^END:VCARD/im
		m << { :string=>"Organization:"+@body.scan(/^BEGIN:VCARD[\s]*$.*^ORG:([^\r^\n]+)[\s]*$.*^END:VCARD/im).flatten } if @body =~ /^BEGIN:VCARD[\s]*$.*^ORG:([^\r^\n]+)[\s]*$.*^END:VCARD/im
		m << { :string=>"Address:"+@body.scan(/^BEGIN:VCARD[\s]*$.*^ADR:([^\r^\n]+)[\s]*$.*^END:VCARD/im).flatten } if @body =~ /^BEGIN:VCARD[\s]*$.*^ADR:([^\r^\n]+)[\s]*$.*^END:VCARD/im
	end
	m
end
end
