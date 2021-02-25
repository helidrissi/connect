<?xml version="1.0" encoding="ISO-8859-15"?>

<xsl:stylesheet	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
                xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.0">

<xsl:variable name="fontfamily">Helvetica</xsl:variable>

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
  
<!-- ENTETE DE LA LISTE -->

<xsl:template match="enteteliste">

<xsl:variable name="titagc">
     <xsl:choose>
       <xsl:when test="titagc!=''"><xsl:value-of select="titagc"/></xsl:when>
       <xsl:otherwise>Agence:</xsl:otherwise>    
     </xsl:choose>  
  </xsl:variable>
<xsl:variable name="titfolio">
     <xsl:choose>
       <xsl:when test="titfolio!=''"><xsl:value-of select="titfolio"/></xsl:when>
       <xsl:otherwise>Folio: </xsl:otherwise>    
     </xsl:choose>  
  </xsl:variable>
  
<fo:block-container background-color="white" left="0mm" top="0.0mm" width="267mm" height="20mm" position="absolute">
  <fo:block font-size="11pt" font-style="italic" font-weight="bold"><xsl:value-of select="raipar"/></fo:block>
  <xsl:if test= "nomagc!=''">  
       <fo:block font-size="9pt" font-style="italic"><xsl:value-of select="$titagc"/> <xsl:value-of select="codagc"/>) <xsl:value-of select="nomagc"/></fo:block>
  </xsl:if>
</fo:block-container>
<fo:block-container text-align="right" left="267mm" top="17mm" width="15mm" height="7mm" position="absolute">
  <fo:block font-weight="bold"><xsl:value-of select="$titfolio"/> <fo:page-number/>/<fo:page-number-citation ref-id="Fin"/></fo:block> 
</fo:block-container>
<fo:block-container left="0mm" top="10mm" width="282mm" height="7mm" position="absolute">
  <fo:block font-size="13pt" font-weight="bold" text-align="center"><xsl:value-of select="titre"/></fo:block>
</fo:block-container>

</xsl:template>

<!-- PIED DE LA LISTE -->

<xsl:template match="piedliste">

<fo:block-container font-size="7pt" left="0mm" width="282mm" line-height="6mm" height="15mm" text-align="left" top="0mm" position="absolute">
  <fo:block font-style="italic" font-weight="bold"><xsl:value-of select="piedliste-l"/></fo:block>
</fo:block-container>
<fo:block-container font-size="7pt" left="0mm" width="282mm" line-height="6mm" height="15mm" text-align="right" top="0mm" position="absolute">
  <fo:block font-style="italic" font-weight="bold"><xsl:value-of select="proc"/>  &#169; Mistral Informatique</fo:block>
</fo:block-container>

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
      <fo:table-column padding-top="-0.15mm" padding-right="-0.15mm" border="solid 0.2mm" border-left="none" border-right="none" column-width="65mm"/>
      <fo:table-column padding-top="-0.15mm" padding-right="-0.15mm" border="solid 0.2mm" border-left="none" column-width="65mm"/>
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
   	    <fo:table-cell><fo:block margin-left="0.5mm" margin-right="0.5mm" text-align="left"><xsl:value-of select="critere-l3"/></fo:block></fo:table-cell>
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
      <fo:table-row line-height="15pt">
      <fo:table-cell><fo:block margin-left="0.5mm" margin-right="0.5mm" text-align="center"><xsl:value-of select="legende-l"/></fo:block></fo:table-cell>
      </fo:table-row>
      </fo:table-body>
     </fo:table>
</xsl:template>

</xsl:stylesheet>
