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
	<xsl:variable name="ficimg"><xsl:value-of select="photo/image"/></xsl:variable>
	<fo:block>
		<fo:inline font-weight="bold">Titre : </fo:inline><xsl:value-of select="photo/tit"/>
	</fo:block>
	<fo:block line-height="10mm">
		&#160;
	</fo:block>
	<fo:block>
		<fo:external-graphic src="{$ficimg}" width="150mm" height="100mm"/>
	</fo:block>
	<xsl:if test="photo/com !=''">
		<fo:block line-height="10mm">
			&#160;
		</fo:block>
		<fo:block font-weight="bold">Commentaires : 
		</fo:block>
		<fo:block line-height="5mm">
			&#160;
		</fo:block>
		<xsl:for-each select="photo/com">
			<fo:block>
				<xsl:value-of select="text()" />
			</fo:block>
		</xsl:for-each>	
	</xsl:if>	
	<fo:block id="Fin"/>
  </fo:flow>
</fo:page-sequence>
</fo:root>
</xsl:template>


</xsl:stylesheet>      
