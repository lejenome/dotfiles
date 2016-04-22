<!-- ...................................................................... -->
<!-- XHTMLMP1.2 Forms Module  .................................................. -->
<!-- file: xhtmlmp12-form-1.mod

     This is a xhtmlmp12-form-1.mod with inputmode attribute.

     (C) 2006 Open Mobile Alliance Ltd.  All Rights Reserved.	

     LEGAL DISCLAIMER

     Use of this document is subject to all of the terms and conditions
     of the Use Agreement located at
	http://www.openmobilealliance.org/UseAgreement.html

    NO REPRESENTATIONS OR WARRANTIES (WHETHER EXPRESS OR IMPLIED) ARE
    MADE BY THE OPEN MOBILE ALLIANCE OR ANY OPEN MOBILE ALLIANCE MEMBER
    OR ITS AFFILIATES REGARDING ANY OF THE IPRS REPRESENTED ON THE OMA
    IPR DECLARATIONS LIST, INCLUDING, BUT NOT LIMITED TO THE ACCURACY,
    COMPLETENESS, VALIDITY OR RELEVANCE OF THE INFORMATION OR WHETHER OR
    NOT SUCH RIGHTS ARE ESSENTIAL OR NON-ESSENTIAL.

    THE OPEN MOBILE ALLIANCE IS NOT LIABLE FOR AND HEREBY DISCLAIMS ANY
    DIRECT, INDIRECT, PUNITIVE, SPECIAL, INCIDENTAL, CONSEQUENTIAL, OR
    EXEMPLARY DAMAGES ARISING OUT OF OR IN CONNECTION WITH THE USE OF
    DOCUMENTS AND THE INFORMATION CONTAINED IN THE DOCUMENTS.
     ....................................................................... -->

<!-- Forms

        form, label, input, select, optgroup, option,
        textarea, fieldset, legend, button

     This module declares markup to provide support for online
     forms, based on the features found in HTML 4 forms.
-->

<!-- declare qualified element type names:
-->
<!ENTITY % form.qname  "form" >
<!ENTITY % label.qname  "label" >
<!ENTITY % input.qname  "input" >
<!ENTITY % select.qname  "select" >
<!ENTITY % optgroup.qname  "optgroup" >
<!ENTITY % option.qname  "option" >
<!ENTITY % textarea.qname  "textarea" >
<!ENTITY % fieldset.qname  "fieldset" >
<!ENTITY % legend.qname  "legend" >
<!ENTITY % button.qname  "button" >

<!-- %BlkNoForm.mix; includes all non-form block elements,
     plus %Misc.class;
-->
<!ENTITY % BlkNoForm.mix
     "%Heading.class;
      | %List.class;
      | %BlkStruct.class;
      %BlkPhras.class;
      %BlkPres.class;
      %Table.class;
      %Block.extra;
      %Misc.class;"
>

<!-- form: Form Element ................................ -->

<!ENTITY % form.element  "INCLUDE" >
<![%form.element;[
<!ENTITY % form.content
     "( %BlkNoForm.mix;
      | %fieldset.qname; )+"
>
<!ELEMENT %form.qname;  %form.content; >
<!-- end of form.element -->]]>

<!ENTITY % form.attlist  "INCLUDE" >
<![%form.attlist;[
<!ATTLIST %form.qname;
      %Common.attrib;
      action       %URI.datatype;           #REQUIRED
      method       ( get | post )           'get'
      enctype      %ContentType.datatype;   'application/x-www-form-urlencoded'
      accept-charset %Charsets.datatype;    #IMPLIED
      accept       %ContentTypes.datatype;  #IMPLIED
>
<!-- end of form.attlist -->]]>

<!-- label: Form Field Label Text ...................... -->

<!-- Each label must not contain more than ONE field
-->

<!ENTITY % label.element  "INCLUDE" >
<![%label.element;[
<!ENTITY % label.content
     "( #PCDATA
      | %input.qname; | %select.qname; | %textarea.qname; | %button.qname;
      | %InlStruct.class;
      %InlPhras.class;
      %I18n.class;
      %InlPres.class;
      %Anchor.class;
      %InlSpecial.class;
      %Inline.extra;
      %Misc.class; )*"
>
<!ELEMENT %label.qname;  %label.content; >
<!-- end of label.element -->]]>

<!ENTITY % label.attlist  "INCLUDE" >
<![%label.attlist;[
<!ATTLIST %label.qname;
      %Common.attrib;
      for          IDREF                    #IMPLIED
      accesskey    %Character.datatype;     #IMPLIED
>
<!-- end of label.attlist -->]]>

<!-- input: Form Control ............................... -->

<!ENTITY % input.element  "INCLUDE" >
<![%input.element;[
<!ENTITY % input.content  "EMPTY" >
<!ELEMENT %input.qname;  %input.content; >
<!-- end of input.element -->]]>

<!ENTITY % input.attlist  "INCLUDE" >
<![%input.attlist;[
<!ENTITY % InputType.class
     "( text | password | checkbox | radio | submit
      | reset | file | hidden | image | button )"
>
<!-- attribute 'name' required for all but submit & reset
-->
<!ATTLIST %input.qname;
      %Common.attrib;
      type         %InputType.class;        'text'
      name         CDATA                    #IMPLIED
      value        CDATA                    #IMPLIED
      checked      ( checked )              #IMPLIED
      disabled     ( disabled )             #IMPLIED
      readonly     ( readonly )             #IMPLIED
      size         %Number.datatype;        #IMPLIED
      maxlength    %Number.datatype;        #IMPLIED
      src          %URI.datatype;           #IMPLIED
      alt          %Text.datatype;          #IMPLIED
      tabindex     %Number.datatype;        #IMPLIED
      accesskey    %Character.datatype;     #IMPLIED
      accept       %ContentTypes.datatype;  #IMPLIED
      inputmode    CDATA                    #IMPLIED
>
<!-- end of input.attlist -->]]>

<!-- select: Option Selector ........................... -->

<!ENTITY % select.element  "INCLUDE" >
<![%select.element;[
<!ENTITY % select.content
     "( %optgroup.qname; | %option.qname; )+"
>
<!ELEMENT %select.qname;  %select.content; >
<!-- end of select.element -->]]>

<!ENTITY % select.attlist  "INCLUDE" >
<![%select.attlist;[
<!ATTLIST %select.qname;
      %Common.attrib;
      name         CDATA                    #IMPLIED
      size         %Number.datatype;        #IMPLIED
      multiple     ( multiple )             #IMPLIED
      disabled     ( disabled )             #IMPLIED
      tabindex     %Number.datatype;        #IMPLIED
>
<!-- end of select.attlist -->]]>

<!-- optgroup: Option Group ............................ -->

<!ENTITY % optgroup.element  "INCLUDE" >
<![%optgroup.element;[
<!ENTITY % optgroup.content  "( %option.qname; )+" >
<!ELEMENT %optgroup.qname;  %optgroup.content; >
<!-- end of optgroup.element -->]]>

<!ENTITY % optgroup.attlist  "INCLUDE" >
<![%optgroup.attlist;[
<!ATTLIST %optgroup.qname;
      %Common.attrib;
      disabled     ( disabled )             #IMPLIED
      label        %Text.datatype;          #REQUIRED
>
<!-- end of optgroup.attlist -->]]>

<!-- option: Selectable Choice ......................... -->

<!ENTITY % option.element  "INCLUDE" >
<![%option.element;[
<!ENTITY % option.content  "( #PCDATA )" >
<!ELEMENT %option.qname;  %option.content; >
<!-- end of option.element -->]]>

<!ENTITY % option.attlist  "INCLUDE" >
<![%option.attlist;[
<!ATTLIST %option.qname;
      %Common.attrib;
      selected     ( selected )             #IMPLIED
      disabled     ( disabled )             #IMPLIED
      label        %Text.datatype;          #IMPLIED
      value        CDATA                    #IMPLIED
>
<!-- end of option.attlist -->]]>

<!-- textarea: Multi-Line Text Field ................... -->

<!ENTITY % textarea.element  "INCLUDE" >
<![%textarea.element;[
<!ENTITY % textarea.content  "( #PCDATA )" >
<!ELEMENT %textarea.qname;  %textarea.content; >
<!-- end of textarea.element -->]]>

<!ENTITY % textarea.attlist  "INCLUDE" >
<![%textarea.attlist;[
<!ATTLIST %textarea.qname;
      %Common.attrib;
      name         CDATA                    #IMPLIED
      rows         %Number.datatype;        #REQUIRED
      cols         %Number.datatype;        #REQUIRED
      disabled     ( disabled )             #IMPLIED
      readonly     ( readonly )             #IMPLIED
      tabindex     %Number.datatype;        #IMPLIED
      accesskey    %Character.datatype;     #IMPLIED
      inputmode    CDATA                    #IMPLIED
>
<!-- end of textarea.attlist -->]]>

<!-- fieldset: Form Control Group ...................... -->

<!-- #PCDATA is to solve the mixed content problem,
     per specification only whitespace is allowed
-->

<!ENTITY % fieldset.element  "INCLUDE" >
<![%fieldset.element;[
<!ENTITY % fieldset.content
     "( #PCDATA | %legend.qname; | %Flow.mix; )*"
>
<!ELEMENT %fieldset.qname;  %fieldset.content; >
<!-- end of fieldset.element -->]]>

<!ENTITY % fieldset.attlist  "INCLUDE" >
<![%fieldset.attlist;[
<!ATTLIST %fieldset.qname;
      %Common.attrib;
>
<!-- end of fieldset.attlist -->]]>

<!-- legend: Fieldset Legend ........................... -->

<!ENTITY % legend.element  "INCLUDE" >
<![%legend.element;[
<!ENTITY % legend.content
     "( #PCDATA | %Inline.mix; )*"
>
<!ELEMENT %legend.qname;  %legend.content; >
<!-- end of legend.element -->]]>

<!ENTITY % legend.attlist  "INCLUDE" >
<![%legend.attlist;[
<!ATTLIST %legend.qname;
      %Common.attrib;
      accesskey    %Character.datatype;     #IMPLIED
>
<!-- end of legend.attlist -->]]>

<!-- button: Push Button ............................... -->

<!ENTITY % button.element  "INCLUDE" >
<![%button.element;[
<!ENTITY % button.content
     "( #PCDATA
      | %BlkNoForm.mix;
      | %InlStruct.class;
      %InlPhras.class;
      %InlPres.class;
      %I18n.class;
      %InlSpecial.class;
      %Inline.extra; )*"
>
<!ELEMENT %button.qname;  %button.content; >
<!-- end of button.element -->]]>

<!ENTITY % button.attlist  "INCLUDE" >
<![%button.attlist;[
<!ATTLIST %button.qname;
      %Common.attrib;
      name         CDATA                    #IMPLIED
      value        CDATA                    #IMPLIED
      type         ( button | submit | reset ) 'submit'
      disabled     ( disabled )             #IMPLIED
      tabindex     %Number.datatype;        #IMPLIED
      accesskey    %Character.datatype;     #IMPLIED
>
<!-- end of button.attlist -->]]>

<!-- end of xhtml-form-1.mod -->
