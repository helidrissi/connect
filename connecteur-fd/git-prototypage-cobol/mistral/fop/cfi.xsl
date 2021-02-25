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
						<fo:table-column  border="solid 0.3mm" border-right="0.0mm" column-width="30mm" />
						<fo:table-column  border="solid 0.3mm" border-right="0.0mm" column-width="15mm"/>
						<fo:table-column  border="solid 0.3mm" border-right="0.0mm" column-width="25mm"/>
						<fo:table-column  border="solid 0.3mm" border-right="0.0mm" column-width="30mm"/>
						<fo:table-column  border="solid 0.3mm" border-right="0.0mm" column-width="5mm"/>
						<fo:table-column  border="solid 0.3mm" border-right="0.0mm" column-width="5mm"/>
						<fo:table-column  border="solid 0.3mm" border-right="0.0mm" column-width="5mm"/>
						<fo:table-column  border="solid 0.3mm" border-right="0.0mm" column-width="5mm"/>
						<fo:table-column  border="solid 0.3mm" border-right="0.0mm" column-width="5mm"/>
						<fo:table-column  border="solid 0.3mm" border-right="0.0mm" column-width="5mm"/>
						<fo:table-column  border="solid 0.3mm" border-right="0.0mm" column-width="5mm"/>
						<fo:table-column  border="solid 0.3mm" border-right="0.0mm" column-width="5mm"/>
						<fo:table-column  border="solid 0.3mm" border-right="0.0mm" column-width="5mm"/>
						<fo:table-column  border="solid 0.3mm" column-width="20mm" />
						<fo:table-header>
							<fo:table-row line-height="20pt" background-color="{$colorgris}" color="black" font-weight="bold">
								<fo:table-cell  border="solid 0.3mm" text-align="center"> <fo:block> Nom </fo:block> </fo:table-cell>
								<fo:table-cell  border="solid 0.3mm" text-align="center"> <fo:block> Type </fo:block> </fo:table-cell>
								<fo:table-cell  border="solid 0.3mm" text-align="center"> <fo:block> Modèle </fo:block> </fo:table-cell>
								<fo:table-cell  border="solid 0.3mm" text-align="center"> <fo:block> Pilote </fo:block> </fo:table-cell>
								<fo:table-cell  border="solid 0.3mm" text-align="center"> <fo:block> L/P </fo:block> </fo:table-cell>
								<fo:table-cell  border="solid 0.3mm" text-align="center"> <fo:block> NbB </fo:block> </fo:table-cell>
								<fo:table-cell  border="solid 0.3mm" text-align="center"> <fo:block> Bac </fo:block> </fo:table-cell>
								<fo:table-cell  border="solid 0.3mm" text-align="center"> <fo:block> NbR </fo:block> </fo:table-cell>
								<fo:table-cell  border="solid 0.3mm" text-align="center"> <fo:block> Rec </fo:block> </fo:table-cell>
								<fo:table-cell  border="solid 0.3mm" text-align="center"> <fo:block> R/V </fo:block> </fo:table-cell>
								<fo:table-cell  border="solid 0.3mm" text-align="center"> <fo:block> Cou </fo:block> </fo:table-cell>
								<fo:table-cell  border="solid 0.3mm" text-align="center"> <fo:block> Pdf </fo:block> </fo:table-cell>
								<fo:table-cell  border="solid 0.3mm" text-align="center"> <fo:block> xGr </fo:block> </fo:table-cell>
								<fo:table-cell  border="solid 0.3mm" text-align="center"> <fo:block> Spool </fo:block> </fo:table-cell>
							</fo:table-row>
						</fo:table-header>
						<fo:table-footer>
						</fo:table-footer>
						<fo:table-body>
							<fo:table-row line-height="10pt">
								<fo:table-cell number-columns-spanned="14"> <fo:block color="white"> . </fo:block> </fo:table-cell>
							</fo:table-row>
							<xsl:apply-templates select="lig"/>
						</fo:table-body>
					</fo:table>
					<fo:block id="Fin"/>
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>


	<xsl:template match="lig">
		<fo:table-row line-height="10pt" font-size="7pt">
			<fo:table-cell  text-align="left" margin-left="0.5mm"> <fo:block> <xsl:value-of select="nom"/> </fo:block> </fo:table-cell>
			<fo:table-cell  text-align="left" margin-left="0.5mm">   <fo:block> <xsl:value-of select="typ"/> </fo:block> </fo:table-cell>
			<fo:table-cell  text-align="left" margin-left="0.5mm">   <fo:block> <xsl:value-of select="mod"/> </fo:block> </fo:table-cell>
			<fo:table-cell  text-align="left" margin-left="0.5mm">   <fo:block> <xsl:value-of select="pil"/> </fo:block> </fo:table-cell>
			<fo:table-cell  text-align="center"> <fo:block> <xsl:value-of select="lpm"/> </fo:block> </fo:table-cell>
  			<fo:table-cell  text-align="center"> <fo:block> <xsl:value-of select="nbb"/> </fo:block> </fo:table-cell>
  			<fo:table-cell  text-align="center"> <fo:block> <xsl:value-of select="bac"/> </fo:block> </fo:table-cell>
  			<fo:table-cell  text-align="center"> <fo:block> <xsl:value-of select="nbr"/> </fo:block> </fo:table-cell>
  			<fo:table-cell  text-align="center"> <fo:block> <xsl:value-of select="rec"/> </fo:block> </fo:table-cell>
  			<fo:table-cell  text-align="center"> <fo:block> <xsl:value-of select="rcv"/> </fo:block> </fo:table-cell>
  			<fo:table-cell  text-align="center"> <fo:block> <xsl:value-of select="cou"/> </fo:block> </fo:table-cell>
  			<fo:table-cell  text-align="center"> <fo:block> <xsl:value-of select="pdf"/> </fo:block> </fo:table-cell>
  			<fo:table-cell  text-align="center"> <fo:block> <xsl:value-of select="gri"/> </fo:block> </fo:table-cell>
			<fo:table-cell  text-align="left" margin-left="0.5mm">   <fo:block> <xsl:value-of select="spo"/> </fo:block> </fo:table-cell>
		</fo:table-row>
	</xsl:template>

 
	<xsl:template match="titre">
		<fo:block-container left="0.0mm" top="30mm" width="195mm" height="7mm" position="absolute">
			<fo:block font-size="13pt" font-weight="bold" text-align="center"> <xsl:value-of select="text()"/> </fo:block>
		</fo:block-container>
	</xsl:template>
</xsl:stylesheet>      
