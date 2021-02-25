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
					<fo:table table-layout="fixed" border-style="solid 0.3mm" border-width="0.0mm" width="165mm">		<!--Taille du tableau-->
					  <fo:table-column background-color="white"  color="white" column-width="15mm" />
						<fo:table-column padding-top="-0.15mm" padding-left="-0.15mm" padding-right="-0.15mm" border="solid 0.3mm" column-width="10mm" />
						<fo:table-column padding-top="-0.15mm" padding-left="-0.15mm" padding-right="-0.15mm" border="solid 0.3mm" column-width="30mm"/>
						<fo:table-column padding-top="-0.15mm" padding-left="-0.15mm" padding-right="-0.15mm" border="solid 0.3mm" column-width="30mm"/>
						<fo:table-column padding-top="-0.15mm" padding-left="-0.15mm" padding-right="-0.15mm" border="solid 0.3mm" column-width="25mm"/>
						<fo:table-column padding-top="-0.15mm" padding-left="-0.15mm" padding-right="-0.15mm" border="solid 0.3mm" column-width="35mm"/>						
						<fo:table-column padding-top="-0.15mm" padding-left="-0.15mm" padding-right="-0.15mm" border="solid 0.3mm" column-width="25mm"/>
						<fo:table-column padding-top="-0.15mm" padding-left="-0.15mm" padding-right="-0.15mm" border="solid 0.3mm" column-width="25mm"/>
						<fo:table-header>
							<fo:table-row line-height="20pt" background-color="{$colorgris}" color="black" font-weight="bold">
							  <fo:table-cell color="white" background-color="white"> <fo:block> . </fo:block> </fo:table-cell>
								<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border="solid 0.3mm" text-align="center"> <fo:block> <xsl:value-of select="/mistral/enteteliste/zontitcod"/> </fo:block> </fo:table-cell>
								<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border="solid 0.3mm" text-align="center"> <fo:block> <xsl:value-of select="/mistral/enteteliste/zontitlib"/> </fo:block> </fo:table-cell>
								<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border="solid 0.3mm" text-align="center"> <fo:block> <xsl:value-of select="/mistral/enteteliste/zontitabr"/> </fo:block> </fo:table-cell>
								<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border="solid 0.3mm" text-align="center"> <fo:block> <xsl:value-of select="/mistral/enteteliste/zontitfct"/> </fo:block> </fo:table-cell>
								<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border="solid 0.3mm" text-align="center"> <fo:block> <xsl:value-of select="/mistral/enteteliste/zontitnom"/> </fo:block> </fo:table-cell>
								<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border="solid 0.3mm" text-align="center"> <fo:block> <xsl:value-of select="/mistral/enteteliste/zontitsir"/> </fo:block> </fo:table-cell>
								<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border="solid 0.3mm" text-align="center"> <fo:block> <xsl:value-of select="/mistral/enteteliste/zontitnaf"/> </fo:block> </fo:table-cell>
							</fo:table-row>
						</fo:table-header>
						<fo:table-footer>
						</fo:table-footer>
						<fo:table-body>
							<fo:table-row line-height="10pt">
								<fo:table-cell number-columns-spanned="8"> <fo:block color="white"> . </fo:block> </fo:table-cell>
							</fo:table-row>
							<xsl:apply-templates select="tso"/>
						</fo:table-body>
					</fo:table>
					<fo:block id="Fin"/>
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>


	<xsl:template match="/mistral/tso">
		<fo:table-row line-height="15pt">
		  <fo:table-cell color="white"><fo:block> . </fo:block> </fo:table-cell>
			<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" text-align="center"> <fo:block> <xsl:value-of select="cod"/> </fo:block> </fo:table-cell>
			<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" text-align="left">   <fo:block> <xsl:value-of select="lib"/> </fo:block> </fo:table-cell>
			<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" text-align="center"> <fo:block> <xsl:value-of select="abr"/> </fo:block> </fo:table-cell>
  		<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" text-align="center"> <fo:block> <xsl:value-of select="fct"/> </fo:block> </fo:table-cell>
  		<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" text-align="center"> <fo:block> <xsl:value-of select="nom"/> </fo:block> </fo:table-cell>
  		<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" text-align="center"> <fo:block> <xsl:choose><xsl:when test="sir=1"> <fo:external-graphic src="/acu/mx/fop/CBCHECK13.JPG" width="3mm" height="3mm"/> </xsl:when> <xsl:otherwise> <fo:external-graphic src="/acu/mx/fop/CBUNCHK13.JPG" width="3mm" height="3mm"/> </xsl:otherwise> </xsl:choose> </fo:block> </fo:table-cell>
  		<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" text-align="center"> <fo:block> <xsl:choose><xsl:when test="naf=1"> <fo:external-graphic src="/acu/mx/fop/CBCHECK13.JPG" width="3mm" height="3mm"/> </xsl:when> <xsl:otherwise> <fo:external-graphic src="/acu/mx/fop/CBUNCHK13.JPG" width="3mm" height="3mm"/> </xsl:otherwise> </xsl:choose> </fo:block> </fo:table-cell>
		</fo:table-row>
	</xsl:template>

 
	<xsl:template match="titre">
		<fo:block-container left="0.0mm" top="30mm" width="195mm" height="7mm" position="absolute">
			<fo:block font-size="13pt" font-weight="bold" text-align="center"> <xsl:value-of select="text()"/> </fo:block>
		</fo:block-container>
	</xsl:template>
</xsl:stylesheet>      
