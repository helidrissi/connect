<?xml version="1.0" encoding="ISO-8859-1"?>	<!--Norme � respecter-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.0">	<!--Norme � respecter-->
	<xsl:import href="/acu/mistral/fop/enteteliste.xsl"/>	<!--Importe l'ent�te de la page-->
	<xsl:template match="/mistral">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">		<!--Norme � respecter-->
			<fo:layout-master-set>
				<fo:simple-page-master 
					master-name="master-page" 
					page-height="297mm" 
					page-width="210mm" 
					margin-top="6.0mm" 
					margin-bottom="10mm" 
					margin-left="7mm" 
					margin-right="5mm">
					<fo:region-body 
						margin-top="25mm" 
						margin-bottom="10mm"/>
					<fo:region-before 
						extent="30mm"/>
					<fo:region-after 
						extent="10mm"/>
				</fo:simple-page-master>
			</fo:layout-master-set>
			<fo:page-sequence 
				master-reference="master-page">
        		<fo:static-content 
        			flow-name="xsl-region-before" 
        			font-size="9pt">				
					<xsl:apply-templates select="enteteliste"/>		<!--S�lectionne et affiche l'ent�te de la page-->
				</fo:static-content>
				<fo:static-content 
					flow-name="xsl-region-after" 
					font-size="9pt">
					<xsl:apply-templates select="piedliste"/>		<!--S�lectionne et affiche le pied de page-->
				</fo:static-content>
				<fo:flow 
					flow-name="xsl-region-body" 
					font-size="9pt">		<!--Taille de la police pour l'espace de travail-->
					<fo:table 
						table-layout="fixed" 
						border-style="solid 0.3mm" 
						border-width="0.0mm" 
						width="195mm">		<!--Taille du tableau-->
						<fo:table-column  
							border="solid 0.3mm" 
							column-width="10mm"/> <!--1-->
						<fo:table-column  
							border="solid 0.3mm" 
							column-width="9mm"/> <!--2-->
						<fo:table-column  
							border="solid 0.3mm" 
							column-width="9mm"/> <!--3-->
						<fo:table-column  
							border="solid 0.3mm" 
							column-width="8mm"/> <!--4-->
						<fo:table-column  
							border="solid 0.3mm" 
							column-width="30mm"/> <!--5-->
						<fo:table-column  
							border="solid 0.3mm" 
							column-width="12mm"/> <!--6-->
						<fo:table-column  
							border="solid 0.3mm" 
							column-width="5mm"/> <!--7-->
						<fo:table-column  
							border="solid 0.3mm" 
							column-width="5mm"/> <!--8-->
						<fo:table-column  
							border="solid 0.3mm" 
							column-width="8mm"/> <!--9-->
						<fo:table-column  
							border="solid 0.3mm" 
							column-width="2mm"/> <!--10-->
						<fo:table-column  
							border="solid 0.3mm" 
							column-width="7mm"/> <!--11-->
						<fo:table-column  
							border="solid 0.3mm" 
							column-width="20mm"/> <!--12-->
						<fo:table-column  
							border="solid 0.3mm" 
							column-width="11mm"/> <!--13-->
							
						<fo:table-header>
							<fo:table-row 
								line-height="20pt" 
								background-color="{$colorgris}" 
								color="black" 
								font-weight="bold">
								<fo:table-cell 
									border="solid 0.3mm" 
									text-align="center"> <fo:block> <xsl:value-of select="/mistral/enteteliste/zontitdat"/> </fo:block> 
								</fo:table-cell> <!--1-->
								<fo:table-cell 
									border="solid 0.3mm" 
									text-align="center"> <fo:block> <xsl:value-of select="/mistral/enteteliste/zontitdeb"/> </fo:block> 
								</fo:table-cell> <!--2-->
								<fo:table-cell 
									border="solid 0.3mm" 
									text-align="center"> <fo:block> <xsl:value-of select="/mistral/enteteliste/zontitfin"/> </fo:block> 
								</fo:table-cell> <!--3-->
								<fo:table-cell 
									border="solid 0.3mm" 
									text-align="center"> <fo:block> <xsl:value-of select="/mistral/enteteliste/zontitdur"/> </fo:block> 
								</fo:table-cell> <!--4-->
								<fo:table-cell 
									border="solid 0.3mm" 
									text-align="center"> <fo:block> <xsl:value-of select="/mistral/enteteliste/zontittra"/> </fo:block> 
								</fo:table-cell> <!--5-->
								<fo:table-cell 
									border="solid 0.3mm" 
									text-align="center"> <fo:block> <xsl:value-of select="/mistral/enteteliste/zontitlog"/> </fo:block> 
								</fo:table-cell> <!--6-->
								<fo:table-cell 
									border="solid 0.3mm" 
									text-align="center"> <fo:block> <xsl:value-of select="/mistral/enteteliste/zontitpro"/> </fo:block> 
								</fo:table-cell> <!--7-->
								<fo:table-cell 
									border="solid 0.3mm" 
									text-align="center"> <fo:block> <xsl:value-of select="/mistral/enteteliste/zontitsoc"/> </fo:block> 
								</fo:table-cell> <!--8-->
								<fo:table-cell 
									border="solid 0.3mm" 
									text-align="center"> <fo:block> <xsl:value-of select="/mistral/enteteliste/zontitpcs"/> </fo:block> 
								</fo:table-cell> <!--9-->
								<fo:table-cell 
									border="solid 0.3mm" 
									text-align="center"> <fo:block> <xsl:value-of select="/mistral/enteteliste/zontiterr"/> </fo:block> 
								</fo:table-cell> <!--10-->
								<fo:table-cell 
									border="solid 0.3mm" 
									text-align="center"> <fo:block> <xsl:value-of select="/mistral/enteteliste/zontitexe"/> </fo:block> 
								</fo:table-cell> <!--11-->
								<fo:table-cell 
									border="solid 0.3mm" 
									text-align="center"> <fo:block> <xsl:value-of select="/mistral/enteteliste/zontitpos"/> </fo:block> 
								</fo:table-cell> <!--12-->
								<fo:table-cell 
									border="solid 0.3mm" 
									text-align="center"> <fo:block> <xsl:value-of select="/mistral/enteteliste/zontitenv"/> </fo:block> 
								</fo:table-cell> <!--13-->
							</fo:table-row>
						</fo:table-header>
						<fo:table-body>
							<xsl:apply-templates select="lig"/>
						</fo:table-body>
					</fo:table>
					<fo:block id="Fin"/>
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>


	<xsl:template match="lig">
		<fo:table-row 
			line-height="10pt"
			font-size="7pt">
			<fo:table-cell 
				text-align="center"> 
				<fo:block> <xsl:value-of select="dat"/> </fo:block> 
			</fo:table-cell> <!--1-->
			<fo:table-cell 
				text-align="center"> 
				<fo:block> <xsl:value-of select="deb"/> </fo:block> 
			</fo:table-cell> <!--2-->
			<fo:table-cell 
				text-align="center"> 
				<fo:block> <xsl:value-of select="fin"/> </fo:block> 
			</fo:table-cell> <!--3-->
			<fo:table-cell 
				text-align="center"> 
				<fo:block> <xsl:value-of select="dur"/> </fo:block> 
			</fo:table-cell> <!--4-->
			<fo:table-cell 
				margin-left="0.5mm" 
				text-align="left">   
				<fo:block> <xsl:value-of select="tra"/> </fo:block> 
			</fo:table-cell> <!--5-->
			<fo:table-cell 
				margin-left="0.5mm" 
				text-align="left"> 
				<fo:block> <xsl:value-of select="log"/> </fo:block> 
			</fo:table-cell> <!--6-->
  			<fo:table-cell 
  				text-align="center"> 
  				<fo:block> <xsl:value-of select="pro"/> </fo:block> 
  			</fo:table-cell> <!--7-->
  			<fo:table-cell 
  				text-align="center"> 
  				<fo:block> <xsl:value-of select="soc"/> </fo:block> 
  			</fo:table-cell> <!--8-->
  			<fo:table-cell 
  				text-align="center"> 
  				<fo:block> <xsl:value-of select="pcs"/> </fo:block> 
  			</fo:table-cell> <!--9-->
  			<fo:table-cell
  				text-align="center">
  				<xsl:if test="err=1">
  					<fo:block> E </fo:block> 
  				</xsl:if>	
  			</fo:table-cell> <!--10-->
			<fo:table-cell 
				margin-left="0.5mm" 
				text-align="left"> 
				<fo:block> <xsl:value-of select="exe"/> </fo:block> 
			</fo:table-cell> <!--11-->
			<fo:table-cell 
				margin-left="0.5mm" 
				text-align="left"> 
				<fo:block> <xsl:value-of select="pos"/> </fo:block> 
			</fo:table-cell> <!--12-->
			<fo:table-cell 
				margin-left="0.5mm" 
				text-align="left"> 
				<fo:block> <xsl:value-of select="env"/> </fo:block> 
			</fo:table-cell> <!--12-->
		</fo:table-row>
		
	</xsl:template>

 
</xsl:stylesheet>      
