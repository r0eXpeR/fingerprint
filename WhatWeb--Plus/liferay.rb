Plugin.define do
name "Liferay"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.3"
description "Liferay Portal is an enterprise web platform for building business solutions that deliver immediate results and long-term value."
website "http://www.liferay.com/"
dorks [
'"Powered by Liferay Portal"'
]
matches [
    {:regexp=>/[a-z\s]+([\d.]+)/,:offset=>1, :search=>'headers[liferay-portal]'},
    {:search=>"headers", :text=>'Liferay-Portal'},
    {:search=>"headers[liferay-portal]", :string=>/^Liferay Portal (.+ Edition) (.+)$/},
    {:search=>"headers[liferay-portal]", :version=>/^Liferay Portal (.+ Edition) (.+)$/, :offset=>1},
    {:search=>"headers[set-cookie]", :regexp=>/GUEST_LANGUAGE_ID=[a-z]{2,3}_[A-Z]{2,3};/},
    {:text=>"<![CDATA[*/Liferay.Util.addInputFocus();/*]]>*"},
    {:text=>"Powered by Liferay Portal", :certainty=>10}
]
end
