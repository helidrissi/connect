<?xml version="1.0" encoding="ISO-8859-1"?>

<xsl:stylesheet 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:fo="http://www.w3.org/1999/XSL/Format" 
	version="1.0"><!--Norme à respecter-->
	
	<!--Importe l'entête de la page-->
	<xsl:import href="/webp/mistral/fop/enteteliste.xsl"/>	

	<xsl:variable name="RECORD_BY_PAGE" select="380"/>
	
	<xsl:variable name="height">
		<xsl:choose>
		<xsl:when test="/mistral/format='P'">210mm</xsl:when>
		<xsl:otherwise>297mm</xsl:otherwise>
		</xsl:choose>
	</xsl:variable>

	<xsl:variable name="width">
		<xsl:choose>
		<xsl:when test="/mistral/format='P'">297mm</xsl:when>
		<xsl:otherwise>210mm</xsl:otherwise>
		</xsl:choose>
	</xsl:variable>

	<xsl:variable name="widthtab">
		<xsl:choose>
		<xsl:when test="/mistral/format='P'">282mm</xsl:when>
		<xsl:otherwise>195mm</xsl:otherwise>
		</xsl:choose>
	</xsl:variable>
	
	<xsl:template match="/mistral">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format"><!--Norme à respecter-->
			<fo:layout-master-set>
				<fo:simple-page-master master-name="master-page" page-height="{$height}" page-width="{$width}" margin-top="6.0mm" margin-bottom="10mm" margin-left="7mm" margin-right="5mm">
					<fo:region-body margin-top="25mm" margin-bottom="10mm"/>
					<fo:region-before extent="30mm"/>
					<fo:region-after extent="10mm"/>
				</fo:simple-page-master>
			</fo:layout-master-set>

			<xsl:apply-templates select="fam"/>

		</fo:root>
	</xsl:template>

	<xsl:template match="fam">
		<xsl:for-each select="art[position() mod $RECORD_BY_PAGE = 1]">
			<fo:page-sequence master-reference="master-page" initial-page-number="auto">
				<fo:static-content flow-name="xsl-region-before" font-size="9pt">
<!--Sélectionne et affiche l'entête de la page-->
					<xsl:choose>
					<xsl:when test="/mistral/format='P'">
						<xsl:apply-templates select="/mistral/entetelistepaysage"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:apply-templates select="/mistral/enteteliste"/>
					</xsl:otherwise>
					</xsl:choose>
						
					<fo:block-container text-align="left" left="0mm" top="20mm" width="120mm" height="7mm" position="absolute">
						<fo:block font-weight="bold" line-height="15pt">
							<xsl:value-of select="/mistral/sel"/>
						</fo:block>
					</fo:block-container>
				</fo:static-content>
				<fo:static-content flow-name="xsl-region-after" font-size="9pt">
<!--Sélectionne et affiche le pied de page-->
					<xsl:choose>
					<xsl:when test="/mistral/format='P'">
						<xsl:apply-templates select="/mistral/piedlistepaysage"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:apply-templates select="/mistral/piedliste"/>
					</xsl:otherwise>
					</xsl:choose>

				</fo:static-content>
				
				<fo:flow 
					flow-name="xsl-region-body" 
					font-size="7pt" 
					line-height="12pt" 
					font-family="{$fontfamily}"><!--Taille de la police pour l'espace de travail-->

					<fo:table 
						table-layout="fixed" 
						border="solid 0.3mm" 
						width="{$widthtab}">

						<xsl:if test="/mistral/collon01 != ''">				
							<xsl:variable name="longcar"><xsl:value-of select="/mistral/collon01"/></xsl:variable> 		<!-- taille de la colonne en caractères -->
							<xsl:variable name="longcol" select="$longcar * 1.1 + ($longcar &lt; 10) * 1.2"/> 			<!-- taille de la colonne en mm -->
							<xsl:variable name="longmm"><xsl:value-of select="$longcol"/>mm</xsl:variable> 
							<fo:table-column 
								border-right="solid 0.2mm" 
								border-left="solid 0.2mm" 
								column-width="{$longmm}"/>
						</xsl:if>
						<xsl:if test="/mistral/collon02 != ''">				
							<xsl:variable name="longcar"><xsl:value-of select="/mistral/collon02"/></xsl:variable> 		<!-- taille de la colonne en caractères -->
							<xsl:variable name="longcol" select="$longcar * 1.1 + ($longcar &lt; 10) * 1.2"/> 			<!-- taille de la colonne en mm -->
							<xsl:variable name="longmm"><xsl:value-of select="$longcol"/>mm</xsl:variable> 
							<fo:table-column 
								border-right="solid 0.2mm" 
								column-width="{$longmm}"/>
						</xsl:if>
						<xsl:if test="/mistral/collon03 != ''">				
							<xsl:variable name="longcar"><xsl:value-of select="/mistral/collon03"/></xsl:variable> 		<!-- taille de la colonne en caractères -->
							<xsl:variable name="longcol" select="$longcar * 1.1 + ($longcar &lt; 10) * 1.2"/> 			<!-- taille de la colonne en mm -->
							<xsl:variable name="longmm"><xsl:value-of select="$longcol"/>mm</xsl:variable> 
							<fo:table-column 
								border-right="solid 0.2mm" 
								column-width="{$longmm}"/>
						</xsl:if>
						<xsl:if test="/mistral/collon04 != ''">				
							<xsl:variable name="longcar"><xsl:value-of select="/mistral/collon04"/></xsl:variable> 		<!-- taille de la colonne en caractères -->
							<xsl:variable name="longcol" select="$longcar * 1.1 + ($longcar &lt; 10) * 1.2"/> 			<!-- taille de la colonne en mm -->
							<xsl:variable name="longmm"><xsl:value-of select="$longcol"/>mm</xsl:variable> 
							<fo:table-column 
								border-right="solid 0.2mm" 
								column-width="{$longmm}"/>
						</xsl:if>
						<xsl:if test="/mistral/collon05 != ''">				
							<xsl:variable name="longcar"><xsl:value-of select="/mistral/collon05"/></xsl:variable> 		<!-- taille de la colonne en caractères -->
							<xsl:variable name="longcol" select="$longcar * 1.1 + ($longcar &lt; 10) * 1.2"/> 			<!-- taille de la colonne en mm -->
							<xsl:variable name="longmm"><xsl:value-of select="$longcol"/>mm</xsl:variable> 
							<fo:table-column 
								border-right="solid 0.2mm" 
								column-width="{$longmm}"/>
						</xsl:if>
						<xsl:if test="/mistral/collon06 != ''">				
							<xsl:variable name="longcar"><xsl:value-of select="/mistral/collon06"/></xsl:variable> 		<!-- taille de la colonne en caractères -->
							<xsl:variable name="longcol" select="$longcar * 1.1 + ($longcar &lt; 10) * 1.2"/> 			<!-- taille de la colonne en mm -->
							<xsl:variable name="longmm"><xsl:value-of select="$longcol"/>mm</xsl:variable> 
							<fo:table-column 
								border-right="solid 0.2mm" 
								column-width="{$longmm}"/>
						</xsl:if>
						<xsl:if test="/mistral/collon07 != ''">				
							<xsl:variable name="longcar"><xsl:value-of select="/mistral/collon07"/></xsl:variable> 		<!-- taille de la colonne en caractères -->
							<xsl:variable name="longcol" select="$longcar * 1.1 + ($longcar &lt; 10) * 1.2"/> 			<!-- taille de la colonne en mm -->
							<xsl:variable name="longmm"><xsl:value-of select="$longcol"/>mm</xsl:variable> 
							<fo:table-column 
								border-right="solid 0.2mm" 
								column-width="{$longmm}"/>
						</xsl:if>
						<xsl:if test="/mistral/collon08 != ''">				
							<xsl:variable name="longcar"><xsl:value-of select="/mistral/collon08"/></xsl:variable> 		<!-- taille de la colonne en caractères -->
							<xsl:variable name="longcol" select="$longcar * 1.1 + ($longcar &lt; 10) * 1.2"/> 			<!-- taille de la colonne en mm -->
							<xsl:variable name="longmm"><xsl:value-of select="$longcol"/>mm</xsl:variable> 
							<fo:table-column 
								border-right="solid 0.2mm" 
								column-width="{$longmm}"/>
						</xsl:if>
						<xsl:if test="/mistral/collon09 != ''">				
							<xsl:variable name="longcar"><xsl:value-of select="/mistral/collon09"/></xsl:variable> 		<!-- taille de la colonne en caractères -->
							<xsl:variable name="longcol" select="$longcar * 1.1 + ($longcar &lt; 10) * 1.2"/> 			<!-- taille de la colonne en mm -->
							<xsl:variable name="longmm"><xsl:value-of select="$longcol"/>mm</xsl:variable> 
							<fo:table-column 
								border-right="solid 0.2mm" 
								column-width="{$longmm}"/>
						</xsl:if>
						<xsl:if test="/mistral/collon10 != ''">				
							<xsl:variable name="longcar"><xsl:value-of select="/mistral/collon10"/></xsl:variable> 		<!-- taille de la colonne en caractères -->
							<xsl:variable name="longcol" select="$longcar * 1.1 + ($longcar &lt; 10) * 1.2"/> 			<!-- taille de la colonne en mm -->
							<xsl:variable name="longmm"><xsl:value-of select="$longcol"/>mm</xsl:variable> 
							<fo:table-column 
								border-right="solid 0.2mm" 
								column-width="{$longmm}"/>
						</xsl:if>
						<xsl:if test="/mistral/collon11 != ''">				
							<xsl:variable name="longcar"><xsl:value-of select="/mistral/collon11"/></xsl:variable> 		<!-- taille de la colonne en caractères -->
							<xsl:variable name="longcol" select="$longcar * 1.1 + ($longcar &lt; 10) * 1.2"/> 			<!-- taille de la colonne en mm -->
							<xsl:variable name="longmm"><xsl:value-of select="$longcol"/>mm</xsl:variable> 
							<fo:table-column 
								border-right="solid 0.2mm" 
								column-width="{$longmm}"/>
						</xsl:if>
						<xsl:if test="/mistral/collon12 != ''">				
							<xsl:variable name="longcar"><xsl:value-of select="/mistral/collon12"/></xsl:variable> 		<!-- taille de la colonne en caractères -->
							<xsl:variable name="longcol" select="$longcar * 1.1 + ($longcar &lt; 10) * 1.2"/> 			<!-- taille de la colonne en mm -->
							<xsl:variable name="longmm"><xsl:value-of select="$longcol"/>mm</xsl:variable> 
							<fo:table-column 
								border-right="solid 0.2mm" 
								column-width="{$longmm}"/>
						</xsl:if>
						<xsl:if test="/mistral/collon13 != ''">				
							<xsl:variable name="longcar"><xsl:value-of select="/mistral/collon13"/></xsl:variable> 		<!-- taille de la colonne en caractères -->
							<xsl:variable name="longcol" select="$longcar * 1.1 + ($longcar &lt; 10) * 1.2"/> 			<!-- taille de la colonne en mm -->
							<xsl:variable name="longmm"><xsl:value-of select="$longcol"/>mm</xsl:variable> 
							<fo:table-column 
								border-right="solid 0.2mm" 
								column-width="{$longmm}"/>
						</xsl:if>
						<xsl:if test="/mistral/collon14 != ''">				
							<xsl:variable name="longcar"><xsl:value-of select="/mistral/collon14"/></xsl:variable> 		<!-- taille de la colonne en caractères -->
							<xsl:variable name="longcol" select="$longcar * 1.1 + ($longcar &lt; 10) * 1.2"/> 			<!-- taille de la colonne en mm -->
							<xsl:variable name="longmm"><xsl:value-of select="$longcol"/>mm</xsl:variable> 
							<fo:table-column 
								border-right="solid 0.2mm" 
								column-width="{$longmm}"/>
						</xsl:if>
						<xsl:if test="/mistral/collon15 != ''">				
							<xsl:variable name="longcar"><xsl:value-of select="/mistral/collon15"/></xsl:variable> 		<!-- taille de la colonne en caractères -->
							<xsl:variable name="longcol" select="$longcar * 1.1 + ($longcar &lt; 10) * 1.2"/> 			<!-- taille de la colonne en mm -->
							<xsl:variable name="longmm"><xsl:value-of select="$longcol"/>mm</xsl:variable> 
							<fo:table-column 
								border-right="solid 0.2mm" 
								column-width="{$longmm}"/>
						</xsl:if>
						<xsl:if test="/mistral/collon16 != ''">				
							<xsl:variable name="longcar"><xsl:value-of select="/mistral/collon16"/></xsl:variable> 		<!-- taille de la colonne en caractères -->
							<xsl:variable name="longcol" select="$longcar * 1.1 + ($longcar &lt; 10) * 1.2"/> 			<!-- taille de la colonne en mm -->
							<xsl:variable name="longmm"><xsl:value-of select="$longcol"/>mm</xsl:variable> 
							<fo:table-column 
								border-right="solid 0.2mm" 
								column-width="{$longmm}"/>
						</xsl:if>
						<xsl:if test="/mistral/collon17 != ''">				
							<xsl:variable name="longcar"><xsl:value-of select="/mistral/collon17"/></xsl:variable> 		<!-- taille de la colonne en caractères -->
							<xsl:variable name="longcol" select="$longcar * 1.1 + ($longcar &lt; 10) * 1.2"/> 			<!-- taille de la colonne en mm -->
							<xsl:variable name="longmm"><xsl:value-of select="$longcol"/>mm</xsl:variable> 
							<fo:table-column 
								border-right="solid 0.2mm" 
								column-width="{$longmm}"/>
						</xsl:if>
						<xsl:if test="/mistral/collon18 != ''">				
							<xsl:variable name="longcar"><xsl:value-of select="/mistral/collon18"/></xsl:variable> 		<!-- taille de la colonne en caractères -->
							<xsl:variable name="longcol" select="$longcar * 1.1 + ($longcar &lt; 10) * 1.2"/> 			<!-- taille de la colonne en mm -->
							<xsl:variable name="longmm"><xsl:value-of select="$longcol"/>mm</xsl:variable> 
							<fo:table-column 
								border-right="solid 0.2mm" 
								column-width="{$longmm}"/>
						</xsl:if>
						<xsl:if test="/mistral/collon19 != ''">				
							<xsl:variable name="longcar"><xsl:value-of select="/mistral/collon19"/></xsl:variable> 		<!-- taille de la colonne en caractères -->
							<xsl:variable name="longcol" select="$longcar * 1.1 + ($longcar &lt; 10) * 1.2"/> 			<!-- taille de la colonne en mm -->
							<xsl:variable name="longmm"><xsl:value-of select="$longcol"/>mm</xsl:variable> 
							<fo:table-column 
								border-right="solid 0.2mm" 
								column-width="{$longmm}"/>
						</xsl:if>
						<xsl:if test="/mistral/collon20 != ''">				
							<xsl:variable name="longcar"><xsl:value-of select="/mistral/collon20"/></xsl:variable> 		<!-- taille de la colonne en caractères -->
							<xsl:variable name="longcol" select="$longcar * 1.1 + ($longcar &lt; 10) * 1.2"/> 			<!-- taille de la colonne en mm -->
							<xsl:variable name="longmm"><xsl:value-of select="$longcol"/>mm</xsl:variable> 
							<fo:table-column 
								border-right="solid 0.2mm" 
								column-width="{$longmm}"/>
						</xsl:if>
						<xsl:if test="/mistral/collon21 != ''">				
							<xsl:variable name="longcar"><xsl:value-of select="/mistral/collon21"/></xsl:variable> 		<!-- taille de la colonne en caractères -->
							<xsl:variable name="longcol" select="$longcar * 1.1 + ($longcar &lt; 10) * 1.2"/> 			<!-- taille de la colonne en mm -->
							<xsl:variable name="longmm"><xsl:value-of select="$longcol"/>mm</xsl:variable> 
							<fo:table-column 
								border-right="solid 0.2mm" 
								column-width="{$longmm}"/>
						</xsl:if>
						<xsl:if test="/mistral/collon22 != ''">				
							<xsl:variable name="longcar"><xsl:value-of select="/mistral/collon22"/></xsl:variable> 		<!-- taille de la colonne en caractères -->
							<xsl:variable name="longcol" select="$longcar * 1.1 + ($longcar &lt; 10) * 1.2"/> 			<!-- taille de la colonne en mm -->
							<xsl:variable name="longmm"><xsl:value-of select="$longcol"/>mm</xsl:variable> 
							<fo:table-column 
								border-right="solid 0.2mm" 
								column-width="{$longmm}"/>
						</xsl:if>
						<xsl:if test="/mistral/collon23 != ''">				
							<xsl:variable name="longcar"><xsl:value-of select="/mistral/collon23"/></xsl:variable> 		<!-- taille de la colonne en caractères -->
							<xsl:variable name="longcol" select="$longcar * 1.2 + ($longcar &lt; 10) * 1.2"/> 			<!-- taille de la colonne en mm -->
							<xsl:variable name="longmm"><xsl:value-of select="$longcol"/>mm</xsl:variable> 
							<fo:table-column 
								border-right="solid 0.2mm" 
								column-width="{$longmm}"/>
						</xsl:if>
						<xsl:if test="/mistral/collon24 != ''">				
							<xsl:variable name="longcar"><xsl:value-of select="/mistral/collon24"/></xsl:variable> 		<!-- taille de la colonne en caractères -->
							<xsl:variable name="longcol" select="$longcar * 1.2 + ($longcar &lt; 10) * 1.2"/> 			<!-- taille de la colonne en mm -->
							<xsl:variable name="longmm"><xsl:value-of select="$longcol"/>mm</xsl:variable> 
							<fo:table-column 
								border-right="solid 0.2mm" 
								column-width="{$longmm}"/>
						</xsl:if>
						<xsl:if test="/mistral/collon25 != ''">				
							<xsl:variable name="longcar"><xsl:value-of select="/mistral/collon25"/></xsl:variable> 		<!-- taille de la colonne en caractères -->
							<xsl:variable name="longcol" select="$longcar * 1.2 + ($longcar &lt; 10) * 1.2"/> 			<!-- taille de la colonne en mm -->
							<xsl:variable name="longmm"><xsl:value-of select="$longcol"/>mm</xsl:variable> 
							<fo:table-column 
								border-right="solid 0.2mm" 
								column-width="{$longmm}"/>
						</xsl:if>
						<xsl:if test="/mistral/collon26 != ''">				
							<xsl:variable name="longcar"><xsl:value-of select="/mistral/collon26"/></xsl:variable> 		<!-- taille de la colonne en caractères -->
							<xsl:variable name="longcol" select="$longcar * 1.2 + ($longcar &lt; 10) * 1.2"/> 			<!-- taille de la colonne en mm -->
							<xsl:variable name="longmm"><xsl:value-of select="$longcol"/>mm</xsl:variable> 
							<fo:table-column 
								border-right="solid 0.2mm" 
								column-width="{$longmm}"/>
						</xsl:if>
						<xsl:if test="/mistral/collon27 != ''">				
							<xsl:variable name="longcar"><xsl:value-of select="/mistral/collon27"/></xsl:variable> 		<!-- taille de la colonne en caractères -->
							<xsl:variable name="longcol" select="$longcar * 1.2 + ($longcar &lt; 10) * 1.2"/> 			<!-- taille de la colonne en mm -->
							<xsl:variable name="longmm"><xsl:value-of select="$longcol"/>mm</xsl:variable> 
							<fo:table-column 
								border-right="solid 0.2mm" 
								column-width="{$longmm}"/>
						</xsl:if>
						<xsl:if test="/mistral/collon28 != ''">				
							<xsl:variable name="longcar"><xsl:value-of select="/mistral/collon28"/></xsl:variable> 		<!-- taille de la colonne en caractères -->
							<xsl:variable name="longcol" select="$longcar * 1.2 + ($longcar &lt; 10) * 1.2"/> 			<!-- taille de la colonne en mm -->
							<xsl:variable name="longmm"><xsl:value-of select="$longcol"/>mm</xsl:variable> 
							<fo:table-column 
								border-right="solid 0.2mm" 
								column-width="{$longmm}"/>
						</xsl:if>
						<xsl:if test="/mistral/collon29 != ''">				
							<xsl:variable name="longcar"><xsl:value-of select="/mistral/collon29"/></xsl:variable> 		<!-- taille de la colonne en caractères -->
							<xsl:variable name="longcol" select="$longcar * 1.5 + ($longcar &lt; 10) * 1.2"/> 			<!-- taille de la colonne en mm -->
							<xsl:variable name="longmm"><xsl:value-of select="$longcol"/>mm</xsl:variable> 
							<fo:table-column 
								border-right="solid 0.2mm" 
								column-width="{$longmm}"/>
						</xsl:if>
						
						<fo:table-header 
							background-color="{$colorbleu}" 
							border="solid 0.2mm">
							<fo:table-row 
								line-height="15pt" 
								font-weight="bold"
								text-align="center">
															  
								<xsl:if test="/mistral/collon01 != ''">				
									<fo:table-cell 
										border-right="solid 0.2mm">  
										<fo:block>
											<xsl:value-of select="/mistral/coltit01"/> 
										</fo:block> 
									</fo:table-cell>
								</xsl:if>
								<xsl:if test="/mistral/collon02 != ''">				
									<fo:table-cell 
										border-right="solid 0.2mm">  
										<fo:block>
											<xsl:value-of select="/mistral/coltit02"/> 
										</fo:block> 
									</fo:table-cell>
								</xsl:if>
								<xsl:if test="/mistral/collon03 != ''">				
									<fo:table-cell 
										border-right="solid 0.2mm">  
										<fo:block>
											<xsl:value-of select="/mistral/coltit03"/> 
										</fo:block> 
									</fo:table-cell>
								</xsl:if>
								<xsl:if test="/mistral/collon04 != ''">				
									<fo:table-cell 
										border-right="solid 0.2mm">  
										<fo:block>
											<xsl:value-of select="/mistral/coltit04"/> 
										</fo:block> 
									</fo:table-cell>
								</xsl:if>
								<xsl:if test="/mistral/collon05 != ''">				
									<fo:table-cell 
										border-right="solid 0.2mm">  
										<fo:block>
											<xsl:value-of select="/mistral/coltit05"/> 
										</fo:block> 
									</fo:table-cell>
								</xsl:if>
								<xsl:if test="/mistral/collon06 != ''">				
									<fo:table-cell 
										border-right="solid 0.2mm">  
										<fo:block>
											<xsl:value-of select="/mistral/coltit06"/> 
										</fo:block> 
									</fo:table-cell>
								</xsl:if>
								<xsl:if test="/mistral/collon07 != ''">				
									<fo:table-cell 
										border-right="solid 0.2mm">  
										<fo:block>
											<xsl:value-of select="/mistral/coltit07"/> 
										</fo:block> 
									</fo:table-cell>
								</xsl:if>
								<xsl:if test="/mistral/collon08 != ''">				
									<fo:table-cell 
										border-right="solid 0.2mm">  
										<fo:block>
											<xsl:value-of select="/mistral/coltit08"/> 
										</fo:block> 
									</fo:table-cell>
								</xsl:if>
								<xsl:if test="/mistral/collon09 != ''">				
									<fo:table-cell 
										border-right="solid 0.2mm">  
										<fo:block>
											<xsl:value-of select="/mistral/coltit09"/> 
										</fo:block>
									</fo:table-cell>
								</xsl:if>
								<xsl:if test="/mistral/collon10 != ''">				
									<fo:table-cell 
										border-right="solid 0.2mm">  
										<fo:block>
											<xsl:value-of select="/mistral/coltit10"/> 
										</fo:block> 
									</fo:table-cell>
								</xsl:if>
								<xsl:if test="/mistral/collon11 != ''">				
									<fo:table-cell 
										border-right="solid 0.2mm">  
										<fo:block>
											<xsl:value-of select="/mistral/coltit11"/> 
										</fo:block> 
									</fo:table-cell>
								</xsl:if>
								<xsl:if test="/mistral/collon12 != ''">				
									<fo:table-cell 
										border-right="solid 0.2mm">  
										<fo:block>
											<xsl:value-of select="/mistral/coltit12"/> 
										</fo:block> 
									</fo:table-cell>
								</xsl:if>
								<xsl:if test="/mistral/collon13 != ''">				
									<fo:table-cell 
										border-right="solid 0.2mm">  
										<fo:block>
											<xsl:value-of select="/mistral/coltit13"/> 
										</fo:block> 
									</fo:table-cell>
								</xsl:if>
								<xsl:if test="/mistral/collon14 != ''">				
									<fo:table-cell 
										border-right="solid 0.2mm">  
										<fo:block>
											<xsl:value-of select="/mistral/coltit14"/> 
										</fo:block> 
									</fo:table-cell>
								</xsl:if>
								<xsl:if test="/mistral/collon15 != ''">				
									<fo:table-cell 
										border-right="solid 0.2mm">  
										<fo:block>
											<xsl:value-of select="/mistral/coltit15"/> 
										</fo:block> 
									</fo:table-cell>
								</xsl:if>
								<xsl:if test="/mistral/collon16 != ''">				
									<fo:table-cell 
										border-right="solid 0.2mm">  
										<fo:block>
											<xsl:value-of select="/mistral/coltit16"/> 
										</fo:block> 
									</fo:table-cell>
								</xsl:if>
								<xsl:if test="/mistral/collon17 != ''">				
									<fo:table-cell 
										border-right="solid 0.2mm">  
										<fo:block>
											<xsl:value-of select="/mistral/coltit17"/> 
										</fo:block> 
									</fo:table-cell>
								</xsl:if>
								<xsl:if test="/mistral/collon18 != ''">				
									<fo:table-cell 
										border-right="solid 0.2mm">  
										<fo:block>
											<xsl:value-of select="/mistral/coltit18"/> 
										</fo:block> 
									</fo:table-cell>
								</xsl:if>
								<xsl:if test="/mistral/collon19 != ''">				
									<fo:table-cell 
										border-right="solid 0.2mm">  
										<fo:block>
											<xsl:value-of select="/mistral/coltit19"/> 
										</fo:block> 
									</fo:table-cell>
								</xsl:if>
								<xsl:if test="/mistral/collon20 != ''">				
									<fo:table-cell 
										border-right="solid 0.2mm">  
										<fo:block>
											<xsl:value-of select="/mistral/coltit20"/> 
										</fo:block> 
									</fo:table-cell>
								</xsl:if>
								<xsl:if test="/mistral/collon21 != ''">				
									<fo:table-cell 
										border-right="solid 0.2mm">  
										<fo:block>
											<xsl:value-of select="/mistral/coltit21"/> 
										</fo:block> 
									</fo:table-cell>
								</xsl:if>
								<xsl:if test="/mistral/collon22 != ''">				
									<fo:table-cell 
										border-right="solid 0.2mm">  
										<fo:block>
											<xsl:value-of select="/mistral/coltit22"/> 
										</fo:block> 
									</fo:table-cell>
								</xsl:if>
								<xsl:if test="/mistral/collon23 != ''">				
									<fo:table-cell 
										border-right="solid 0.2mm">  
										<fo:block>
											<xsl:value-of select="/mistral/coltit23"/> 
										</fo:block> 
									</fo:table-cell>
								</xsl:if>
								<xsl:if test="/mistral/collon24 != ''">				
									<fo:table-cell 
										border-right="solid 0.2mm">  
										<fo:block>
											<xsl:value-of select="/mistral/coltit24"/> 
										</fo:block> 
									</fo:table-cell>
								</xsl:if>
								<xsl:if test="/mistral/collon25 != ''">				
									<fo:table-cell 
										border-right="solid 0.2mm">  
										<fo:block>
											<xsl:value-of select="/mistral/coltit25"/> 
										</fo:block> 
									</fo:table-cell>
								</xsl:if>
								<xsl:if test="/mistral/collon26 != ''">				
									<fo:table-cell 
										border-right="solid 0.2mm">  
										<fo:block>
											<xsl:value-of select="/mistral/coltit26"/> 
										</fo:block> 
									</fo:table-cell>
								</xsl:if>
								<xsl:if test="/mistral/collon27 != ''">				
									<fo:table-cell 
										border-right="solid 0.2mm">  
										<fo:block>
											<xsl:value-of select="/mistral/coltit27"/> 
										</fo:block> 
									</fo:table-cell>
								</xsl:if>
								<xsl:if test="/mistral/collon28 != ''">				
									<fo:table-cell 
										border-right="solid 0.2mm">  
										<fo:block>
											<xsl:value-of select="/mistral/coltit28"/> 
										</fo:block> 
									</fo:table-cell>
								</xsl:if>
								<xsl:if test="/mistral/collon29 != ''">				
									<fo:table-cell 
										border-right="solid 0.2mm">  
										<fo:block>
											<xsl:value-of select="/mistral/coltit29"/> 
										</fo:block> 
									</fo:table-cell>
								</xsl:if>
								
							</fo:table-row>
						</fo:table-header>
						<fo:table-footer>
						</fo:table-footer>
						<fo:table-body>
							<xsl:for-each select=".|following-sibling::art[position() &lt; $RECORD_BY_PAGE]">
								<xsl:apply-templates select="."/>
							</xsl:for-each>
							<xsl:if test="position()=last()">
								<xsl:apply-templates select="/mistral/total"/>
							</xsl:if>
						</fo:table-body>
					</fo:table>

					<xsl:if test="position()=last()">
						<xsl:apply-templates select="/mistral/criteres"/>
					</xsl:if>

				</fo:flow>
				
			</fo:page-sequence>
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="art">
	
		<xsl:variable name="background">
			<xsl:choose>
			<xsl:when test= "col='1'"><xsl:value-of select="$colorgris"/></xsl:when>  <!-- Grisé une ligne sur deux-->
			<xsl:when test= "lig='2'"><xsl:value-of select="$colorjaune"/></xsl:when> <!-- Ligne total-->
			<xsl:otherwise>white</xsl:otherwise>
			</xsl:choose>
		</xsl:variable>	
		
		<fo:table-row 
			line-height="15pt"
			margin-left="0.5mm" 
			margin-right="0.5mm"
			background-color="{$background}">

			<xsl:choose>
			<xsl:when test= "lig='2'"> <!-- Ligne total-->
            	<xsl:call-template name="colonnes">
					<xsl:with-param name="border-top">solid 0.3mm</xsl:with-param>	
					<xsl:with-param name="border-bottom">solid 0.5mm</xsl:with-param>	
				</xsl:call-template>	
			</xsl:when>
			<xsl:otherwise>
            	<xsl:call-template name="colonnes">
					<xsl:with-param name="border-top">none</xsl:with-param>	
					<xsl:with-param name="border-bottom">none</xsl:with-param>	
				</xsl:call-template>	
			</xsl:otherwise>
			</xsl:choose>

		</fo:table-row>
	</xsl:template>

	<xsl:template match="total">
		<fo:table-row 
			background-color="{$colorbleu}" 
			color="black" 
			font-weight="bold" 
			margin-left="0.5mm" 
			margin-right="0.5mm" 
			text-align="right">
            <xsl:call-template name="colonnes">
				<xsl:with-param name="border-top">solid 0.3mm</xsl:with-param>	
				<xsl:with-param name="border-bottom">solid 0.3mm</xsl:with-param>	
			</xsl:call-template>	
		</fo:table-row>
	</xsl:template>

	<xsl:template name="colonnes">
		<xsl:param name="border-top" /> 
		<xsl:param name="border-bottom" /> 

			<xsl:if test="/mistral/collon01 != ''">				
				<xsl:variable name="align">
					<xsl:value-of select="/mistral/coljus01"/>
				</xsl:variable> 
				<fo:table-cell 
					text-align="{$align}"
					border-right="solid 0.2mm"
					border-left="solid 0.2mm"
					border-top="{$border-top}"
					border-bottom="{$border-bottom}">
					<fo:block><xsl:value-of select="col01"/> </fo:block> 
				</fo:table-cell>
			</xsl:if>
			<xsl:if test="/mistral/collon02 != ''">				
				<xsl:variable name="align">
					<xsl:value-of select="/mistral/coljus02"/>
				</xsl:variable> 
				<fo:table-cell 
					text-align="{$align}"
					border-right="solid 0.2mm"
					border-top="{$border-top}"
					border-bottom="{$border-bottom}">
					<fo:block><xsl:value-of select="col02"/> </fo:block> 
				</fo:table-cell>
			</xsl:if>
			<xsl:if test="/mistral/collon03 != ''">				
				<xsl:variable name="align">
					<xsl:value-of select="/mistral/coljus03"/>
				</xsl:variable> 
				<fo:table-cell 
					text-align="{$align}"
					border-right="solid 0.2mm"
					border-top="{$border-top}"
					border-bottom="{$border-bottom}">
					<fo:block><xsl:value-of select="col03"/> </fo:block> 
				</fo:table-cell>
			</xsl:if>
			<xsl:if test="/mistral/collon04 != ''">				
				<xsl:variable name="align">
					<xsl:value-of select="/mistral/coljus04"/>
				</xsl:variable> 
				<fo:table-cell 
					text-align="{$align}"
					border-right="solid 0.2mm"
					border-top="{$border-top}"
					border-bottom="{$border-bottom}">
					<fo:block><xsl:value-of select="col04"/> </fo:block> 
				</fo:table-cell>
			</xsl:if>
			<xsl:if test="/mistral/collon05 != ''">				
				<xsl:variable name="align">
					<xsl:value-of select="/mistral/coljus05"/>
				</xsl:variable> 
				<fo:table-cell 
					text-align="{$align}"
					border-right="solid 0.2mm"
					border-top="{$border-top}"
					border-bottom="{$border-bottom}">
					<fo:block><xsl:value-of select="col05"/> </fo:block> 
				</fo:table-cell>
			</xsl:if>
			<xsl:if test="/mistral/collon06 != ''">				
				<xsl:variable name="align">
					<xsl:value-of select="/mistral/coljus06"/>
				</xsl:variable> 
				<fo:table-cell 
					text-align="{$align}"
					border-right="solid 0.2mm"
					border-top="{$border-top}"
					border-bottom="{$border-bottom}">
					<fo:block><xsl:value-of select="col06"/> </fo:block> 
				</fo:table-cell>
			</xsl:if>
			<xsl:if test="/mistral/collon07 != ''">				
				<xsl:variable name="align">
					<xsl:value-of select="/mistral/coljus07"/>
				</xsl:variable> 
				<fo:table-cell 
					text-align="{$align}"
					border-right="solid 0.2mm"
					border-top="{$border-top}"
					border-bottom="{$border-bottom}">
					<fo:block><xsl:value-of select="col07"/> </fo:block> 
				</fo:table-cell>
			</xsl:if>
			<xsl:if test="/mistral/collon08 != ''">				
				<xsl:variable name="align">
					<xsl:value-of select="/mistral/coljus08"/>
				</xsl:variable> 
				<fo:table-cell 
					text-align="{$align}"
					border-right="solid 0.2mm"
					border-top="{$border-top}"
					border-bottom="{$border-bottom}">
					<fo:block><xsl:value-of select="col08"/> </fo:block> 
				</fo:table-cell>
			</xsl:if>
			<xsl:if test="/mistral/collon09 != ''">				
				<xsl:variable name="align">
					<xsl:value-of select="/mistral/coljus09"/>
				</xsl:variable> 
				<fo:table-cell 
					text-align="{$align}"
					border-right="solid 0.2mm"
					border-top="{$border-top}"
					border-bottom="{$border-bottom}">
					<fo:block><xsl:value-of select="col09"/> </fo:block> 
				</fo:table-cell>
			</xsl:if>
			<xsl:if test="/mistral/collon10 != ''">				
				<xsl:variable name="align">
					<xsl:value-of select="/mistral/coljus10"/>
				</xsl:variable> 
				<fo:table-cell 
					text-align="{$align}"
					border-right="solid 0.2mm"
					border-top="{$border-top}"
					border-bottom="{$border-bottom}">
					<fo:block><xsl:value-of select="col10"/> </fo:block> 
				</fo:table-cell>
			</xsl:if>
			<xsl:if test="/mistral/collon11 != ''">				
				<xsl:variable name="align">
					<xsl:value-of select="/mistral/coljus11"/>
				</xsl:variable> 
				<fo:table-cell 
					text-align="{$align}"
					border-right="solid 0.2mm"
					border-top="{$border-top}"
					border-bottom="{$border-bottom}">
					<fo:block><xsl:value-of select="col11"/> </fo:block> 
				</fo:table-cell>
			</xsl:if>
			<xsl:if test="/mistral/collon12 != ''">				
				<xsl:variable name="align">
					<xsl:value-of select="/mistral/coljus12"/>
				</xsl:variable> 
				<fo:table-cell 
					text-align="{$align}"
					border-right="solid 0.2mm"
					border-top="{$border-top}"
					border-bottom="{$border-bottom}">
					<fo:block><xsl:value-of select="col12"/> </fo:block> 
				</fo:table-cell>
			</xsl:if>
			<xsl:if test="/mistral/collon13 != ''">				
				<xsl:variable name="align">
					<xsl:value-of select="/mistral/coljus13"/>
				</xsl:variable> 
				<fo:table-cell 
					text-align="{$align}"
					border-right="solid 0.2mm"
					border-top="{$border-top}"
					border-bottom="{$border-bottom}">
					<fo:block><xsl:value-of select="col13"/> </fo:block> 
				</fo:table-cell>
			</xsl:if>
			<xsl:if test="/mistral/collon14 != ''">				
				<xsl:variable name="align">
					<xsl:value-of select="/mistral/coljus14"/>
				</xsl:variable> 
				<fo:table-cell 
					text-align="{$align}"
					border-right="solid 0.2mm"
					border-top="{$border-top}"
					border-bottom="{$border-bottom}">
					<fo:block><xsl:value-of select="col14"/> </fo:block> 
				</fo:table-cell>
			</xsl:if>
			<xsl:if test="/mistral/collon15 != ''">				
				<xsl:variable name="align">
					<xsl:value-of select="/mistral/coljus15"/>
				</xsl:variable> 
				<fo:table-cell 
					text-align="{$align}"
					border-right="solid 0.2mm"
					border-top="{$border-top}"
					border-bottom="{$border-bottom}">
					<fo:block><xsl:value-of select="col15"/> </fo:block> 
				</fo:table-cell>
			</xsl:if>
			<xsl:if test="/mistral/collon16 != ''">				
				<xsl:variable name="align">
					<xsl:value-of select="/mistral/coljus16"/>
				</xsl:variable> 
				<fo:table-cell 
					text-align="{$align}"
					border-right="solid 0.2mm"
					border-top="{$border-top}"
					border-bottom="{$border-bottom}">
					<fo:block><xsl:value-of select="col16"/> </fo:block> 
				</fo:table-cell>
			</xsl:if>
			<xsl:if test="/mistral/collon17 != ''">				
				<xsl:variable name="align">
					<xsl:value-of select="/mistral/coljus17"/>
				</xsl:variable> 
				<fo:table-cell 
					text-align="{$align}"
					border-right="solid 0.2mm"
					border-top="{$border-top}"
					border-bottom="{$border-bottom}">
					<fo:block><xsl:value-of select="col17"/> </fo:block> 
				</fo:table-cell>
			</xsl:if>
			<xsl:if test="/mistral/collon18 != ''">				
				<xsl:variable name="align">
					<xsl:value-of select="/mistral/coljus18"/>
				</xsl:variable> 
				<fo:table-cell 
					text-align="{$align}"
					border-right="solid 0.2mm"
					border-top="{$border-top}"
					border-bottom="{$border-bottom}">
					<fo:block><xsl:value-of select="col18"/> </fo:block> 
				</fo:table-cell>
			</xsl:if>
			<xsl:if test="/mistral/collon19 != ''">				
				<xsl:variable name="align">
					<xsl:value-of select="/mistral/coljus19"/>
				</xsl:variable> 
				<fo:table-cell 
					text-align="{$align}"
					border-right="solid 0.2mm"
					border-top="{$border-top}"
					border-bottom="{$border-bottom}">
					<fo:block><xsl:value-of select="col19"/> </fo:block> 
				</fo:table-cell>
			</xsl:if>
			<xsl:if test="/mistral/collon20 != ''">				
				<xsl:variable name="align">
					<xsl:value-of select="/mistral/coljus20"/>
				</xsl:variable> 
				<fo:table-cell 
					text-align="{$align}"
					border-right="solid 0.2mm"
					border-top="{$border-top}"
					border-bottom="{$border-bottom}">
					<fo:block><xsl:value-of select="col20"/> </fo:block> 
				</fo:table-cell>
			</xsl:if>
			<xsl:if test="/mistral/collon21 != ''">				
				<xsl:variable name="align">
					<xsl:value-of select="/mistral/coljus21"/>
				</xsl:variable> 
				<fo:table-cell 
					text-align="{$align}"
					border-right="solid 0.2mm"
					border-top="{$border-top}"
					border-bottom="{$border-bottom}">
					<fo:block><xsl:value-of select="col21"/> </fo:block> 
				</fo:table-cell>
			</xsl:if>
			<xsl:if test="/mistral/collon22 != ''">				
				<xsl:variable name="align">
					<xsl:value-of select="/mistral/coljus22"/>
				</xsl:variable> 
				<fo:table-cell 
					text-align="{$align}"
					border-right="solid 0.2mm"
					border-top="{$border-top}"
					border-bottom="{$border-bottom}">
					<fo:block><xsl:value-of select="col22"/> </fo:block> 
				</fo:table-cell>
			</xsl:if>
			<xsl:if test="/mistral/collon23 != ''">				
				<xsl:variable name="align">
					<xsl:value-of select="/mistral/coljus23"/>
				</xsl:variable> 
				<fo:table-cell 
					text-align="{$align}"
					border-right="solid 0.2mm"
					border-top="{$border-top}"
					border-bottom="{$border-bottom}">
					<fo:block><xsl:value-of select="col23"/> </fo:block> 
				</fo:table-cell>
			</xsl:if>
			<xsl:if test="/mistral/collon24 != ''">				
				<xsl:variable name="align">
					<xsl:value-of select="/mistral/coljus24"/>
				</xsl:variable> 
				<fo:table-cell 
					text-align="{$align}"
					border-right="solid 0.2mm"
					border-top="{$border-top}"
					border-bottom="{$border-bottom}">
					<fo:block><xsl:value-of select="col24"/> </fo:block> 
				</fo:table-cell>
			</xsl:if>
			<xsl:if test="/mistral/collon25 != ''">				
				<xsl:variable name="align">
					<xsl:value-of select="/mistral/coljus25"/>
				</xsl:variable> 
				<fo:table-cell 
					text-align="{$align}"
					border-right="solid 0.2mm"
					border-top="{$border-top}"
					border-bottom="{$border-bottom}">
					<fo:block><xsl:value-of select="col25"/> </fo:block> 
				</fo:table-cell>
			</xsl:if>
			<xsl:if test="/mistral/collon26 != ''">				
				<xsl:variable name="align">
					<xsl:value-of select="/mistral/coljus26"/>
				</xsl:variable> 
				<fo:table-cell 
					text-align="{$align}"
					border-right="solid 0.2mm"
					border-top="{$border-top}"
					border-bottom="{$border-bottom}">
					<fo:block><xsl:value-of select="col26"/> </fo:block> 
				</fo:table-cell>
			</xsl:if>
			<xsl:if test="/mistral/collon27 != ''">				
				<xsl:variable name="align">
					<xsl:value-of select="/mistral/coljus27"/>
				</xsl:variable> 
				<fo:table-cell 
					text-align="{$align}"
					border-right="solid 0.2mm"
					border-top="{$border-top}"
					border-bottom="{$border-bottom}">
					<fo:block><xsl:value-of select="col27"/> </fo:block> 
				</fo:table-cell>
			</xsl:if>
			<xsl:if test="/mistral/collon28 != ''">				
				<xsl:variable name="align">
					<xsl:value-of select="/mistral/coljus28"/>
				</xsl:variable> 
				<fo:table-cell 
					text-align="{$align}"
					border-right="solid 0.2mm"
					border-top="{$border-top}"
					border-bottom="{$border-bottom}">
					<fo:block><xsl:value-of select="col28"/> </fo:block> 
				</fo:table-cell>
			</xsl:if>
			<xsl:if test="/mistral/collon29 != ''">				
				<xsl:variable name="align">
					<xsl:value-of select="/mistral/coljus29"/>
				</xsl:variable> 
				<fo:table-cell 
					text-align="{$align}"
					border-right="solid 0.2mm"
					border-top="{$border-top}"
					border-bottom="{$border-bottom}">
					<fo:block><xsl:value-of select="col29"/> </fo:block> 
				</fo:table-cell>
			</xsl:if>
	</xsl:template>
	
	
	<xsl:template match="criteres"><!-- critères d'impression -->
		<fo:table space-before="8mm" table-layout="fixed" border="solid 0.3mm" left="0mm" width="195mm" position="absolute" keep-together="always">
			<fo:table-column column-width="40mm" />
			<fo:table-column column-width="75mm" border-right="solid 0.2mm" />
			<fo:table-column column-width="40mm" />
			<fo:table-column column-width="35mm" />
			<fo:table-header font-size="9pt" margin-left="0.2mm" border="solid 0.2mm" background-color="lightblue">
				<fo:table-row>
					<fo:table-cell number-columns-spanned="2">
						<fo:block text-decoration="underline" text-align="left" border-right="solid 0.2mm">
							<xsl:value-of select="/mistral/enteteliste/zontitcri" />
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block text-decoration="underline" text-align="left">
							<xsl:value-of select="/mistral/enteteliste/zontitabr" />
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-header>
			<fo:table-body font-size="8pt">
				<fo:table-row margin-left="0.5mm" margin-right="0.5mm" keep-together="always">
					<fo:table-cell number-columns-spanned="2">
						<xsl:for-each select="cri">
							<xsl:choose>
								<xsl:when test="contains(text(),':')">
									<fo:block font-weight="bold" text-decoration="underline">
										<xsl:value-of select="text()" />
									</fo:block>
								</xsl:when>
								<xsl:otherwise>
									<fo:block>
										<xsl:value-of select="text()" />
									</fo:block>
								</xsl:otherwise>
							</xsl:choose>
						</xsl:for-each>
					</fo:table-cell>
					<fo:table-cell number-columns-spanned="2">
						<xsl:for-each select="abr">
							<fo:block>  
								<xsl:value-of select="text()" />
							</fo:block>
						</xsl:for-each>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</xsl:template>
	
</xsl:stylesheet>
