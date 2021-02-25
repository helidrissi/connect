<?xml version="1.0" encoding="ISO-8859-1"?>	<!--Norme à respecter-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.0">	<!--Norme à respecter-->
	<xsl:import href="/acu/mistral/fop/enteteliste.xsl"/>	<!--Importe l'entête de la page-->
	<xsl:template match="/mistral">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">		<!--Norme à respecter-->
<fo:layout-master-set>
<fo:simple-page-master master-name="master-page" page-height="297mm" page-width="210mm" margin-top="6.0mm" margin-bottom="10mm" margin-left="7mm" margin-right="5mm">
<fo:region-body margin-top="35mm" margin-bottom="10mm"/>
<fo:region-before extent="50mm"/>
<fo:region-after extent="10mm"/>
</fo:simple-page-master>
</fo:layout-master-set>
			<fo:page-sequence master-reference="master-page">
        <fo:static-content flow-name="xsl-region-before" font-size="9pt">				
					<xsl:apply-templates select="enteteliste"/>		<!--Sélectionne et affiche l'entête de la page-->
					<fo:block-container
               	font-size="10pt" 
               	font-weight="bold" 
               	text-align="center" 
               	padding-top="2.2mm" 
               	padding-right="2.2mm" 
               	padding-left="2.2mm" 
               	left="5mm" 
               	top="24mm" 
               	width="60mm" 
               	height="5mm" 
               	position="absolute"> 
						<fo:block>Nombre d'utilisateurs : <xsl:value-of select="nut"/> </fo:block>
					</fo:block-container>			
					<fo:block-container
               	font-size="10pt" 
               	font-weight="bold" 
               	text-align="center" 
               	padding-top="2.2mm" 
               	padding-right="2.2mm" 
               	padding-left="2.2mm" 
               	left="70mm" 
               	top="24mm" 
               	width="60mm" 
               	height="5mm" 
               	position="absolute"> 
						<fo:block>
							<xsl:choose>
							<xsl:when test="cas=1">
								<fo:external-graphic src="/acu/mx/fop/CBCHECK13.JPG" width="2mm" height="2mm" />
							</xsl:when>
							<xsl:otherwise>
								<fo:external-graphic src="/acu/mx/fop/CBUNCHK13.JPG" width="2mm" height="2mm" />
							</xsl:otherwise>
							</xsl:choose>
							Multisociétés
						</fo:block>
					</fo:block-container>			
					<fo:block-container
               	font-size="10pt" 
               	font-weight="bold" 
               	text-align="center" 
               	padding-top="2.2mm" 
               	padding-right="2.2mm" 
               	padding-left="2.2mm" 
               	left="70mm" 
               	top="29mm" 
               	width="60mm" 
               	height="5mm" 
               	position="absolute"> 
						<fo:block>
							<xsl:choose>
							<xsl:when test="caa=1">
								<fo:external-graphic src="/acu/mx/fop/CBCHECK13.JPG" width="2mm" height="2mm" />
							</xsl:when>
							<xsl:otherwise>
								<fo:external-graphic src="/acu/mx/fop/CBUNCHK13.JPG" width="2mm" height="2mm" />
							</xsl:otherwise>
							</xsl:choose>
							Multiagences
						</fo:block>
					</fo:block-container>			
					<xsl:if test="sys!=''">
						<fo:block-container
               		font-size="10pt" 
               		font-weight="bold" 
               		text-align="center" 
               		padding-top="2.2mm" 
               		padding-right="2.2mm" 
               		padding-left="2.2mm" 
               		left="140mm" 
               		top="24mm" 
               		width="60mm" 
               		height="5mm" 
               		position="absolute"> 
							<fo:block>Système : <xsl:value-of select="sys"/> </fo:block>
						</fo:block-container>			
					</xsl:if>		
					<fo:block-container
               	font-size="10pt" 
               	font-weight="bold" 
               	text-align="center" 
               	padding-top="2.2mm" 
               	padding-right="2.2mm" 
               	padding-left="2.2mm" 
               	left="140mm" 
               	top="29mm" 
               	width="60mm" 
               	height="5mm" 
               	position="absolute"> 
						<fo:block>Logiciel : <xsl:value-of select="log"/> </fo:block>
					</fo:block-container>			
				</fo:static-content>
				<fo:static-content flow-name="xsl-region-after" font-size="9pt">
					<xsl:apply-templates select="piedliste"/>		<!--Sélectionne et affiche le pied de page-->
				</fo:static-content>
				<fo:flow flow-name="xsl-region-body" font-size="9pt">		<!--Taille de la police pour l'espace de travail-->
					<fo:table table-layout="fixed" border-style="solid 0.3mm" border-width="0.0mm" width="195mm">		<!--Taille du tableau-->
						<fo:table-column  border="solid 0.3mm" border-right="0.0mm" column-width="14mm" />
						<fo:table-column  border="solid 0.3mm" border-right="0.0mm" column-width="14mm"/>
						<fo:table-column  border="solid 0.3mm" border-right="0.0mm" column-width="55mm"/>
						<fo:table-column  border="solid 0.3mm" border-right="0.0mm" column-width="28mm"/>
						<fo:table-column  border="solid 0.3mm" border-right="0.0mm" column-width="28mm"/>
						<fo:table-column  border="solid 0.3mm" border-right="0.0mm" column-width="28mm"/>
						<fo:table-column  border="solid 0.3mm" column-width="28mm" />
						<fo:table-header>
							<fo:table-row line-height="20pt" background-color="{$colorgris}" color="black" font-weight="bold">
								<fo:table-cell  border="solid 0.3mm" text-align="center"> <fo:block> Logiciel </fo:block> </fo:table-cell>
								<fo:table-cell  border="solid 0.3mm" text-align="center"> <fo:block> Module </fo:block> </fo:table-cell>
								<fo:table-cell  border="solid 0.3mm" text-align="center"> <fo:block> Désignation </fo:block> </fo:table-cell>
								<fo:table-cell  border="solid 0.3mm" text-align="center"> <fo:block> Nb licences 1 </fo:block> </fo:table-cell>
								<fo:table-cell  border="solid 0.3mm" text-align="center"> <fo:block> Nb licences 2 </fo:block> </fo:table-cell>
								<fo:table-cell  border="solid 0.3mm" text-align="center"> <fo:block> Nb licences 3 </fo:block> </fo:table-cell>
								<fo:table-cell  border="solid 0.3mm" text-align="center"> <fo:block> Nb licences 4 </fo:block> </fo:table-cell>
							</fo:table-row>
						</fo:table-header>
						<fo:table-footer>
						</fo:table-footer>
						<fo:table-body>
							<fo:table-row line-height="10pt">
								<fo:table-cell number-columns-spanned="7"> <fo:block color="white"> . </fo:block> </fo:table-cell>
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
	
	<xsl:variable name="textcolor">
		<xsl:choose>
		<xsl:when test="log!=''"><xsl:value-of select="$colorgris"/></xsl:when>
		<xsl:otherwise>transparent</xsl:otherwise>
		</xsl:choose>
	</xsl:variable>

	<xsl:variable name="marge">
		<xsl:choose>
		<xsl:when test="log!=''">0.5mm</xsl:when>
		<xsl:otherwise>5mm</xsl:otherwise>
		</xsl:choose>
	</xsl:variable>
	
		<fo:table-row 
			line-height="10pt" font-size="9pt" 
         background-color="{$textcolor}">
			<fo:table-cell text-align="center"> <fo:block> <xsl:value-of select="log"/> </fo:block> </fo:table-cell>
			<fo:table-cell text-align="center"> <fo:block> <xsl:value-of select="mod"/> </fo:block> </fo:table-cell>
			<fo:table-cell text-align="left" margin-left="{$marge}"> <fo:block> <xsl:value-of select="des"/> </fo:block> </fo:table-cell>
			<fo:table-cell text-align="left" margin-left="0.5mm"> <fo:block> <xsl:if test="nut1!=''"> <xsl:value-of select="lnut1"/> &#160; <xsl:value-of select="nut1"/> </xsl:if> </fo:block> </fo:table-cell>
			<fo:table-cell text-align="left" margin-left="0.5mm"> <fo:block> <xsl:if test="nut2!=''"> <xsl:value-of select="lnut2"/> &#160; <xsl:value-of select="nut2"/> </xsl:if> </fo:block> </fo:table-cell>
			<fo:table-cell text-align="left" margin-left="0.5mm"> <fo:block> <xsl:if test="nut3!=''"> <xsl:value-of select="lnut3"/> &#160; <xsl:value-of select="nut3"/> </xsl:if> </fo:block> </fo:table-cell>
			<fo:table-cell text-align="left" margin-left="0.5mm"> <fo:block> <xsl:if test="nut4!=''"> <xsl:value-of select="lnut4"/> &#160; <xsl:value-of select="nut4"/> </xsl:if> </fo:block> </fo:table-cell>
		</fo:table-row>
	</xsl:template>

 
</xsl:stylesheet>      
