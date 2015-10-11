<x><![CDATA[
  declare variable $payload as document-node() external;
  declare variable $userId as xs:string external;
  <chkry:users_create xmlns:chkry="http://www.chakray.com/webinar/users">
    <chkry:id>
      {$userId}
    </chkry:id>
    <chkry:firstName>
      {$payload//name/child::text()}
    </chkry:firstName>
    <chkry:lastName>
      {$payload//surname/child::text()}
    </chkry:lastName>
    <chkry:title>
      {$payload//title/child::text()}
    </chkry:title>	
  </chkry:users_create>
]]></x>