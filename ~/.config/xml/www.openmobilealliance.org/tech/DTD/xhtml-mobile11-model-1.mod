<!-- XHTML Mobile 1.1 Document Model Module ............................... -->
<!-- file: xhtml-mobile11-model-1.mod -->
<!--
     This module is part of XHTML Mobile profile, a proper subset of XHTML.
     
     @Wireless Application Protocol Forum, Ltd. 2002.

     (C) 2006 Open Mobile Alliance Ltd.  All Rights Reserved.
     Used with the permission of the Open Mobile Alliance Ltd. under the
     terms set forth below.

     LEGAL DISCLAIMER

     Use of this document is subject to all of the terms and conditions
     of the Use Agreement located at
	http://www.openmobilealliance.org/UseAgreement.html

    NO REPRESENTATIONS OR WARRANTIES (WHETHER EXPRESS OR IMPLIED) ARE
    MADE BY THE OPEN MOBILE ALLIANCE OR ANY OPEN MOBILE ALLIANCE MEMBER
    OR ITS AFFILIATES REGARDING ANY OF THE IPR'S REPRESENTED ON THE "OMA
    IPR DECLARATIONS ELIST, INCLUDING, BUT NOT LIMITED TO THE ACCURACY,
    COMPLETENESS, VALIDITY OR RELEVANCE OF THE INFORMATION OR WHETHER OR
    NOT SUCH RIGHTS ARE ESSENTIAL OR NON-ESSENTIAL.

    THE OPEN MOBILE ALLIANCE IS NOT LIABLE FOR AND HEREBY DISCLAIMS ANY
    DIRECT, INDIRECT, PUNITIVE, SPECIAL, INCIDENTAL, CONSEQUENTIAL, OR
    EXEMPLARY DAMAGES ARISING OUT OF OR IN CONNECTION WITH THE USE OF
    DOCUMENTS AND THE INFORMATION CONTAINED IN THE DOCUMENTS.
-->
<!-- XHTML Mobile Document Model

     This module describes the groupings of elements that make up
     common content models for XHTML elements.
-->

<!-- Optional Elements in head  .............. -->

<!ENTITY % HeadOpts.mix

     "( %script.qname; | %meta.qname; | %link.qname; | %object.qname; | %style.qname;
     )*" >


<!-- Miscellaneous Elements  ................. -->

<!ENTITY % Misc.extra "" >

<!ENTITY % Script.class "| %script.qname; | %noscript.qname;" >

<!ENTITY % Misc.class "%Script.class; %Misc.extra;" >

<!-- Inline Elements  ........................ -->

<!ENTITY % InlStruct.class "%br.qname; | %span.qname;" >

<!ENTITY % InlPhras.class
     "| %em.qname; | %strong.qname; | %dfn.qname; | %code.qname;
      | %samp.qname; | %kbd.qname; | %var.qname; | %cite.qname;
      | %abbr.qname; | %acronym.qname; | %q.qname;" >

<!ENTITY % InlPres.class
     "| %i.qname; | %b.qname; | %big.qname; | %small.qname; " >


<!ENTITY % I18n.class "" >

<!ENTITY % Anchor.class "| %a.qname;" >

<!ENTITY % InlSpecial.class "| %img.qname; | %object.qname;" >

<!ENTITY % InlForm.class
     "| %input.qname; | %select.qname; | %textarea.qname;
      | %label.qname;"
>

<!ENTITY % Inline.extra "" >

<!ENTITY % Inline.class
     "%InlStruct.class;
      %InlPhras.class;
      %InlPres.class;
      %Anchor.class;
      %InlSpecial.class;
      %InlForm.class;
      %Inline.extra;"
>

<!ENTITY % InlNoAnchor.class
     "%InlStruct.class;
      %InlPhras.class;
      %InlPres.class;      
      %InlSpecial.class;
      %InlForm.class;
      %Inline.extra;"
>

<!ENTITY % InlNoAnchor.mix
     "%InlNoAnchor.class;
      %Misc.class;"
>

<!ENTITY % Inline.mix
     "%Inline.class;
      %Misc.class;"
>

<!-- Block Elements  ......................... -->

<!ENTITY % Heading.class
     "%h1.qname; | %h2.qname; | %h3.qname;
      | %h4.qname; | %h5.qname; | %h6.qname;"
>
<!ENTITY % List.class  "%ul.qname; | %ol.qname; | %dl.qname;" >

<!ENTITY % Table.class "| %table.qname;" >

<!ENTITY % Form.class  "| %form.qname;" >

<!ENTITY % Fieldset.class  "| %fieldset.qname;" >

<!ENTITY % BlkStruct.class "%p.qname; | %div.qname;" >

<!ENTITY % BlkPhras.class
     "| %pre.qname; | %blockquote.qname; | %address.qname;"
>

<!ENTITY % BlkPres.class "| %hr.qname;" >

<!ENTITY % BlkSpecial.class
     "%Table.class;
      %Form.class;
      %Fieldset.class;"
>

<!ENTITY % Block.extra "" >

<!ENTITY % Block.class
     "%BlkStruct.class;
      %BlkPhras.class;
      %BlkPres.class;
      %BlkSpecial.class;
      %Block.extra;"
>

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

<!ENTITY % Block.mix
     "%Heading.class;
      | %List.class;
      | %Block.class;
      %Misc.class;"
>

<!-- All Content Elements  ................... -->

<!-- declares all content except tables
-->
<!ENTITY % FlowNoTable.mix
     "%Heading.class;
      | %List.class;
      | %BlkStruct.class;
      %BlkPhras.class;
      %Form.class;
      %Block.extra;
      | %Inline.class;
      %Misc.class;"
>


<!ENTITY % Flow.mix
     "%Heading.class;
      | %List.class;
      | %Block.class;
      | %Inline.class;
      %Misc.class;"
>

<!-- end of xhtml-mobile11-model-1.mod -->
