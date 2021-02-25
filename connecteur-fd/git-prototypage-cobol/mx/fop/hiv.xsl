<?xml version="1.0" encoding="ISO-8859-1"?>
<!--Norme à respecter-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.0">
<!--Norme à respecter-->
	<xsl:import href="/webp/mistral/fop/enteteliste.xsl" />

<!--Importe l'entête de la page-->
<!--xsl:import href="u:/mistral/fop/enteteliste.xsl"/-->
<!--Test Cooktop-->

	<xsl:variable name="RECORD_BY_PAGE" select="440"/>

	<xsl:template match="/mistral">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
<!--Norme à respecter-->
			<fo:layout-master-set>
				<fo:simple-page-master master-name="master-page" page-height="297mm" page-width="210mm" margin-top="6.0mm" margin-bottom="10mm" margin-left="7mm" margin-right="5mm">
					<fo:region-body margin-top="25mm" margin-bottom="10mm" />
					<fo:region-before extent="30mm" />
					<fo:region-after extent="10mm" />
				</fo:simple-page-master>
			</fo:layout-master-set>

			<xsl:apply-templates select="fam" />

		</fo:root>
	</xsl:template>

	<xsl:template match="fam">
		<xsl:for-each select="art[position() mod $RECORD_BY_PAGE = 1]">
			<fo:page-sequence master-reference="master-page" initial-page-number="auto">
				<fo:static-content flow-name="xsl-region-before" font-size="9pt">
					<xsl:apply-templates select="/mistral/enteteliste" /><!--Sélectionne et affiche l'entête de la page-->
				</fo:static-content>
				<fo:static-content flow-name="xsl-region-after" font-size="9pt">
					<xsl:apply-templates select="/mistral/piedliste" /><!--Sélectionne et affiche le pied de page-->
				</fo:static-content>
				<fo:flow flow-name="xsl-region-body" font-family="{$fontfamily}" font-size="7pt" line-height="15pt"><!--Taille de la police pour l'espace de travail-->
					<fo:block font-weight="bold" line-height="15pt">
						<xsl:value-of select="/mistral/sel" />
					</fo:block>
					<fo:table table-layout="fixed" border-style="solid 0.3mm" width="195mm" position="absolute">
						<fo:table-column padding-top="-0.15mm" padding-left="-0.15mm" padding-right="-0.15mm" column-width="15mm" />
						<fo:table-column padding-top="-0.15mm" padding-left="-0.15mm" padding-right="-0.15mm" column-width="45mm" />
						<fo:table-column padding-top="-0.15mm" padding-left="-0.15mm" padding-right="-0.15mm" column-width="5mm" />
						<fo:table-column padding-top="-0.15mm" padding-left="-0.15mm" padding-right="-0.15mm" column-width="43mm" />
						<fo:table-column padding-top="-0.15mm" padding-left="-0.15mm" padding-right="-0.15mm" column-width="13mm" />
						<fo:table-column padding-top="-0.15mm" padding-left="-0.15mm" padding-right="-0.15mm" column-width="20mm" />
						<fo:table-column padding-top="-0.15mm" padding-left="-0.15mm" padding-right="-0.15mm" column-width="13mm" />
						<fo:table-column padding-top="-0.15mm" padding-left="-0.15mm" padding-right="-0.15mm" column-width="9mm" />
						<fo:table-column padding-top="-0.15mm" padding-left="-0.15mm" padding-right="-0.15mm" column-width="15mm" />
						<fo:table-column padding-top="-0.15mm" padding-left="-0.15mm" padding-right="-0.15mm" column-width="8mm" />
						<fo:table-header>
							<fo:table-row font-size="8pt" background-color="{$colorbleu}" color="black" font-weight="bold">
								<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border-bottom="solid 0.15mm" border-left="solid 0.2mm" border-top="solid 0.2mm" text-align="center">
									<fo:block><xsl:value-of select="/mistral/enteteliste/zontitdat"/></fo:block>
									<fo:block><xsl:value-of select="/mistral/enteteliste/zontitnum"/></fo:block>
								</fo:table-cell>
								<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border-bottom="solid 0.15mm" border-top="solid 0.2mm" border-left="solid 0.15mm" text-align="center">
									<fo:block><xsl:value-of select="/mistral/enteteliste/zontitref"/></fo:block>
									<fo:block><xsl:value-of select="/mistral/enteteliste/zontitdes"/></fo:block>
								</fo:table-cell>
								<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border-bottom="solid 0.15mm" border-left="solid 0.15mm" border-top="solid 0.2mm" text-align="center">
									<fo:block><xsl:value-of select="/mistral/enteteliste/zontitrrr"/></fo:block>
								</fo:table-cell>
								<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border-bottom="solid 0.15mm" border-left="solid 0.15mm" border-top="solid 0.2mm" text-align="center">
									<fo:block><xsl:value-of select="/mistral/enteteliste/zontitcli"/></fo:block>
									<fo:block><xsl:value-of select="/mistral/enteteliste/zontitvil"/></fo:block>
								</fo:table-cell>
								<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border-bottom="solid 0.15mm" border-left="solid 0.15mm" border-right="solid 0.2mm" border-top="solid 0.2mm" text-align="center">
									<fo:block><xsl:value-of select="/mistral/enteteliste/zontitqte"/></fo:block>
									<fo:block><xsl:value-of select="/mistral/enteteliste/zontitage"/></fo:block>
								</fo:table-cell>
								<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border-bottom="solid 0.15mm" border-left="solid 0.15mm" border-right="solid 0.2mm" border-top="solid 0.2mm" text-align="center">
									<fo:block><xsl:value-of select="/mistral/enteteliste/zontitpunet"/></fo:block>
									<fo:block><xsl:value-of select="/mistral/enteteliste/zontitmtht"/></fo:block>
								</fo:table-cell>
								<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border-bottom="solid 0.15mm" border-left="solid 0.15mm" border-right="solid 0.2mm" border-top="solid 0.2mm" text-align="center">
									<fo:block><xsl:value-of select="/mistral/enteteliste/zontitnbon"/></fo:block>
									<fo:block><xsl:value-of select="/mistral/enteteliste/zontitnfac"/></fo:block>
								</fo:table-cell>
								<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border-bottom="solid 0.15mm" border-left="solid 0.15mm" border-right="solid 0.2mm" border-top="solid 0.2mm" text-align="center">
									<fo:block><xsl:value-of select="/mistral/enteteliste/zontitrem"/></fo:block>
									<fo:block><xsl:value-of select="/mistral/enteteliste/zontitact"/></fo:block>
								</fo:table-cell>
								<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border-bottom="solid 0.15mm" border-left="solid 0.15mm" border-right="solid 0.2mm" border-top="solid 0.2mm" text-align="center">
									<fo:block><xsl:value-of select="/mistral/enteteliste/zontitmarge"/></fo:block>
									<fo:block><xsl:value-of select="/mistral/enteteliste/zontitmat"/></fo:block>
								</fo:table-cell>
								<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border-bottom="solid 0.15mm" border-left="solid 0.15mm" border-right="solid 0.2mm" border-top="solid 0.2mm" text-align="center">
									<fo:block><xsl:value-of select="/mistral/enteteliste/zontitcial"/></fo:block>
								</fo:table-cell>
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
		<!--<xsl:variable name="background">
			<xsl:choose>
				<xsl:when test="(position() + 1) mod 2 = 0"><xsl:value-of select="$colorgris"/></xsl:when>
				<xsl:otherwise>transparent</xsl:otherwise>
			</xsl:choose>
		</xsl:variable>-->

		<xsl:if test= "lig='1'">
			<xsl:if test= "col='0'">
				<fo:table-row margin-left="0.5mm" margin-right="0.5mm" text-align="center" keep-with-next="always">
					<xsl:call-template name="lig1"/>
				</fo:table-row>
				<fo:table-row margin-left="0.5mm" margin-right="0.5mm" text-align="center">
					<xsl:call-template name="lig2"/>
				</fo:table-row>
			</xsl:if>
			<xsl:if test= "col='1'">
				<fo:table-row margin-left="0.5mm" margin-right="0.5mm" text-align="center" background-color="{$colorgris}" keep-with-next="always">
					<xsl:call-template name="lig1"/>
				</fo:table-row>
				<fo:table-row margin-left="0.5mm" margin-right="0.5mm" text-align="center" background-color="{$colorgris}">
					<xsl:call-template name="lig2"/>
				</fo:table-row>
			</xsl:if>
		</xsl:if>

		<xsl:if test="lig='2'">
			<fo:table-row background-color="{$colorjaune}" color="black" font-weight="bold" keep-with-next="always">
				<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border-top="solid 0.2mm" border-left="solid 0.2mm" text-align="left" number-columns-spanned="4">
					<fo:block font-weight="bold">
						<xsl:value-of select="lib" />
					</fo:block>
				</fo:table-cell>
				<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border-top="solid 0.2mm" border-left="solid 0.15mm" text-align="center">
					<fo:block font-weight="bold">
						<xsl:value-of select="qte" />
					</fo:block>
				</fo:table-cell>
				<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border-top="solid 0.2mm" border-left="solid 0.15mm" text-align="right">
					<fo:block font-weight="bold">
						<xsl:value-of select="ht" />
					</fo:block>
				</fo:table-cell>
				<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border-top="solid 0.2mm" border-left="solid 0.15mm" text-align="center" border-right="solid 0.15mm" number-columns-spanned="4">
					<fo:block color="{$colorjaune}">
					</fo:block>
				</fo:table-cell>
			</fo:table-row>

			<fo:table-row background-color="{$colorjaune}" color="black" font-weight="bold">
				<fo:table-cell number-columns-spanned="4" margin-left="0.5mm" margin-right="0.5mm" border-left="solid 0.2mm" text-align="left">
					<fo:block>
						&#160;
					</fo:block>
				</fo:table-cell>
				<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border-left="solid 0.15mm" text-align="center">
					<fo:block>
						&#160;
					</fo:block>
				</fo:table-cell>
				<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border-left="solid 0.15mm" text-align="center">
					<fo:block>
						&#160;
					</fo:block>
				</fo:table-cell>
				<fo:table-cell number-columns-spanned="4" margin-left="0.5mm" margin-right="0.5mm" border-left="solid 0.15mm" border-right="solid 0.15mm" text-align="center">
					<fo:block>
						&#160;
					</fo:block>
				</fo:table-cell>
			</fo:table-row>

		</xsl:if>
		
		<xsl:if test="lig='3'">
		        <xsl:variable name="coul">
     			<xsl:choose>
       			<xsl:when test="col='1'"><xsl:value-of select="$colorgris"/></xsl:when>
       			<xsl:otherwise>white</xsl:otherwise> 
     			</xsl:choose>      
  			</xsl:variable>
			<fo:table-row color="black" keep-with-previous="always" background-color="{$coul}">
			<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border-top="solid 0.2mm" border-left="solid 0.2mm" text-align="center">
			</fo:table-cell>
			<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border-top="solid 0.2mm" border-left="solid 0.15mm" text-align="left">
			<fo:block>
				<xsl:value-of select="lib" />
			</fo:block>
			</fo:table-cell>
			<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border-top="solid 0.2mm" border-left="solid 0.15mm" text-align="center">
			</fo:table-cell>
			<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border-top="solid 0.2mm" border-left="solid 0.15mm" text-align="left">
			</fo:table-cell>
			<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border-top="solid 0.2mm" border-left="solid 0.15mm" border-right="solid 0.2mm" text-align="center">
			</fo:table-cell>
			<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border-top="solid 0.2mm" border-left="solid 0.15mm" border-right="solid 0.2mm" text-align="right">
			</fo:table-cell>
			<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border-top="solid 0.2mm" border-left="solid 0.15mm" border-right="solid 0.2mm" text-align="right">
			</fo:table-cell>
			<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border-top="solid 0.2mm" border-left="solid 0.15mm" border-right="solid 0.2mm" text-align="right">
			</fo:table-cell>
			<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border-top="solid 0.2mm" border-left="solid 0.15mm" border-right="solid 0.2mm" text-align="right">
			</fo:table-cell>
			<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border-top="solid 0.2mm" border-left="solid 0.15mm" border-right="solid 0.2mm" text-align="center">
			</fo:table-cell>
			</fo:table-row>

		</xsl:if>
		
	</xsl:template>

	<xsl:template name="lig1">
		<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border-top="solid 0.2mm" border-left="solid 0.2mm" text-align="center">
			<fo:block>
				<xsl:value-of select="dat" />
			</fo:block>
		</fo:table-cell>
		<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border-top="solid 0.2mm" border-left="solid 0.15mm" text-align="left">
			<fo:block>
				<xsl:value-of select="art" />
			</fo:block>
		</fo:table-cell>
		<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border-top="solid 0.2mm" border-left="solid 0.15mm" text-align="center">
			<fo:block>
				<xsl:value-of select="crf" />
			</fo:block>
		</fo:table-cell>
		<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border-top="solid 0.2mm" border-left="solid 0.15mm" text-align="left">
			<fo:block>
				<xsl:value-of select="nom" />
			</fo:block>
		</fo:table-cell>
		<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border-top="solid 0.2mm" border-left="solid 0.15mm" border-right="solid 0.2mm" text-align="center">
			<fo:block>
				<xsl:value-of select="qte" />
			</fo:block>
		</fo:table-cell>
		<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border-top="solid 0.2mm" border-left="solid 0.15mm" border-right="solid 0.2mm" text-align="right">
			<fo:block>
				<xsl:value-of select="pri" />
			</fo:block>
		</fo:table-cell>
		<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border-top="solid 0.2mm" border-left="solid 0.15mm" border-right="solid 0.2mm" text-align="right">
			<fo:block>
				<xsl:value-of select="bon" />
			</fo:block>
		</fo:table-cell>
		<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border-top="solid 0.2mm" border-left="solid 0.15mm" border-right="solid 0.2mm" text-align="right">
			<fo:block>
				<xsl:value-of select="rem" />
			</fo:block>
		</fo:table-cell>
		<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border-top="solid 0.2mm" border-left="solid 0.15mm" border-right="solid 0.2mm" text-align="right">
			<fo:block>
				<xsl:value-of select="mar" />
			</fo:block>
		</fo:table-cell>
		<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border-top="solid 0.2mm" border-left="solid 0.15mm" border-right="solid 0.2mm" text-align="center">
			<fo:block>
				<xsl:value-of select="rep" />
			</fo:block>
		</fo:table-cell>
	</xsl:template>

	<xsl:template name="lig2">
		<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border-left="solid 0.2mm" text-align="center">
			<fo:block>
				<xsl:value-of select="cli" />
			</fo:block>
		</fo:table-cell>
		<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border-left="solid 0.15mm" text-align="left">
			<fo:block>
				<xsl:value-of select="des" />
			</fo:block>
		</fo:table-cell>
		<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border-left="solid 0.15mm" text-align="left">
			<fo:block>
				&#160;
			</fo:block>
		</fo:table-cell>
		<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border-left="solid 0.15mm" text-align="left">
			<fo:block>
				<xsl:value-of select="vil" />
			</fo:block>
		</fo:table-cell>
		<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border-left="solid 0.15mm" border-right="solid 0.2mm" text-align="center">
			<fo:block>
				<xsl:value-of select="age" />
			</fo:block>
		</fo:table-cell>
		<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border-left="solid 0.15mm" border-right="solid 0.2mm" text-align="right">
			<fo:block>
				<xsl:value-of select="ht" />
			</fo:block>
		</fo:table-cell>
		<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border-left="solid 0.15mm" border-right="solid 0.2mm" text-align="right">
			<fo:block>
				<xsl:value-of select="fac" />
			</fo:block>
		</fo:table-cell>
		<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border-left="solid 0.15mm" border-right="solid 0.2mm" text-align="center">
			<fo:block>
				<xsl:value-of select="ori" />
			</fo:block>
		</fo:table-cell>
		<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border-left="solid 0.15mm" border-right="solid 0.2mm" text-align="center">
			<fo:block>
				<xsl:value-of select="mat" />
			</fo:block>
		</fo:table-cell>
		<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border-left="solid 0.15mm" border-right="solid 0.2mm" text-align="center">
			<fo:block>
				&#160;
			</fo:block>
		</fo:table-cell>
	</xsl:template>

	<xsl:template match="total">
		<fo:table-row background-color="{$colorbleu}" color="black" font-weight="bold">
			<fo:table-cell number-columns-spanned="4" margin-left="0.5mm" margin-right="0.5mm" border-bottom="solid 0.15mm" border-left="solid 0.2mm" border-top="solid 0.2mm" text-align="left">
				<fo:block font-weight="bold">
					<xsl:value-of select="lib" />
				</fo:block>
			</fo:table-cell>
			<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border-bottom="solid 0.15mm" border-top="solid 0.2mm" border-left="solid 0.15mm" text-align="center">
				<fo:block font-weight="bold">
					<xsl:value-of select="qte" />
				</fo:block>
			</fo:table-cell>
			<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border-bottom="solid 0.15mm" border-top="solid 0.2mm" border-left="solid 0.15mm" text-align="right">
				<fo:block>
					<xsl:value-of select="ht" />
				</fo:block>
			</fo:table-cell>
			<fo:table-cell number-columns-spanned="4" margin-left="0.5mm" margin-right="0.5mm" border-bottom="solid 0.15mm" border-top="solid 0.2mm" border-left="solid 0.15mm" border-right="solid 0.15mm" text-align="center">
				<fo:block color="{$colorgris}">.</fo:block>
			</fo:table-cell>
		</fo:table-row>
	</xsl:template>

	<xsl:template match="criteres">
			<fo:table table-layout="fixed" border-style="solid 0.3mm" border-width="0.0mm" left="0mm" width="195mm" position="absolute" break-before="page">
<!--keep-together="always" -->
				<fo:table-column padding-top="-0.15mm" padding-left="-0.15mm" padding-right="-0.15mm" column-width="40mm" />

				<fo:table-column padding-top="-0.15mm" padding-left="-0.15mm" padding-right="-0.15mm" column-width="75mm" />

				<fo:table-column padding-top="-0.15mm" padding-left="-0.15mm" padding-right="-0.15mm" column-width="40mm" />

				<fo:table-column padding-top="-0.15mm" padding-left="-0.15mm" padding-right="-0.15mm" column-width="35mm" />

				<fo:table-header>
						<fo:table-row background-color="{$colorbleu}" line-height="14pt">
							<fo:table-cell margin-left="0.2mm" margin-right="0.2mm">
									<fo:block font-size="9pt" border-bottom="solid 0.2mm" border-left="solid 0.3mm" text-decoration="underline" border-top="solid 0.2mm" text-align="left">   <xsl:value-of select="/mistral/enteteliste/zontitcri"/></fo:block>
							</fo:table-cell>

							<fo:table-cell margin-left="0.2mm" margin-right="0.2mm">
									<fo:block font-size="9pt" border-bottom="solid 0.2mm" border-right="solid 0.2mm" border-top="solid 0.2mm" color="white" text-align="left">.</fo:block>
							</fo:table-cell>

							<fo:table-cell margin-left="0.2mm" margin-right="0.2mm">
									<fo:block font-size="9pt" border-bottom="solid 0.2mm" text-decoration="underline" border-top="solid 0.2mm" text-align="left">   <xsl:value-of select="/mistral/enteteliste/zontitabr"/></fo:block>
							</fo:table-cell>

							<fo:table-cell margin-left="0.2mm" margin-right="0.2mm">
									<fo:block font-size="9pt" border-bottom="solid 0.2mm" border-right="solid 0.3mm" border-top="solid 0.2mm" color="white" text-align="left">.</fo:block>
							</fo:table-cell>
						</fo:table-row>
				</fo:table-header>

				<fo:table-body>
						<fo:table-row line-height="14pt" keep-with-previous="always">
							<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border-left="solid 0.2mm" border-right="solid 0.1mm" number-columns-spanned="2">
									<xsl:for-each select="cri">
										<fo:block font-size="8pt">  
										<xsl:value-of select="text()" />
										</fo:block>
									</xsl:for-each>
							</fo:table-cell>

							<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border-right="solid 0.2mm" number-columns-spanned="2">
									<xsl:for-each select="abr">
										<fo:block font-size="8pt">  
										<xsl:value-of select="text()" />
										</fo:block>
									</xsl:for-each>
							</fo:table-cell>
						</fo:table-row>

						<fo:table-row background-color="{$colorbleu}" line-height="1pt">
							<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border-left="solid 0.2mm" border-right="solid 0.2mm" border-bottom="solid 0.2mm" number-columns-spanned="4">.</fo:table-cell>
						</fo:table-row>
				</fo:table-body>
			</fo:table>
	</xsl:template>

	<xsl:template match="titre">
			<fo:block-container left="0.0mm" top="30mm" width="195mm" height="7mm" position="absolute">
				<fo:block font-size="13pt" font-weight="bold" text-align="center">
						<xsl:value-of select="text()" />
				</fo:block>
			</fo:block-container>
	</xsl:template>
</xsl:stylesheet>

