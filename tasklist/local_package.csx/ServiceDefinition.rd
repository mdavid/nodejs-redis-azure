<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="ampfm-nodejs" generation="1" functional="0" release="0" Id="666ae30e-3a96-4c98-9bf3-3c018253b762" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="ampfm-nodejsGroup" generation="1" functional="0" release="0">
      <componentports>
        <inPort name="NodeJsSLCHackFestWebRole:Endpoint1" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/ampfm-nodejs/ampfm-nodejsGroup/LB:NodeJsSLCHackFestWebRole:Endpoint1" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="NodeJsSLCHackFestWebRoleInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/ampfm-nodejs/ampfm-nodejsGroup/MapNodeJsSLCHackFestWebRoleInstances" />
          </maps>
        </aCS>
      </settings>
      <channels>
        <lBChannel name="LB:NodeJsSLCHackFestWebRole:Endpoint1">
          <toPorts>
            <inPortMoniker name="/ampfm-nodejs/ampfm-nodejsGroup/NodeJsSLCHackFestWebRole/Endpoint1" />
          </toPorts>
        </lBChannel>
      </channels>
      <maps>
        <map name="MapNodeJsSLCHackFestWebRoleInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/ampfm-nodejs/ampfm-nodejsGroup/NodeJsSLCHackFestWebRoleInstances" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="NodeJsSLCHackFestWebRole" generation="1" functional="0" release="0" software="C:\Users\M. David Peterson\Projects\nodeslc-hackfest\tasklist\local_package.csx\roles\NodeJsSLCHackFestWebRole" entryPoint="base\x86\WaHostBootstrapper.exe" parameters="base\x86\WaIISHost.exe " memIndex="768" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Endpoint1" protocol="http" portRanges="8080" />
            </componentports>
            <settings>
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;NodeJsSLCHackFestWebRole&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;NodeJsSLCHackFestWebRole&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;r name=&quot;WebRole1&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/ampfm-nodejs/ampfm-nodejsGroup/NodeJsSLCHackFestWebRoleInstances" />
            <sCSPolicyFaultDomainMoniker name="/ampfm-nodejs/ampfm-nodejsGroup/NodeJsSLCHackFestWebRoleFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyFaultDomain name="NodeJsSLCHackFestWebRoleFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyID name="NodeJsSLCHackFestWebRoleInstances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="a3609136-c323-404e-a7ff-6c7a91ff3328" ref="Microsoft.RedDog.Contract\ServiceContract\ampfm-nodejsContract@ServiceDefinition">
      <interfacereferences>
        <interfaceReference Id="85ed2df1-5f0f-4908-a79c-6a1a243b41eb" ref="Microsoft.RedDog.Contract\Interface\NodeJsSLCHackFestWebRole:Endpoint1@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/ampfm-nodejs/ampfm-nodejsGroup/NodeJsSLCHackFestWebRole:Endpoint1" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>