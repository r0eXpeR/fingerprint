Plugin.define do
  name "Apache-Flink"
  authors [
              "Juanan Pereira", 

          ]
  version "0.1"
  description "Apache Flink is an open-source, unified stream-processing and batch-processing framework developed by the Apache Software Foundation"
  website "https://flink.apache.org/"
  dorks [
            intitle:"Apache Flink Web Dashboard",
        ]
  matches [
              {	:name=>"Apache Flink in title",
                 :regexp=>/<title>Apache Flink Web Dashboard<\/title>/},
              { :name=>"Flink logo", :url=>"/images/flink-logo.png"},
              { :url=>'/overview', :version=>/"flink-version":"([^"]+)"/ } ,
          ]
  aggressive do
    target = URI.join(@base_uri.to_s,"/config").to_s
    info = []
    begin
      status, _, _, body, _ = open_target(target)
      if status == 200
        v = body.scan(/"flink-version":"([^"]+)"/)[0]
        unless v.nil?
          info <<  {:name=>"Flink version", :certainty=>100, :version=>v}
        end
      end
    rescue
    end
    info
  end
end
