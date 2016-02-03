require 'net/http'

path = "OpenLDBWS/ldb7.asmx"

xml = "<soapenv:Envelope xmlns:soapenv='http://schemas.xmlsoap.org/soap/envelope/' xmlns:typ='http://thalesgroup.com/RTTI/2013-11-28/Token/types' xmlns:ldb='http://thalesgroup.com/RTTI/2015-05-14/ldb/'>
  <soapenv:Header>
     <typ:AccessToken>
        <typ:TokenValue>e841e6e4-acfb-40bf-8879-53a69322adaa</typ:TokenValue>
     </typ:AccessToken>
  </soapenv:Header>
  <soapenv:Body>
     <ldb:GetDepartureBoardRequest>
        <ldb:numRows>20</ldb:numRows>
        <ldb:crs>CST</ldb:crs>
        <!--Optional:-->
        <ldb:filterCrs>LEW</ldb:filterCrs>
        <!--Optional:-->
        <ldb:filterType>to</ldb:filterType>
        <!--Optional:-->
        <ldb:timeOffset></ldb:timeOffset>
        <!--Optional:-->
        <ldb:timeWindow>30</ldb:timeWindow>
     </ldb:GetDepartureBoardRequest>
  </soapenv:Body>
</soapenv:Envelope>"

def post_xml(path, xml)
 host = "https://lite.realtime.nationalrail.co.uk/"
 http = Net::HTTP.new(host)
 resp = http.post(path, xml, { 'Content-Type' => 'application/soap+xml; charset=utf-8' })
 return resp.body
end

p post_xml(path, xml)
