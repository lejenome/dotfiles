<?xml version='1.0'?>
<sch:schema
       xml:lang="en"
       xmlns:sch="http://www.ascc.net/xml/schematron" >
<sch:title>Schema for XLinks (CR 3 July, 2000)</sch:title>
<sch:ns prefix='xlink' uri='http://www.w3.org/1999/xlink'/>
<!--
<sch:p>This schema validates W3C Xlinks.
   v.0.1 2000-10-27 Rick Jelliffe</sch:p>
-->


 
<sch:pattern see='http://www.w3.org/TR/xlink/'
  name="Basic types of XLinks">
 <sch:rule context="*[@xlink:type]">
   <sch:assert test="@xlink:type='simple' or @xlink:type='extended' or
  @xlink:type='locator' or @xlink:type='arc' or @xlink:type='resource' or
  @xlink:type='title' or @xlink:type='none' "
   >In an XLink, the xlink:type attribute must have one of the
   following values: simple, extended, locator, arc, resource, title or none.
   </sch:assert>
 </sch:rule>

</sch:pattern>
<sch:pattern see='http://www.w3.org/TR/xlink/'
  name="Occurrence rules for extended XLinks">
 <sch:rule context="*[@xlink:type='locator']">
   <sch:assert test="@xlink:href"
   >An XLink locator must have an href attribute. 
   This attribute is pointer to a resource.</sch:assert>

   <sch:assert test="parent::*[@xlink:type='extended']"
   >An XLink locator must be part of an extended XLink.
   The parent element must have an attribute xlink:type
   with a value 'extended'.</sch:assert>

 </sch:rule>

 <sch:rule context="*[@xlink:type='arc']">
   <sch:assert test="parent::*[@xlink:type='extended']"
   >An XLink locator must be part of an extended XLink.
   The parent element must have an attribute xlink:type
   with a value 'extended'.</sch:assert>

   <!-- Courtesy Oliver Becker -->
   <sch:assert test="
    count(parent::*/*[@xlink:type='arc' and 
                        not(@xlink:to!=current()/@xlink:to) and
                        not(@xlink:from!=current()/@xlink:from)]) = 1">
   >An extended XLink cannot have multiple arcs with the same values for xlink:to and xml:from. Each arc must be unique.
   </sch:assert>
   
 </sch:rule>

 <sch:rule context="*[@xlink:type='resource']">
   <sch:assert test="parent::*[@xlink:type='extended']"
   >An XLink locator must be part of an extended XLink.
   The parent element must have an attribute xlink:type
   with a value 'extended'.</sch:assert>
 </sch:rule>

 <sch:rule context="*[@xlink:type='title']">
   <sch:assert test="parent::*[@xlink:type='extended']
                  or parent::*[@xlink:type='locator']
                  or parent::*[@xlink:type='arc']"
   >An XLink locator must be part of an extended XLink.
   The parent element must have an attribute xlink:type
   with a value 'extended' or 'locator' or 'arc'.</sch:assert>
 </sch:rule>

</sch:pattern>

<sch:pattern see='http://www.w3.org/TR/xlink/'
  name="Rules for xlink:href">
 
 <sch:rule context="*[@xlink:href]">
   <sch:assert test="@xlink:type='simple' or @xlink:type='locator'"
   >The attribute xlink:href can only appear on an Xlink element. 
   The XLink element must have the attribute xlink:type with the value
   "simple" or "locator".</sch:assert>

   <sch:report test="string-length(normalize-space(@xlink:href)) = 0"
    role="advise" >If locator attribute xlink:href has no value,
    the current document itself is the resource being being
    specified.</sch:report>
 </sch:rule>

</sch:pattern>

<sch:pattern see='http://www.w3.org/TR/xlink/'
  name="Rules for xlink:role">
 
 <sch:rule context="*[@xlink:role]">
   <sch:assert test="@xlink:type='simple' 
	or @xlink:type='extended' or @xlink:type='locator' or @xlink:type='resource'"
   >The attribute xlink:role can only appear on an Xlink element. 
   The XLink element must have the attribute xlink:type with the value
   "simple", "extended", "locator" or "resource".</sch:assert>

   <sch:assert test="string-length(normalize-space(@xlink:role)) &gt; 0" role="advise"
    >The attribute xlink:role should have a value.</sch:assert>
 </sch:rule>

</sch:pattern>

<sch:pattern see='http://www.w3.org/TR/xlink/'
  name="Rules for xlink:arcrole">
 
 <sch:rule context="*[@xlink:arcrole]">
   <sch:assert test="@xlink:type='simple'  or @xlink:type='arc'"
   >The attribute xlink:arcrole can only appear on an Xlink element. 
   The XLink element must have the attribute xlink:type with the value
   "simple" or "arc".</sch:assert>

   <sch:assert test="string-length(normalize-space(@xlink:arcrole)) &gt; 0" role="advise"
    >The attribute xlink:arcrole should have a value.</sch:assert>
  </sch:rule>
  
</sch:pattern>

<sch:pattern see='http://www.w3.org/TR/xlink/'
  name="Rules for xlink:title">
 
 <sch:rule context="*[@xlink:title]">
   <sch:assert test="@xlink:type='simple'  or @xlink:type='extended' 
   or @xlink:type='locator' or @xlink:type='arc' or @xlink:type='resource'"
   >The attribute xlink:title can only appear on an Xlink element. 
   The XLink element must have the attribute xlink:type with the value
   "simple", "extended", "locator", "arc" or "resource".</sch:assert>

   <sch:assert test="string-length(normalize-space(@xlink:title)) &gt; 0" role="advise"
    >The attribute xlink:title should have a value.</sch:assert>
 </sch:rule>

</sch:pattern>

<sch:pattern see='http://www.w3.org/TR/xlink/'
  name="Rules for xlink:show">
 
 <sch:rule context="*[@xlink:show]">
   <sch:assert test="@xlink:type='simple'  or @xlink:type='arc'"
   >The attribute xlink:show can only appear on an Xlink element. 
   The XLink element must have the attribute xlink:type with the value
   "simple" or "arc".</sch:assert>

   <sch:assert test="string-length(normalize-space(@xlink:show)) &gt; 0" role="advise"
    >The attribute xlink:show should have a value.</sch:assert>
  
   <sch:assert test="@xlink:show='new' or @xlink:show='replace'
      or @xlink:show='embed' or @xlink:show='other' or @xlink:show='none'"
   >The xlink:show attribute must be one of "embed", "replace", "new", "other" or "none".</sch:assert>
 </sch:rule>

</sch:pattern>

<sch:pattern see='http://www.w3.org/TR/xlink/'
  name="Rules for xlink:actuate">
 
 <sch:rule context="*[@xlink:actuate]">
   <sch:assert test="@xlink:type='simple' or @xlink:type='arc' "
   >The attribute xlink:actuate can only appear on an Xlink element. 
   The XLink element must have the attribute xlink:type with the value
   "simple" or "arc".</sch:assert>

   <sch:assert test="string-length(normalize-space(@xlink:actuate)) &gt; 0" role="advise"
    >The attribute xlink:should have a value.</sch:assert>

   <sch:assert test="@xlink:actuate='onLoad' or @xlink:actuate='onRequest'
      or @xlink:actuate='other' or @xlink:actuate='none' "
   >The xlink:actuate attribute must be one of "onLoad", "onRequest", "other" or "none"</sch:assert>
 </sch:rule>

</sch:pattern>

<sch:pattern see='http://www.w3.org/TR/xlink/'
  name="Rules for xlink:label">
 
 <sch:rule context="*[@xlink:label]">
   <sch:assert test="@xlink:type='locator'  or @xlink:type='resource'"
   >The attribute xlink:label can only appear on an Xlink element. 
   The XLink element must have the attribute xlink:type with the value
   "locator" or "resource".</sch:assert>

   <sch:assert test="string-length(normalize-space(@xlink:label)) &gt; 0" 
    >The attribute xlink:label must have a value.</sch:assert>

   <sch:report test="contains(normalize-space(@xlink:label), ':')"
    >The value of the xlink:lable attribute must be a name
    with no namespace prefix.</sch:report>

 </sch:rule>

</sch:pattern>

<sch:pattern see='http://www.w3.org/TR/xlink/'
  name="Rules for xlink:from">
 
 <sch:rule context="*[@xlink:from]">
   <sch:assert test="@xlink:type='arc' "
   >The attribute xlink:from can only appear on an Xlink element. 
   The XLink element must have the attribute xlink:type with the value
   "arc".</sch:assert>

   <sch:assert test="string-length(normalize-space(@xlink:from)) &gt; 0" 
    >The attribute xlink:from must have a value.</sch:assert>

   <sch:report test="contains(normalize-space(@xlink:from), ':')"
    >The value of the xlink:from attribute must be a name
    with no namespace prefix.</sch:report>


   <sch:assert test=
      "parent::*/*[@xlink:type='locator'][@xlink:label=current()/@xlink:from]
       or parent::*/*[@xlink:type='resource'][@xlink:label=current()/@xlink:from]"
    >When an extended XLink element contains an arc element
      with an xlink:from value specified,
     then the extended XLink element should also contain a resource or
     locator element which has an xml:label attribute with the same
     value. </sch:assert>


 </sch:rule>

</sch:pattern>

<sch:pattern see='http://www.w3.org/TR/xlink/'
  name="Rules for xlink:to">
 
 <sch:rule context="*[@xlink:to]">
   <sch:assert test="@xlink:type='arc' "
   >The attribute xlink:to can only appear on an Xlink element. 
   The XLink element must have the attribute xlink:type with the value
   "arc".</sch:assert>

   <sch:assert test="string-length(normalize-space(@xlink:to)) &gt; 0" 
    >The attribute xlink:to must have a value.</sch:assert>

   <sch:report test="contains(normalize-space(@xlink:to), ':')"
    >The value of the xlink:to attribute must be a name
    with no namespace prefix.</sch:report>

   <sch:assert test=
      "parent::*/*[@xlink:type='locator'][@xlink:label=current()/@xlink:to]
       or parent::*/*[@xlink:type='resource'][@xlink:label=current()/@xlink:to]"
    >When an extended XLink element contains an arc element
      with an xlink:to value specified,
     then the extended XLink element should also contain a resource or
     locator element which has an xml:label attribute with the same
     value. </sch:assert>

 </sch:rule>

</sch:pattern>

<sch:pattern see='http://www.w3.org/TR/xlink/'
  name="Rules for Linkbases">
 <sch:rule 
    context="*[@xlink:arcrole='http://www.w3.org/1999/xlink/properties/linkbase']">
  
   <!-- This will work whether the application retrieves the XLink fragment
   or the whole document -->
   <sch:assert test="document(@xlink:href)"
   >An XLink Linkbase must be an XML Document"</sch:assert>

   <!-- Not a very detailed rule -->
   <sch:assert test="document(@xlink:href)//*[@xlink:type]"
   >An XLink Linkbase must contain an XLink"</sch:assert>

   <sch:assert role="advise"
      test="document(@xlink:href)//*[@xlink:type='arc'][@xlink:show!='none']"
   >An XLink processor will treat an arc in an XLink Linkbase
    as if the value of xlink:show were 'none'.</sch:assert>

   <sch:assert role="advise"
      test="document(@xlink:href)//*[@xlink:type='arc'][@xlink:actuate!='onLoad']"
   >An XLink processor will treat an arc in an XLink Linkbase
    as if the value of xlink:actuate were 'onLoad'.</sch:assert>
     
 </sch:rule>
   
</sch:pattern>

</sch:schema>

