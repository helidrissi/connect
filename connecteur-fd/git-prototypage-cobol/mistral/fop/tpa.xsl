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
					<xsl:apply-templates select="TAB"/>
					<fo:block> &#160;  </fo:block>
					<xsl:apply-templates select="LEGENDE"/>					
					<fo:block id="Fin"/>
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>




	<xsl:template match="TAB">	
	<fo:table table-layout="fixed" border-style="solid 0.3mm" border-width="0.0mm" width="195mm">		<!--Taille du tableau-->
					    <fo:table-column padding-top="-0.15mm" padding-left="-0.15mm" padding-right="-0.15mm" border="solid 0.3mm" column-width="8mm" />
						<fo:table-column padding-top="-0.15mm" padding-left="-0.15mm" padding-right="-0.15mm" border="solid 0.3mm" column-width="44mm" />
						<fo:table-column padding-top="-0.15mm" padding-left="-0.15mm" padding-right="-0.15mm" border="solid 0.3mm" column-width="67mm"/>
						<fo:table-column padding-top="-0.15mm" padding-left="-0.15mm" padding-right="-0.15mm" border="solid 0.3mm" column-width="13mm"/>
						<fo:table-column padding-top="-0.15mm" padding-left="-0.15mm" padding-right="-0.15mm" border="solid 0.3mm" column-width="29mm"/>
						<xsl:if test="/mistral/mxpalm/valeur = 1">
						 <fo:table-column padding-top="-0.15mm" padding-left="-0.15mm" padding-right="-0.15mm" border="solid 0.3mm" column-width="18mm"/>
						 <fo:table-column padding-top="-0.15mm" padding-left="-0.15mm" padding-right="-0.15mm" border="solid 0.3mm" column-width="16mm"/>
						</xsl:if>
						<xsl:if test="/mistral/mxpalm/valeur != 1">
						 <fo:table-column padding-top="-0.15mm" padding-left="-0.15mm" padding-right="-0.15mm" border="solid 0.3mm" column-width="32mm"/>
						</xsl:if> 
						<fo:table-header>
							<fo:table-row line-height="20pt" background-color="{$colorbleu}" color="black" font-weight="bold">
							    <fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border="solid 0.3mm" text-align="center"> <fo:block> <xsl:value-of select="/mistral/enteteliste/zontitcod"/> </fo:block> </fo:table-cell>
								<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border="solid 0.3mm" text-align="center"> <fo:block> <xsl:value-of select="/mistral/enteteliste/zontittyp"/> </fo:block> </fo:table-cell>
								<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border="solid 0.3mm" text-align="center"> <fo:block> <xsl:value-of select="/mistral/enteteliste/zontitlib"/> </fo:block> </fo:table-cell>
								<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border="solid 0.3mm" text-align="center"> <fo:block> <xsl:value-of select="/mistral/enteteliste/zontitabr"/> </fo:block> </fo:table-cell>
								<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border="solid 0.3mm" text-align="center"> <fo:block> <xsl:value-of select="/mistral/enteteliste/zontitlir"/> </fo:block> </fo:table-cell>
								<xsl:if test="/mistral/mxpalm/valeur = 1">
								 <fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border="solid 0.3mm" text-align="center"> <fo:block> <xsl:value-of select="/mistral/enteteliste/zontitacd"/> </fo:block> </fo:table-cell>
								 <fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border="solid 0.3mm" text-align="center"> <fo:block> <xsl:value-of select="/mistral/enteteliste/zontitimm"/> </fo:block> </fo:table-cell>
								</xsl:if>
								<xsl:if test="/mistral/mxpalm/valeur != 1">
								 <fo:table-cell margin-left="0.5mm" margin-right="0.5mm" border="solid 0.3mm" text-align="center"> <fo:block> <xsl:value-of select="/mistral/enteteliste/zontitcom"/> </fo:block> </fo:table-cell>
								</xsl:if>								 
							</fo:table-row>
						</fo:table-header>
						<fo:table-footer>
						</fo:table-footer>
						<fo:table-body>
							<fo:table-row line-height="10pt">
								<fo:table-cell number-columns-spanned="8"> <fo:block color="white"> . </fo:block> </fo:table-cell>
							</fo:table-row>
							<xsl:apply-templates select="tpa"/>							
						</fo:table-body>
					</fo:table>
	</xsl:template>
	<xsl:template match="tpa">
		<fo:table-row line-height="15pt">
			<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" text-align="center"> <fo:block> <xsl:value-of select="cod"/> </fo:block> </fo:table-cell>
			<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" text-align="left"> <fo:block> <xsl:value-of select="typ"/> </fo:block> </fo:table-cell>
			<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" text-align="left">   <fo:block> <xsl:value-of select="lib"/> </fo:block> </fo:table-cell>
			<fo:table-cell margin-left="0.5mm" margin-right="0.5mm" text-align="center"> <fo:block> <xsl:value-of select="abr"/> </fo:block> </fo:table-cell>
  		    <fo:table-cell margin-left="0.5mm" margin-right="0.5mm" text-align="center"> <fo:block> <xsl:value-of select="lir"/> </fo:block> </fo:table-cell>
  		    <xsl:if test="/mistral/mxpalm/valeur = 1">
  		      <fo:table-cell margin-left="0.5mm" margin-right="0.5mm" text-align="center"> <xsl:if test="acd = 1"> <fo:block> <fo:external-graphic src="/acu/mx/fop/CBCHECK13.JPG" width="3mm" height="3mm"/> </fo:block> </xsl:if> <xsl:if test="acd = 0"> <fo:block> <fo:external-graphic src="/acu/mx/fop/CBUNCHK13.JPG" width="3mm" height="3mm"/> </fo:block> </xsl:if></fo:table-cell>
  		      <fo:table-cell margin-left="0.5mm" margin-right="0.5mm" text-align="center"> <xsl:if test="imm = 1"> <fo:block> <fo:external-graphic src="/acu/mx/fop/CBCHECK13.JPG" width="3mm" height="3mm"/> </fo:block> </xsl:if> <xsl:if test="imm = 0"> <fo:block> <fo:external-graphic src="/acu/mx/fop/CBUNCHK13.JPG" width="3mm" height="3mm"/> </fo:block> </xsl:if></fo:table-cell>
  		    </xsl:if>
  		    <xsl:if test="/mistral/mxpalm/valeur != 1">
  		      <fo:table-cell margin-left="0.5mm" margin-right="0.5mm" text-align="center"> <fo:block>&#160;</fo:block></fo:table-cell>
  		    </xsl:if>
  		    
		</fo:table-row>
	</xsl:template>

 
	<xsl:template match="titre">
		<fo:block-container left="0.0mm" top="30mm" width="195mm" height="7mm" position="absolute">
			<fo:block font-size="13pt" font-weight="bold" text-align="center"> <xsl:value-of select="text()"/> </fo:block>
		</fo:block-container>
	</xsl:template>
	
	<xsl:template match="LEGENDE">	
					<fo:table table-layout="fixed" border-style="solid 0.3mm" border-width="0.0mm" width="195mm" position="absolute">
						<fo:table-column padding-top="-0.15mm" padding-left="-0.15mm" padding-right="-0.15mm" column-width="150mm"/>
						<fo:table-column padding-top="-0.15mm" padding-left="-0.15mm" padding-right="-0.15mm" column-width="45mm"/>	
						<fo:table-header> 
							<fo:table-row background-color="{$colorbleu}" line-height="15pt" font-size="8pt">
								<fo:table-cell margin-left="0.5mm" margin-right="0.5mm"   border-bottom="solid 0.2mm" border-top="solid 0.2mm" border-left="solid 0.2mm" text-align="left"> <fo:block> <xsl:value-of select="/mistral/enteteliste/zontitleg"/> </fo:block> </fo:table-cell>																									
								<fo:table-cell margin-left="0.5mm" margin-right="0.5mm"   border-top="solid 0.2mm" border-bottom="solid 0.2mm" border-right="solid 0.2mm" text-align="left"> <fo:block>  </fo:block> </fo:table-cell>																																																																																										
							</fo:table-row>
					 	</fo:table-header>	  
						<fo:table-footer>						       							
							<fo:table-row line-height="1pt">
									<fo:table-cell number-columns-spanned="2" margin-left="0.5mm" margin-right="0.5mm"   border-bottom="solid 0.2mm" border-left="solid 0.2mm" border-right="solid 0.2mm" text-align="center"> <fo:block> &#160;  </fo:block> </fo:table-cell>																					
								</fo:table-row>						
						</fo:table-footer>					
						<fo:table-body>
							<xsl:apply-templates select="LEG"/>															
						</fo:table-body>	
					</fo:table>								
	</xsl:template>					
	<xsl:template match="LEG">																		
		<fo:table-row line-height="15pt" font-size="8pt">
		<fo:table-cell background-color="white"  border-top="solid 0.2mm" border-bottom="solid 0.2mm" border-left="solid 0.2mm" border-right="solid 0.2mm" margin-left="0.5mm" margin-right="0.5mm"  text-align="center">						
			<fo:block text-align="left">
					<xsl:value-of select="/mistral/enteteliste/zontitleg11"/> &#160; <xsl:value-of select="/mistral/enteteliste/zontitleg12"/> 
			</fo:block>
			<fo:block text-align="left">
					<xsl:value-of select="/mistral/enteteliste/zontitleg21"/> &#160; <xsl:value-of select="/mistral/enteteliste/zontitleg22"/> 
			</fo:block>
		</fo:table-cell>	
		<fo:table-cell background-color="white"  border-top="solid 0.2mm" border-bottom="solid 0.2mm" border-left="solid 0.2mm" border-right="solid 0.2mm" margin-left="0.5mm" margin-right="0.5mm"  text-align="center">				
				<fo:block text-align="left">
					&#160;
				</fo:block>				
		</fo:table-cell>						
		</fo:table-row>	
	</xsl:template>
</xsl:stylesheet>      
