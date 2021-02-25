<?xml version="1.0" encoding="ISO-8859-1"?>	<!--Norme � respecter-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.0">	<!--Norme � respecter-->
	<xsl:import href="/acu/mistral/fop/enteteliste.xsl"/>	<!--Importe l'ent�te de la page-->
	<xsl:template match="/mistral">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">		<!--Norme � respecter-->
<fo:layout-master-set>
<fo:simple-page-master master-name="master-page" page-height="297mm" page-width="210mm" margin-top="6.0mm" margin-bottom="10mm" margin-left="7mm" margin-right="5mm">
<fo:region-body margin-top="25mm" margin-bottom="10mm"/>
<fo:region-before extent="30mm"/>
<fo:region-after extent="10mm"/>
</fo:simple-page-master>
</fo:layout-master-set>
<fo:page-sequence master-reference="master-page">
  <fo:static-content flow-name="xsl-region-before" font-size="9pt">				
    <xsl:apply-templates select="enteteliste"/>		<!--S�lectionne et affiche l'ent�te de la page-->
  </fo:static-content>
  <fo:static-content flow-name="xsl-region-after" font-size="9pt">
    <xsl:apply-templates select="piedliste"/>		<!--S�lectionne et affiche le pied de page-->
  </fo:static-content>
  <fo:flow flow-name="xsl-region-body" font-size="9pt">		<!--Taille de la police pour l'espace de travail-->
	<fo:table table-layout="fixed" border-style="solid 0.3mm" border-width="0.0mm" width="195mm">		<!--Taille du tableau-->
	  <fo:table-column background-color="white"  color="white" column-width="10mm" />
   	  <fo:table-column padding-top="-0.15mm" padding-left="-0.15mm" padding-right="-0.15mm" border="solid 0.3mm" column-width="13mm" />
  	  <fo:table-column padding-top="-0.15mm" padding-left="-0.15mm" padding-right="-0.15mm" border="solid 0.3mm" column-width="45mm"/>
	  <fo:table-column padding-top="-0.15mm" padding-left="-0.15mm" padding-right="-0.15mm" border="solid 0.3mm" column-width="25mm"/>
          <fo:table-column padding-top="-0.15mm" padding-left="-0.15mm" padding-right="-0.15mm" border="solid 0.3mm" column-width="22mm" />
	  <fo:table-column padding-top="-0.15mm" padding-left="-0.15mm" padding-right="-0.15mm" border="solid 0.3mm" column-width="20mm"/>
	  <fo:table-column padding-top="-0.15mm" padding-left="-0.15mm" padding-right="-0.15mm" border="solid 0.3mm" column-width="20mm"/>						
	  <fo:table-column padding-top="-0.15mm" padding-left="-0.15mm" padding-right="-0.15mm" border="solid 0.3mm" column-width="20mm"/>
	  <fo:table-column padding-top="-0.15mm" padding-left="-0.15mm" padding-right="-0.15mm" border="solid 0.3mm" column-width="20mm"/>						
	  <fo:table-header>
	    <fo:table-row line-height="14pt" background-color="{$colorgris}" color="black" font-weight="bold">
	      <fo:table-cell color="white" background-color="white"> <fo:block> . </fo:block> </fo:table-cell>
  	      <fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border="solid 0.3mm" text-align="center"> <fo:block> Code </fo:block> </fo:table-cell>
   	      <fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border="solid 0.3mm" text-align="center"> <fo:block> Libell� </fo:block> </fo:table-cell>
 	      <fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border="solid 0.3mm" text-align="center"> <fo:block> Nombre de d�cimales du Cours </fo:block> </fo:table-cell>
              <fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border="solid 0.3mm" text-align="center"> <fo:block> Type d'impression </fo:block> </fo:table-cell>								
              <fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border="solid 0.3mm" text-align="center"> <fo:block> Valeur Dernier </fo:block> <fo:block> Cours </fo:block> </fo:table-cell>                
              <fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border="solid 0.3mm" text-align="center"> <fo:block> Date Dernier  </fo:block> <fo:block> Cours </fo:block> </fo:table-cell>
              <fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border="solid 0.3mm" text-align="center"> <fo:block> Valeur Cours</fo:block> <fo:block>  Pr�c�dent  </fo:block> </fo:table-cell>                
              <fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border="solid 0.3mm" text-align="center"> <fo:block> Date Cours</fo:block> <fo:block>  Pr�c�dent </fo:block> </fo:table-cell>                
	    </fo:table-row>
 	  </fo:table-header>
	  <fo:table-footer>
	  </fo:table-footer>
	  <fo:table-body>
	    <fo:table-row line-height="10pt">
	      <fo:table-cell number-columns-spanned="8"> <fo:block color="white"> . </fo:block> </fo:table-cell>
 	    </fo:table-row>
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
    <fo:table-cell margin-left="0.5mm" margin-right="0.5mm" text-align="center"> 
       <fo:block> <xsl:value-of select="cod"/> </fo:block> </fo:table-cell>
    <fo:table-cell margin-left="0.5mm" margin-right="0.5mm" text-align="left">   
       <fo:block> <xsl:value-of select="lib"/> </fo:block> </fo:table-cell>
    <fo:table-cell margin-left="0.5mm" margin-right="0.5mm" text-align="center"> 
       <fo:block> <xsl:value-of select="ino"/> </fo:block> </fo:table-cell>
    <fo:table-cell margin-left="0.5mm" margin-right="0.5mm" text-align="center"> 
       <fo:block> <xsl:value-of select="ivu"/> </fo:block> </fo:table-cell>
    <fo:table-cell margin-left="0.5mm" margin-right="0.5mm" text-align="center">   
       <fo:block> <xsl:value-of select="val"/> </fo:block> </fo:table-cell>
    <fo:table-cell margin-left="0.5mm" margin-right="0.5mm" text-align="center"> 
       <fo:block> <xsl:value-of select="dat"/> </fo:block> </fo:table-cell>			
    <fo:table-cell margin-left="0.5mm" margin-right="0.5mm" text-align="center">
       <fo:block> <xsl:value-of select="val2"/> </fo:block> </fo:table-cell>
    <fo:table-cell margin-left="0.5mm" margin-right="0.5mm" text-align="center">
       <fo:block> <xsl:value-of select="dat2"/> </fo:block> </fo:table-cell>
  </fo:table-row> 
</xsl:template>


</xsl:stylesheet>      
