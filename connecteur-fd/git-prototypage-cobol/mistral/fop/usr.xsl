<?xml version="1.0" encoding="ISO-8859-1"?>															<!--Norme à respecter-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.0">	<!--Norme à respecter-->
	<xsl:import href="/acu/mistral/fop/enteteliste.xsl"/>											<!--Importe l'entête de la page-->
	<xsl:decimal-format name="montants_mistral" decimal-separator="," grouping-separator="."/>
	<xsl:template match="/mistral">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">							<!--Norme à respecter-->
			<fo:layout-master-set>
				<fo:simple-page-master master-name="master-page" page-height="297mm" page-width="210mm" margin-top="6.0mm" margin-bottom="10mm" margin-left="7mm" margin-right="5mm">
					<fo:region-body margin-top="25mm" margin-bottom="10mm"/>
					<fo:region-before extent="30mm"/>
					<fo:region-after extent="10mm"/>
				</fo:simple-page-master>
			</fo:layout-master-set>
			<fo:page-sequence master-reference="master-page">
				<fo:static-content flow-name="xsl-region-before" font-size="9pt">
					<xsl:apply-templates select="enteteliste"/>												<!--Sélectionne et affiche l'entête de la page-->
				</fo:static-content>
				<fo:static-content flow-name="xsl-region-after" font-size="9pt">
					<xsl:apply-templates select="piedliste"/>													<!--Sélectionne et affiche le pied de page-->
				</fo:static-content>
				<fo:flow flow-name="xsl-region-body" line-height="14pt" font-size="8pt">								<!--Taille de la police pour l'espace de travail-->
					<xsl:apply-templates select="usr"/>
					<xsl:apply-templates select="criteres"/>
					<fo:block id="Fin"/>
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>

	<xsl:template match="usr">
		<fo:table border="solid 0.1mm">
			<fo:table-column padding-top="-0.15mm" padding-left="-0.15mm" padding-right="-0.15mm" column-width="10mm"/>
			<fo:table-column padding-top="-0.15mm" padding-left="-0.15mm" padding-right="-0.15mm" column-width="15mm"/>
			<fo:table-column padding-top="-0.15mm" padding-left="-0.15mm" padding-right="-0.15mm" column-width="85mm"/>
			<fo:table-column padding-top="-0.15mm" padding-left="-0.15mm" padding-right="-0.15mm" column-width="15mm"/>
			<fo:table-column padding-top="-0.15mm" padding-left="-0.15mm" padding-right="-0.15mm" column-width="15mm"/>
			<fo:table-column padding-top="-0.15mm" padding-left="-0.15mm" padding-right="-0.15mm" column-width="15mm"/>
			<fo:table-column padding-top="-0.15mm" padding-left="-0.15mm" padding-right="-0.15mm" column-width="05mm"/>
			<fo:table-column padding-top="-0.15mm" padding-left="-0.15mm" padding-right="-0.15mm" column-width="05mm"/>
			<fo:table-column padding-top="-0.15mm" padding-left="-0.15mm" padding-right="-0.15mm" column-width="15mm"/>
			<fo:table-column padding-top="-0.15mm" padding-left="-0.15mm" padding-right="-0.15mm" column-width="05mm"/>
			<fo:table-column padding-top="-0.15mm" padding-left="-0.15mm" padding-right="-0.15mm" column-width="05mm"/>
			<fo:table-column padding-top="-0.15mm" padding-left="-0.15mm" padding-right="-0.15mm" column-width="05mm"/>
			<fo:table-header>
				<fo:table-row font-weight="bold">
					<fo:table-cell number-columns-spanned="5"><fo:block>&#160;&#160;<xsl:value-of select="usr-clp"/></fo:block></fo:table-cell>
					<fo:table-cell number-columns-spanned="3" background-color="{$colorbleu}" border="solid 0.1mm" text-align="center"><fo:block> <xsl:value-of select="../enteteliste/zontitste"/> </fo:block></fo:table-cell>
					<fo:table-cell number-columns-spanned="4" background-color="{$colorbleu}" border="solid 0.1mm" text-align="center"><fo:block> <xsl:value-of select="../enteteliste/zontitage"/> </fo:block></fo:table-cell>
				</fo:table-row>
				<fo:table-row text-align="center" font-weight="bold" background-color="{$colorbleu}">
					<fo:table-cell border="solid 0.1mm"><fo:block> <xsl:value-of select="../enteteliste/zontitniv"/> </fo:block></fo:table-cell>
					<fo:table-cell border="solid 0.1mm"><fo:block> <xsl:value-of select="../enteteliste/zontitid"/> </fo:block></fo:table-cell>
					<fo:table-cell border="solid 0.1mm"><fo:block> <xsl:value-of select="../enteteliste/zontitnpr"/> </fo:block></fo:table-cell>
					<fo:table-cell border="solid 0.1mm"><fo:block> <xsl:value-of select="../enteteliste/zontitreg"/> </fo:block></fo:table-cell>
					<fo:table-cell border="solid 0.1mm"><fo:block> <xsl:value-of select="../enteteliste/zontitsup"/> </fo:block></fo:table-cell>
					<fo:table-cell border="solid 0.1mm"><fo:block> <xsl:value-of select="../enteteliste/zontitno"/> </fo:block></fo:table-cell>
					<fo:table-cell border="solid 0.1mm"><fo:block>B</fo:block></fo:table-cell>
					<fo:table-cell border="solid 0.1mm"><fo:block>C</fo:block></fo:table-cell>
					<fo:table-cell border="solid 0.1mm"><fo:block> <xsl:value-of select="../enteteliste/zontitno"/> </fo:block></fo:table-cell>
					<fo:table-cell border="solid 0.1mm"><fo:block>B</fo:block></fo:table-cell>
					<fo:table-cell border="solid 0.1mm"><fo:block>C</fo:block></fo:table-cell>
					<fo:table-cell border="solid 0.1mm"><fo:block>A</fo:block></fo:table-cell>
				</fo:table-row>
			</fo:table-header>
			<fo:table-footer>
			</fo:table-footer>
			<fo:table-body>
				<xsl:apply-templates select="clp"/>
			</fo:table-body>	
		</fo:table>		
	</xsl:template>

	<xsl:template match="clp">
		<fo:table-row>
			<fo:table-cell number-columns-spanned="12"><fo:block>&#160;</fo:block></fo:table-cell>
		</fo:table-row>
		<fo:table-row margin-left="0.5mm" margin-right="0.5mm" font-weight="bold" background-color="lightgrey">
			<fo:table-cell number-columns-spanned="12" border="solid 0.1mm"><fo:block><xsl:value-of select="clp-nom"/></fo:block></fo:table-cell>
		</fo:table-row>
		<xsl:apply-templates select="lig"/>
	</xsl:template>

	<xsl:template match="lig">
		<fo:table-row margin-left="0.5mm" margin-right="0.5mm" keep-with-previous="always">
			<fo:table-cell border-bottom="solid 0.1mm" text-align="center"><fo:block><xsl:value-of select="lig-niv"/></fo:block></fo:table-cell>
			<fo:table-cell border-bottom="solid 0.1mm" text-align="center"><fo:block><xsl:value-of select="lig-ide"/></fo:block></fo:table-cell>
			<fo:table-cell border-bottom="solid 0.1mm" text-align="left">  <fo:block><xsl:value-of select="lig-nom"/></fo:block></fo:table-cell>
			<fo:table-cell border-bottom="solid 0.1mm" text-align="center"><fo:block><xsl:value-of select="lig-reg"/></fo:block></fo:table-cell>
			<fo:table-cell border-bottom="solid 0.1mm" text-align="center"><fo:block><xsl:value-of select="lig-sup"/></fo:block></fo:table-cell>
			<fo:table-cell border-bottom="solid 0.1mm" border-left="solid 0.3mm" text-align="center"><fo:block><xsl:value-of select="lig-soc"/></fo:block></fo:table-cell>
			<fo:table-cell border-bottom="solid 0.1mm" border-left="solid 0.1mm" text-align="center"><fo:block><xsl:value-of select="lig-isob"/></fo:block></fo:table-cell>
			<fo:table-cell border-bottom="solid 0.1mm" border-left="solid 0.1mm" text-align="center"><fo:block><xsl:value-of select="lig-isoc"/></fo:block></fo:table-cell>
			<fo:table-cell border-bottom="solid 0.1mm" border-left="solid 0.3mm" text-align="center"><fo:block><xsl:value-of select="lig-age"/></fo:block></fo:table-cell>
			<fo:table-cell border-bottom="solid 0.1mm" border-left="solid 0.1mm" text-align="center"><fo:block><xsl:value-of select="lig-iagb"/></fo:block></fo:table-cell>
			<fo:table-cell border-bottom="solid 0.1mm" border-left="solid 0.1mm" text-align="center"><fo:block><xsl:value-of select="lig-iagc"/></fo:block></fo:table-cell>
			<fo:table-cell border-bottom="solid 0.1mm" border-left="solid 0.1mm" text-align="center"><fo:block><xsl:value-of select="lig-iagc"/></fo:block></fo:table-cell>
		</fo:table-row>
	</xsl:template>

	<xsl:template match="criteres">
		<fo:block color="white">&#160;</fo:block>
		<fo:table table-layout="fixed" border="solid 0.1mm" width="195mm">
			<fo:table-column column-width="195mm"/>
			<fo:table-header>
			</fo:table-header>
			<fo:table-body>
				<fo:table-row background-color="{$colorbleu}">
					<fo:table-cell border="solid 0.1mm"><fo:block text-decoration="underline"> &#160;&#160; Abréviations : </fo:block></fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell>
						<xsl:for-each select="cri"><fo:block> &#160; <xsl:value-of select="text()"/></fo:block></xsl:for-each>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</xsl:template>

	<xsl:template match="titre">
		<fo:block-container left="0.0mm" top="30mm" width="195mm" height="7mm" position="absolute">
			<fo:block font-size="13pt" font-weight="bold" text-align="center"> <xsl:value-of select="text()"/> </fo:block>
		</fo:block-container>
	</xsl:template>
</xsl:stylesheet>