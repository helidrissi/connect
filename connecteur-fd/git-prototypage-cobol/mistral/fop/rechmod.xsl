<?xml version="1.0" encoding="ISO-8859-1"?>	<!--Norme à respecter-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.0">	<!--Norme à respecter-->
	<xsl:import href="/acu/mistral/fop/enteteliste.xsl"/>	<!--Importe l'entête de la page-->
	<xsl:template match="/mistral">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">		<!--Norme à respecter-->
<fo:layout-master-set>
<fo:simple-page-master master-name="master-page" page-height="297mm" page-width="210mm" margin-top="6.0mm" margin-bottom="10mm" margin-left="7mm" margin-right="5mm">
<fo:region-body margin-top="25mm" margin-bottom="10mm"/>
<fo:region-before extent="30mm"/>
<fo:region-after extent="10mm"/>
</fo:simple-page-master>
</fo:layout-master-set>
<fo:page-sequence master-reference="master-page">
  <fo:static-content flow-name="xsl-region-before" font-size="9pt">				
    <xsl:apply-templates select="enteteliste"/>		<!--Sélectionne et affiche l'entête de la page-->
  </fo:static-content>
  <fo:static-content flow-name="xsl-region-after" font-size="9pt">
    <xsl:apply-templates select="piedliste"/>		<!--Sélectionne et affiche le pied de page-->
  </fo:static-content>
  <fo:flow flow-name="xsl-region-body" font-size="9pt">		<!--Taille de la police pour l'espace de travail-->
	<fo:table table-layout="fixed" border-style="solid 0.3mm" border-width="0.0mm" width="195mm">		<!--Taille du tableau-->
	  <fo:table-column background-color="white"  color="white" column-width="5mm" />
  	  <fo:table-column border="solid 0.3mm" column-width="20mm"/>
	  <fo:table-column border="solid 0.3mm" column-width="50mm"/>
	  <fo:table-column border="solid 0.3mm" column-width="20mm"/>
	  <fo:table-column border="solid 0.3mm" column-width="50mm"/>						
	  <fo:table-header>
	    <fo:table-row line-height="14pt" background-color="{$colorgris}" color="black" font-weight="bold">
	      <fo:table-cell color="white" background-color="white"> <fo:block> . </fo:block> </fo:table-cell>
  	      <fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border="solid 0.3mm" text-align="center"> <fo:block> Code </fo:block> </fo:table-cell>
  	      <fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border="solid 0.3mm" text-align="center"> <fo:block> Raison sociale </fo:block> </fo:table-cell>
 	      <fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border="solid 0.3mm" text-align="center"> <fo:block> Code postal </fo:block> </fo:table-cell>
         <fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border="solid 0.3mm" text-align="center"> <fo:block> Ville </fo:block> </fo:table-cell>								
	    </fo:table-row>
 	  </fo:table-header>
	  <fo:table-footer>
	  </fo:table-footer>
	  <fo:table-body>
	    <xsl:apply-templates select="lig"/>
 	  </fo:table-body>
	</fo:table>
	<fo:block id="Fin"/>
  </fo:flow>
</fo:page-sequence>
</fo:root>
</xsl:template>

<xsl:template match="/mistral/lig">
  <fo:table-row line-height="15pt">
    <fo:table-cell color="white"><fo:block> . </fo:block> </fo:table-cell>
    <fo:table-cell text-align="center"> 
       <fo:block> <xsl:value-of select="cli"/> </fo:block> </fo:table-cell>
    <fo:table-cell margin-left="0.5mm" text-align="left">   
       <fo:block> <xsl:value-of select="rai"/> </fo:block> </fo:table-cell>
    <fo:table-cell text-align="center"> 
       <fo:block> <xsl:value-of select="cdp"/> </fo:block> </fo:table-cell>
    <fo:table-cell margin-left="0.5mm" text-align="left"> 
       <fo:block> <xsl:value-of select="vil"/> </fo:block> </fo:table-cell>
  </fo:table-row> 
</xsl:template>


</xsl:stylesheet>      
