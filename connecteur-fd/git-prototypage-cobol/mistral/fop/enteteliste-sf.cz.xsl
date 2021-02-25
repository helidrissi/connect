<?xml version="1.0" encoding="ISO-8859-1"?>

<xsl:stylesheet	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
                xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.0">

<xsl:variable name="fontfamily">Arial</xsl:variable>

<xsl:variable name="colorbleu">
     <xsl:choose>
       <xsl:when test="/mistral/colorbleu!=''"><xsl:value-of select="/mistral/colorbleu"/></xsl:when>
       <xsl:otherwise>#C0D9FE</xsl:otherwise>    
     </xsl:choose>  
  </xsl:variable>
  <xsl:variable name="colorjaune">
     <xsl:choose>
       <xsl:when test="/mistral/colorjaune!=''"><xsl:value-of select="/mistral/colorjaune"/></xsl:when>
       <xsl:otherwise>#FFFFB0</xsl:otherwise>    
     </xsl:choose>  
  </xsl:variable>
  <xsl:variable name="colorgris">
     <xsl:choose>
       <xsl:when test="/mistral/colorgris!=''"><xsl:value-of select="/mistral/colorgris"/></xsl:when>
       <xsl:otherwise>#DFDFDF</xsl:otherwise>    
     </xsl:choose>  
  </xsl:variable>
  <xsl:variable name="nbcriterel3" 	select="count(/mistral/critere/critere_l/critere_l3)" />
  
<!-- ENTETE DE LA LISTE (PORTRAIT) -->

<xsl:template match="enteteliste">

<xsl:variable name="titagc">
     <xsl:choose>
       <xsl:when test="titagc!=''"><xsl:value-of select="titagc"/></xsl:when>
       <xsl:otherwise>Agence:</xsl:otherwise>    
     </xsl:choose>  
  </xsl:variable>
  <xsl:variable name="titreg">
     <xsl:choose>
       <xsl:when test="titreg!=''"><xsl:value-of select="titreg"/></xsl:when>
       <xsl:otherwise>Région:</xsl:otherwise>    
     </xsl:choose>  
  </xsl:variable>
<xsl:variable name="titets">
     <xsl:choose>
       <xsl:when test="titets!=''"><xsl:value-of select="titets"/></xsl:when>
       <xsl:otherwise>Etablissement:</xsl:otherwise>    
     </xsl:choose>  
  </xsl:variable>
  <xsl:variable name="titsoc">
     <xsl:choose>
       <xsl:when test="titsoc!=''"><xsl:value-of select="titsoc"/></xsl:when>
       <xsl:otherwise>Société n° </xsl:otherwise>    
     </xsl:choose>  
  </xsl:variable>
    <xsl:variable name="titfolio">
     <xsl:choose>
       <xsl:when test="titfolio!=''"><xsl:value-of select="titfolio"/></xsl:when>
       <xsl:otherwise>Folio: </xsl:otherwise>    
     </xsl:choose>  
  </xsl:variable>
 
  
<fo:block-container  left="0mm" top="0.0mm" width="180mm" height="15mm" position="absolute">
  <fo:block font-size="11pt" font-style="italic" font-weight="bold"><xsl:value-of select="raipar"/></fo:block>
  <xsl:if test= "nomreg!=''">  
       <fo:block font-size="9pt" font-style="italic"><xsl:value-of select="$titreg"/> <xsl:value-of select="codreg"/>) <xsl:value-of select="nomreg"/></fo:block>
  </xsl:if>
  <xsl:if test= "nomagc!=''">  
       <fo:block font-size="9pt" font-style="italic"><xsl:value-of select="$titagc"/> <xsl:value-of select="codagc"/>) <xsl:value-of select="nomagc"/></fo:block>
  </xsl:if>
  <xsl:if test= "nomets!=''">  
       <fo:block font-size="9pt" font-style="italic"><xsl:value-of select="$titets"/> <xsl:value-of select="codets"/>) <xsl:value-of select="nomets"/></fo:block>
  </xsl:if>
</fo:block-container>

<fo:block-container left="170mm" top="0.0mm" width="180mm" height="7mm" position="absolute">
  <xsl:if test= "numsoc!=''">  
       <fo:block font-size="10pt" font-weight="bold"><xsl:value-of select="$titsoc"/> <xsl:value-of select="numsoc"/></fo:block>
 </xsl:if>
</fo:block-container>

<fo:block-container text-align="right" left="171mm" top="17mm" width="25mm" height="7mm" position="absolute">
     <fo:block font-weight="bold"><xsl:value-of select="$titfolio"/> <fo:page-number/></fo:block>
</fo:block-container>

<fo:block-container left="0mm" top="10mm" width="195mm" height="7mm" position="absolute">
  <fo:block font-size="13pt" font-weight="bold" text-align="center"><xsl:value-of select="titre"/></fo:block>
</fo:block-container>

<fo:block-container left="0mm" top="17mm" width="195mm" height="7mm" position="absolute">
     <fo:block font-size="10pt" font-weight="bold" text-align="center"><xsl:value-of select="periode"/></fo:block>
</fo:block-container>

</xsl:template>

<!-- PIED DE LA LISTE (PORTRAIT) -->

<xsl:template match="piedliste">

<fo:block-container font-size="7pt" left="0mm" width="195mm" line-height="6mm" height="15mm" text-align="left" top="0mm" position="absolute">
  <fo:block font-style="italic" font-weight="bold"><xsl:value-of select="piedliste-l"/></fo:block>
</fo:block-container>
<fo:block-container font-size="7pt" left="0mm" width="195mm" line-height="6mm" height="15mm" text-align="right" top="0mm" position="absolute">
  <fo:block font-style="italic" font-weight="bold"><xsl:value-of select="log"/> / <xsl:value-of select="proc"/>  &#169; Mistral Informatique</fo:block>
</fo:block-container>
    <xsl:apply-templates select="/mistral/dev"/>
    <xsl:apply-templates select="/mistral/incomplet"/>
</xsl:template>

<!-- ENTETE DE LA LISTE (PAYSAGE) -->

<xsl:template match="entetelistepaysage">

<xsl:variable name="titagc">
     <xsl:choose>
       <xsl:when test="titagc!=''"><xsl:value-of select="titagc"/></xsl:when>
       <xsl:otherwise>Agence:</xsl:otherwise>    
     </xsl:choose>  
  </xsl:variable>
  <xsl:variable name="titreg">
     <xsl:choose>
       <xsl:when test="titreg!=''"><xsl:value-of select="titreg"/></xsl:when>
       <xsl:otherwise>Région:</xsl:otherwise>    
     </xsl:choose>  
  </xsl:variable>
<xsl:variable name="titets">
     <xsl:choose>
       <xsl:when test="titets!=''"><xsl:value-of select="titets"/></xsl:when>
       <xsl:otherwise>Etablissement:</xsl:otherwise>    
     </xsl:choose>  
  </xsl:variable>
  <xsl:variable name="titsoc">
     <xsl:choose>
       <xsl:when test="titsoc!=''"><xsl:value-of select="titsoc"/></xsl:when>
       <xsl:otherwise>Société n° </xsl:otherwise>    
     </xsl:choose>  
  </xsl:variable>
    <xsl:variable name="titfolio">
     <xsl:choose>
       <xsl:when test="titfolio!=''"><xsl:value-of select="titfolio"/></xsl:when>
       <xsl:otherwise>Folio: </xsl:otherwise>    
     </xsl:choose>  
  </xsl:variable>

<fo:block-container background-color="white" left="0mm" top="0.0mm" width="277mm" height="20mm" position="absolute">
  <fo:block font-size="11pt" font-style="italic" font-weight="bold"><xsl:value-of select="raipar"/></fo:block>
  <xsl:if test= "nomreg!=''">  
       <fo:block font-size="9pt" font-style="italic"><xsl:value-of select="$titreg"/> <xsl:value-of select="codreg"/>) <xsl:value-of select="nomreg"/></fo:block>
  </xsl:if>
  <xsl:if test= "nomagc!=''">  
       <fo:block font-size="9pt" font-style="italic"><xsl:value-of select="$titagc"/> <xsl:value-of select="codagc"/>) <xsl:value-of select="nomagc"/></fo:block>
  </xsl:if>
</fo:block-container>

<fo:block-container background-color="white" left="250mm" top="0.0mm" width="27mm" height="20mm" position="absolute">
  <xsl:if test= "numsoc!=''">  
       <fo:block font-size="10pt" font-weight="bold" text-align="right"><xsl:value-of select="$titsoc"/> <xsl:value-of select="numsoc"/></fo:block>
 </xsl:if>
</fo:block-container>

<fo:block-container text-align="right" left="253mm" top="17mm" width="25mm" height="7mm" position="absolute">
     <fo:block font-weight="bold"><xsl:value-of select="$titfolio"/> <fo:page-number/></fo:block>
</fo:block-container>

<fo:block-container left="0mm" top="10mm" width="277mm" height="7mm" position="absolute">
  <fo:block font-size="13pt" font-weight="bold" text-align="center"><xsl:value-of select="titre"/></fo:block>
</fo:block-container>

<fo:block-container left="0mm" top="16mm" width="277mm" height="7mm" position="absolute">
     <fo:block font-size="10pt" font-weight="bold" text-align="center"><xsl:value-of select="periode"/></fo:block>
</fo:block-container>

</xsl:template>

<!-- PIED DE LA LISTE (PAYSAGE) -->

<xsl:template match="piedlistepaysage">

<fo:block-container font-size="7pt" left="0mm" width="277mm" line-height="6mm" height="15mm" text-align="left" top="0mm" position="absolute">
  <fo:block font-style="italic" font-weight="bold"><xsl:value-of select="piedliste-l"/></fo:block>
</fo:block-container>
<fo:block-container font-size="7pt" left="0mm" width="277mm" line-height="6mm" height="15mm" text-align="right" top="0mm" position="absolute">
  <fo:block font-style="italic" font-weight="bold"><xsl:value-of select="proc"/>  &#169; Mistral Informatique</fo:block>
</fo:block-container>
    <xsl:apply-templates select="/mistral/dev"/>
    <xsl:apply-templates select="/mistral/incomplet"/>
</xsl:template>


<!-- TRAITEMENT INCOMPLET -->

<xsl:template match="incomplet">

<fo:block-container font-size="9pt" left="90mm" width="195mm" line-height="6mm" height="15mm" text-align="left" top="0mm" position="absolute">
  <fo:block color="red" font-style="italic" font-weight="bold"><xsl:value-of select="text()"/></fo:block>
</fo:block-container>

</xsl:template>


<!-- DEVISE -->

<xsl:template match="dev">

 <xsl:variable name="titdev">
     <xsl:choose>
       <xsl:when test="titdev!=''"><xsl:value-of select="titdev"/></xsl:when>
       <xsl:otherwise>Montants en </xsl:otherwise>    
     </xsl:choose>  
  </xsl:variable>
  
<xsl:if test="/mistral/format='P'">
  <fo:block-container font-size="7pt" left="0mm" width="230mm" line-height="6mm" height="15mm" text-align="right" top="0mm" position="absolute">
    <fo:block color="black" font-style="italic" font-weight="bold"><xsl:value-of select="$titdev"/> <xsl:value-of select="text()"/></fo:block>
  </fo:block-container>
</xsl:if>
<xsl:if test="/mistral/format='N'">
  <fo:block-container font-size="7pt" left="0mm" width="150mm" line-height="6mm" height="15mm" text-align="right" top="0mm" position="absolute">
    <fo:block color="black" font-style="italic" font-weight="bold"><xsl:value-of select="$titdev"/> <xsl:value-of select="text()"/></fo:block>
  </fo:block-container>
</xsl:if>  
</xsl:template>

<!-- CRITERES DE SELECTION -->

<xsl:template match="critere">

<xsl:variable name="titcrit">
     <xsl:choose>
       <xsl:when test="titcrit!=''"><xsl:value-of select="titcrit"/></xsl:when>
       <xsl:otherwise>Critères </xsl:otherwise>    
     </xsl:choose>  
  </xsl:variable>
  
     <fo:block color="white" line-height="12pt">.</fo:block>
     <fo:table table-layout="fixed" border-style="solid 0.3mm" border-width="0.0mm" left="0mm" width="195mm" position="absolute">
      <fo:table-column padding-top="-0.15mm" padding-left="-0.15mm" padding-right="-0.15mm" border="solid 0.2mm" border-right="none" column-width="65mm"/>
      
       <xsl:choose>
                     <xsl:when test="$nbcriterel3='0'">
                                            <fo:table-column padding-top="-0.15mm" padding-right="-0.15mm" border="solid 0.2mm" border-left="none"  column-width="130mm"/>
                     </xsl:when>
                     <xsl:otherwise>
                                             <fo:table-column padding-top="-0.15mm" padding-right="-0.15mm" border="solid 0.2mm" border-left="none" border-right="none" column-width="65mm"/>
   		  <fo:table-column padding-top="-0.15mm" padding-right="-0.15mm" border="solid 0.2mm" border-left="none" column-width="65mm"/>
                     </xsl:otherwise>
        </xsl:choose>
       <!--<fo:table-column padding-top="-0.15mm" padding-right="-0.15mm" border="solid 0.2mm" border-left="none" border-right="none" column-width="65mm"/>
      <fo:table-column padding-top="-0.15mm" padding-right="-0.15mm" border="solid 0.2mm" border-left="none" column-width="65mm"/>-->
      <fo:table-header>
        <fo:table-row line-height="10pt" background-color="#C0D9FE" color="black" text-align="left" font-weight="bold">
          <fo:table-cell number-columns-spanned="3" border="solid 0.2mm" text-align="center"><fo:block><xsl:value-of select="$titcrit"/></fo:block></fo:table-cell>
       </fo:table-row>
       </fo:table-header>
      <fo:table-body>
         <xsl:apply-templates select="critere-l"/>
      </fo:table-body>
     </fo:table>
</xsl:template>

<xsl:template match="critere-l">
      <fo:table-row line-height="10pt">
	    <fo:table-cell><fo:block margin-left="0.5mm" margin-right="0.5mm" text-align="left"><xsl:value-of select="critere-l1"/></fo:block></fo:table-cell>
  	    <fo:table-cell><fo:block margin-left="0.5mm" margin-right="0.5mm" text-align="left"><xsl:value-of select="critere-l2"/></fo:block></fo:table-cell>
  	    <xsl:choose>
                     	    <xsl:when test="$nbcriterel3='0'">
                     	    </xsl:when>
                         <xsl:otherwise>
   	    <fo:table-cell><fo:block margin-left="0.5mm" margin-right="0.5mm" text-align="left"><xsl:value-of select="critere-l3"/></fo:block></fo:table-cell>
   	     </xsl:otherwise>
        </xsl:choose>
      </fo:table-row>
</xsl:template>

<!-- LEGENDE -->

<xsl:template match="legende">

<xsl:variable name="titleg">
     <xsl:choose>
       <xsl:when test="titleg!=''"><xsl:value-of select="titleg"/></xsl:when>
       <xsl:otherwise>Légende </xsl:otherwise>    
     </xsl:choose>  
  </xsl:variable>
  
     <fo:table table-layout="fixed" border-style="solid 0.3mm" border-width="0.0mm" left="0mm" width="195mm" position="absolute">
      <fo:table-column padding-top="-0.15mm" padding-left="-0.15mm" padding-right="-0.15mm" border="solid 0.2mm" border-right="solid 0.3mm" column-width="195mm"/>
      <fo:table-header>
        <fo:table-row line-height="15pt" background-color="#C0D9FE" color="black" text-align="center" font-weight="bold">
          <fo:table-cell border="solid 0.2mm"><fo:block><xsl:value-of select="$titleg"/></fo:block></fo:table-cell>
       </fo:table-row>
       </fo:table-header>
      <fo:table-body>
      <xsl:apply-templates select="legende-l"/>
      </fo:table-body>
     </fo:table>
</xsl:template>

<xsl:template match="legende-l">
      <fo:table-row line-height="10pt">
	    <fo:table-cell><fo:block margin-left="0.5mm" margin-right="0.5mm" text-align="left"><xsl:value-of select="text()"/></fo:block></fo:table-cell>
      </fo:table-row>
</xsl:template>

</xsl:stylesheet>
<!-- Stylus Studio meta-information - (c) 2004-2005. Progress Software Corporation. All rights reserved.
<metaInformation>
<scenarios ><scenario default="yes" name="Scenario1" userelativepaths="yes" externalpreview="no" url="file:///c:/Documents and Settings/AM/Mes documents/XML/SCP.xml" htmlbaseurl="" outputurl="" processortype="internal" useresolver="yes" profilemode="0" profiledepth="" profilelength="" urlprofilexml="" commandline="" additionalpath="" additionalclasspath="" postprocessortype="none" postprocesscommandline="" postprocessadditionalpath="" postprocessgeneratedext="" validateoutput="no" validator="internal" customvalidator=""/></scenarios><MapperMetaTag><MapperInfo srcSchemaPathIsRelative="yes" srcSchemaInterpretAsXML="no" destSchemaPath="" destSchemaRoot="" destSchemaPathIsRelative="yes" destSchemaInterpretAsXML="no"/><MapperBlockPosition></MapperBlockPosition><TemplateContext></TemplateContext></MapperMetaTag>
</metaInformation>
-->