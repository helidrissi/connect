<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.0">
	<xsl:import href="/acu/mistral/fop/enteteliste.xsl" />

	<xsl:decimal-format name="montants_mistral" decimal-separator="," grouping-separator="." />

	<xsl:template match="/mistral">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<fo:layout-master-set>
				<fo:simple-page-master master-name="master-page" page-height="297mm" page-width="210mm" margin-top="6.0mm" margin-bottom="10mm" margin-left="7mm" margin-right="5mm">
					<fo:region-body margin-top="25mm" margin-bottom="10mm" />
					<fo:region-before extent="30mm" />
					<fo:region-after extent="10mm" />
				</fo:simple-page-master>
			</fo:layout-master-set>
			<fo:page-sequence master-reference="master-page">
					<fo:static-content flow-name="xsl-region-before" font-size="9pt">
						<xsl:apply-templates select="enteteliste" />
						<xsl:apply-templates select="periode" />
					</fo:static-content>
					<fo:static-content flow-name="xsl-region-after" font-size="9pt">
						<xsl:apply-templates select="piedliste" />
					</fo:static-content>
					<fo:flow flow-name="xsl-region-body" line-height="14pt" font-size="6.5pt">
						<fo:table border-style="solid 0.2mm" border-width="0.0mm" width="195mm">
							<fo:table-column padding-top="-0.15mm" padding-left="-0.15mm" padding-right="-0.15mm" border-bottom="solid 0.2mm" column-width="11mm" />
							<fo:table-column padding-top="-0.15mm" padding-left="-0.15mm" padding-right="-0.15mm" border-bottom="solid 0.2mm" column-width="33mm" />
							<fo:table-column padding-top="-0.15mm" padding-left="-0.15mm" padding-right="-0.15mm" border-bottom="solid 0.2mm" column-width="9mm" />
							<fo:table-column padding-top="-0.15mm" padding-left="-0.15mm" padding-right="-0.15mm" border-bottom="solid 0.2mm" column-width="33mm" />
							<fo:table-column padding-top="-0.15mm" padding-left="-0.15mm" padding-right="-0.15mm" border-bottom="solid 0.2mm" column-width="33mm" />
							<fo:table-column padding-top="-0.15mm" padding-left="-0.15mm" padding-right="-0.15mm" border-bottom="solid 0.2mm" column-width="8mm" />
							<fo:table-column padding-top="-0.15mm" padding-left="-0.15mm" padding-right="-0.15mm" border-bottom="solid 0.2mm" column-width="16mm" />
							<fo:table-column padding-top="-0.15mm" padding-left="-0.15mm" padding-right="-0.15mm" border-bottom="solid 0.2mm" column-width="49mm" />
							<fo:table-header>
							<fo:table-row line-height="20pt" background-color="{$colorbleu}" color="black" font-weight="bold"  font-size="7.5pt">
								<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border="solid 0.3mm" text-align="center"> <fo:block> <xsl:value-of select="/mistral/enteteliste/zontitcod"/> </fo:block> </fo:table-cell>
								<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border="solid 0.3mm" border-right="solid 0.0mm" text-align="center"> <fo:block> <xsl:value-of select="/mistral/enteteliste/zontitrai"/> </fo:block> </fo:table-cell>
								<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border="solid 0.3mm" border-left="solid 0.0mm"  text-align="center" number-columns-spanned="2"> <fo:block> <xsl:value-of select="/mistral/enteteliste/zontitadr"/> </fo:block> </fo:table-cell>
								<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border="solid 0.3mm" text-align="center"> <fo:block> <xsl:value-of select="/mistral/enteteliste/zontititc"/> </fo:block> </fo:table-cell>
								<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border="solid 0.3mm" text-align="center"> <fo:block> <xsl:value-of select="/mistral/enteteliste/zontitfct"/> </fo:block> </fo:table-cell>
								<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border="solid 0.3mm" text-align="center"> <fo:block> <xsl:value-of select="/mistral/enteteliste/zontittel"/> </fo:block> </fo:table-cell>
								<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border="solid 0.3mm" text-align="center"> <fo:block> <xsl:value-of select="/mistral/enteteliste/zontitema"/> </fo:block> </fo:table-cell>
							</fo:table-row>
							</fo:table-header>
							<fo:table-footer>
							</fo:table-footer>
							<fo:table-body>
								<xsl:apply-templates select="ligne" />
								<xsl:apply-templates select="total" />
							</fo:table-body>
						</fo:table>
					<fo:block id="Fin" />
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>

	<xsl:template match="ligne">
		<fo:table-row>
			<fo:table-cell number-columns-spanned="1" margin-left="0.5mm" margin-right="0.5mm" border-top="solid 0.2mm" border-bottom="solid 0.2mm" border-left="solid 0.2mm" border-right="solid 0.2mm" text-align="right">
				<fo:block>
					<xsl:value-of select="fco" />
				</fo:block>
			</fo:table-cell>
			<fo:table-cell number-columns-spanned="1" margin-left="0.5mm" margin-right="0.5mm" border-top="solid 0.2mm" border-bottom="solid 0.2mm" border-left="solid 0.0mm" border-right="solid 0.0mm" text-align="left">
				<fo:block>
					<xsl:value-of select="rai" />
				</fo:block>
			</fo:table-cell>
			<fo:table-cell number-columns-spanned="1" margin-left="0.5mm" margin-right="0.5mm" border-top="solid 0.2mm" border-bottom="solid 0.2mm" border-left="solid 0.0mm" border-right="solid 0.0mm" text-align="center">
				<fo:block>
					<xsl:value-of select="pos" />
				</fo:block>
			</fo:table-cell>
			<fo:table-cell number-columns-spanned="1" margin-left="0.5mm" margin-right="0.5mm" border-top="solid 0.2mm" border-bottom="solid 0.2mm" border-left="solid 0.0mm" border-right="solid 0.2mm" text-align="left">
				<fo:block>
					<xsl:value-of select="vil" />
				</fo:block>
			</fo:table-cell>
			<fo:table-cell number-columns-spanned="1" margin-left="0.5mm" margin-right="0.5mm" border-top="solid 0.2mm" border-bottom="solid 0.2mm" border-left="solid 0.0mm" border-right="solid 0.2mm" text-align="left">
				<fo:block>
					<xsl:value-of select="itc" />
				</fo:block>
			</fo:table-cell>
			<fo:table-cell number-columns-spanned="1" margin-left="0.5mm" margin-right="0.5mm" border-top="solid 0.2mm" border-bottom="solid 0.2mm" border-left="solid 0.0mm" border-right="solid 0.2mm" text-align="left">
				<fo:block>
					<xsl:value-of select="fie" />
				</fo:block>
			</fo:table-cell>
			<fo:table-cell number-columns-spanned="1" margin-left="0.5mm" margin-right="0.5mm" border-top="solid 0.2mm" border-bottom="solid 0.2mm" border-left="solid 0.0mm" border-right="solid 0.2mm" text-align="center">
				<fo:block>
					<xsl:value-of select="tel" />
				</fo:block>
			</fo:table-cell>
			<fo:table-cell number-columns-spanned="1" margin-left="0.5mm" margin-right="0.5mm" border-top="solid 0.2mm" border-bottom="solid 0.2mm" border-left="solid 0.0mm" border-right="solid 0.2mm" text-align="left">
				<fo:block>
					<xsl:value-of select="ema" />
				</fo:block>
			</fo:table-cell>
		</fo:table-row>
	</xsl:template>

	<xsl:template match="total">
		<fo:table-row>
			<fo:table-cell number-columns-spanned="9">
				<fo:block>
					&#160;
				</fo:block>
			</fo:table-cell>
		</fo:table-row>
		<fo:table-row font-weight="bold" background-color="{$colorbleu}" font-size="8pt">
			<fo:table-cell number-columns-spanned="4" margin-left="0.5mm" margin-right="0.5mm" border="solid 0.2mm" border-left="solid 0.2mm" text-align="center">
				<fo:block>
					<xsl:value-of select="/mistral/enteteliste/zontitnbr"/>:&#160;<xsl:value-of select="nbt"/>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell number-columns-spanned="2" margin-left="0.5mm" margin-right="0.5mm" border="solid 0.2mm" text-align="center">
			<fo:block>
				<xsl:value-of select="/mistral/enteteliste/zontitnbe"/>:&#160;<xsl:value-of select="nbe"/>
			</fo:block>
		</fo:table-cell>
			<fo:table-cell number-columns-spanned="2" margin-left="0.5mm" margin-right="0.5mm" border="solid 0.2mm" border-right="solid 0.2mm" text-align="center">
			<fo:block>
				<xsl:value-of select="/mistral/enteteliste/zontitnbp"/>:&#160;<xsl:value-of select="nbp"/>
			</fo:block>
		</fo:table-cell>
		</fo:table-row>
		
	</xsl:template>

	
</xsl:stylesheet>

