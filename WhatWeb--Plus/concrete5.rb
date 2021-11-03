Plugin.define do
name "Concrete5"
authors [
  "Andrew Horton",

]
    version "0.3"
    description "Concrete5 is an OpenSource CMS written in PHP."
    website "www.concrete5.org"
matches [
    {:name=>"CONCRETE5 cookie", :search=>"headers[set-cookie]", :regexp=>/^CONCRETE5=/i },
    {:name=>"JavaScript", :regexp=>/\bvar CCM_DISPATCHER_FILENAME ?=/},
    {:regexp=>/^concrete5 - ([\d.]+)$/,:offset=>1, :search=>'body'},
    {:search=>"headers", :text=>'CONCRETE5'},
    {:search=>'body', :regexp=>/.concrete.js./},
    {:text=>'CCM_DISPATCHER_FILENAME'},
    {:text=>'generator" content="ezCMS'},
    {:version=>%r{<meta name="generator" content="concrete5 - ([0-9\.a-z]+)"}, :name=>"meta generator tag"}
]
    aggressive do
        m = []
        versions = Hash[
                            "5.0.0" =>

                            [["concrete/js/ccm.base.js",
                              "b1265bd8de382593df63a7cbbc0924ac"]],

                            "5.1.1" =>

                            [["concrete/js/ccm.base.js",
                              "a15225d4bf5edfac0a077b812b26566c"]],

                            "5.2.1" =>

                            [["concrete/js/ccm.base.js",
                              "feef7ebd3f587949226d151219469f35"]],

                            "5.3.1.1" =>

                            [["concrete/js/ccm.base.js",
                              "a699a56f96307980957911d47656deaa"]],

                            "5.3.3" =>

                            [["concrete/css/ccm.dashboard.css",
                              "3ef4dc31bbebf8369a15b01a0a8dc85c"]],

                            "5.3.3.1" =>

                            [["concrete/css/ccm.dashboard.css",
                              "c2791809afcd316519ed816477fa75df"]],

                            "5.4.0.5" =>

                            [["concrete/js/ccm.base.js",
                              "20539da0d72b960ab5c6dfed45708008"]],

                            "5.4.1" =>

                            [["concrete/js/ccm.filemanager.js",
                              "c6acbceb9c0fbd93645b324a4ff37dda"]],

                            "5.4.1.1" =>

                            [["concrete/js/ccm.filemanager.js",
                              "55ffcbf9ee32d7f6cf5037bf056db9ed"]],

                            "5.4.2" =>

                            [["concrete/js/ccm.filemanager.js",
                              "c31d62d11449ec2210f8848acb11da20"]],

                            "5.4.2.1" =>

                            [["concrete/css/jquery.ui.css",
                              "5b6d0e05bf74b17a705a6012d18a62df"]],

                            "5.4.2.2" =>

                            [["concrete/js/ccm.base.js",
                              "b77ccc7914bbdbf4df5b4ee118d52e01"]],

                            "5.5.0" =>

                            [["concrete/js/ccm_app/filemanager.js",
                              "55523a1a34d16db9877e41dcd225a67e"]],

                            "5.5.1" =>

                            [["concrete/js/ccm_app/filemanager.js",
                              "dd8ab519bf3cde1a40e3f41343ebe5a8"]],

                            "5.5.2" =>

                            [["concrete/js/ccm_app/filemanager.js",
                              "eef9f44b0c9c37b94d981e1c6c8703ac"]],

                            "5.5.2.1" =>

                            [["concrete/js/ccm_app/filemanager.js",
                              "5c672c61483853eadfffbd6559fc06c0"]]

                        ]
        v = Version.new("Concrete5", versions, @base_uri)
        version = v.matches_format
        unless version.empty?
            version.each { |ver|
                m << {:name => "md5 sums of files", :version => version}
            }
        end
        m
    end
end
