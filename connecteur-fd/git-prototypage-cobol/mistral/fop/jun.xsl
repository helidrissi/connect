<?xml version="1.0" encoding="ISO-8859-1"?>	<!--Norme à respecter-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.0">	<!--Norme à respecter-->
	<xsl:import href="/acu/mistral/fop/enteteliste.xsl"/>	<!--Importe l'entête de la page-->
	<xsl:template match="/mistral">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">		<!--Norme à respecter-->
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
					<xsl:apply-templates select="enteteliste"/>		<!--Sélectionne et affiche l'entête de la page-->
				</fo:static-content>
				<fo:static-content 
					flow-name="xsl-region-after" 
					font-size="9pt">
					<xsl:apply-templates select="piedliste"/>		<!--Sélectionne et affiche le pied de page-->
				</fo:static-content>
				<fo:flow 
					flow-name="xsl-region-body" 
					font-size="8pt">		<!--Taille de la police pour l'espace de travail-->
					<fo:table 
						table-layout="fixed" 
						border-style="solid 0.3mm" 
						border-width="0.0mm" 
						width="195mm">		<!--Taille du tableau-->
						<fo:table-column  
							border="solid 0.3mm" 
							column-width="8mm"/> <!--1-->
						<fo:table-column  
							border="solid 0.3mm" 
							column-width="32mm"/> <!--2-->
						<fo:table-column  
							border="solid 0.3mm" 
							column-width="6mm"/> <!--3-->
						<fo:table-column  
							border="solid 0.3mm" 
							column-width="6mm"/> <!--4-->
						<fo:table-column  
							border="solid 0.3mm" 
							column-width="6mm"/> <!--5-->
						<fo:table-column  
							border="solid 0.3mm" 
							column-width="6mm"/> <!--6-->
						<fo:table-column  
							border="solid 0.3mm" 
							column-width="6mm"/> <!--7-->
						<fo:table-column  
							border="solid 0.3mm" 
							column-width="6mm"/> <!--8-->
						<fo:table-column  
							border="solid 0.3mm" 
							column-width="6mm"/> <!--9-->
						<fo:table-column  
							border="solid 0.3mm" 
							column-width="6mm"/> <!--10-->
						<fo:table-column  
							border="solid 0.3mm" 
							column-width="6mm"/> <!--11-->
						<fo:table-column  
							border="solid 0.3mm" 
							column-width="6mm"/> <!--12-->
						<fo:table-column  
							border="solid 0.3mm" 
							column-width="6mm"/> <!--13-->
						<fo:table-column  
							border="solid 0.3mm" 
							column-width="6mm"/> <!--14-->
						<fo:table-column  
							border="solid 0.3mm" 
							column-width="6mm"/> <!--15-->
						<fo:table-column  
							border="solid 0.3mm" 
							column-width="6mm"/> <!--16-->
						<fo:table-column  
							border="solid 0.3mm" 
							column-width="6mm"/> <!--17-->
						<fo:table-column  
							border="solid 0.3mm" 
							column-width="6mm"/> <!--18-->
						<fo:table-column  
							border="solid 0.3mm" 
							column-width="6mm"/> <!--19-->
						<fo:table-column  
							border="solid 0.3mm" 
							column-width="6mm"/> <!--20-->	
						<fo:table-column  
							border="solid 0.3mm" 
							column-width="6mm"/> <!--21-->	
						<fo:table-column  
							border="solid 0.3mm" 
							column-width="6mm"/> <!--22-->		
						<fo:table-header>
							<fo:table-row 
								line-height="12pt" 
								background-color="{$colorgris}" 
								color="black" 
								font-weight="bold">
								<fo:table-cell 
									border="solid 0.3mm" 
									text-align="center"> <fo:block> <xsl:value-of select="/mistral/enteteliste/zontitcod"/> </fo:block> 
								</fo:table-cell> <!--1-->
								<fo:table-cell 
									border="solid 0.3mm" 
									text-align="center"> <fo:block> <xsl:value-of select="/mistral/enteteliste/zontitnom"/> </fo:block> 
								</fo:table-cell> <!--2-->
								<fo:table-cell 
									border="solid 0.3mm" 
									text-align="center"> <fo:block> <xsl:value-of select="/mistral/enteteliste/zontitcol01"/> </fo:block> 
								</fo:table-cell> <!--3-->
								<fo:table-cell 
									border="solid 0.3mm" 
									text-align="center"> <fo:block> <xsl:value-of select="/mistral/enteteliste/zontitcol02"/> </fo:block> 
								</fo:table-cell> <!--4-->
								<fo:table-cell 
									border="solid 0.3mm" 
									text-align="center"> <fo:block> <xsl:value-of select="/mistral/enteteliste/zontitcol03"/> </fo:block> 
								</fo:table-cell> <!--5-->
								<fo:table-cell 
									border="solid 0.3mm" 
									text-align="center"> <fo:block> <xsl:value-of select="/mistral/enteteliste/zontitcol04"/> </fo:block> 
								</fo:table-cell> <!--6-->
								<fo:table-cell 
									border="solid 0.3mm" 
									text-align="center"> <fo:block> <xsl:value-of select="/mistral/enteteliste/zontitcol05"/> </fo:block> 
								</fo:table-cell> <!--7-->
								<fo:table-cell 
									border="solid 0.3mm" 
									text-align="center"> <fo:block> <xsl:value-of select="/mistral/enteteliste/zontitcol06"/> </fo:block> 
								</fo:table-cell> <!--8-->
								<fo:table-cell 
									border="solid 0.3mm" 
									text-align="center"> <fo:block> <xsl:value-of select="/mistral/enteteliste/zontitcol07"/> </fo:block> 
								</fo:table-cell> <!--9-->
								<fo:table-cell 
									border="solid 0.3mm" 
									text-align="center"> <fo:block> <xsl:value-of select="/mistral/enteteliste/zontitcol08"/> </fo:block> 
								</fo:table-cell> <!--10-->
								<fo:table-cell 
									border="solid 0.3mm" 
									text-align="center"> <fo:block> <xsl:value-of select="/mistral/enteteliste/zontitcol09"/> </fo:block> 
								</fo:table-cell> <!--11-->
								<fo:table-cell 
									border="solid 0.3mm" 
									text-align="center"> <fo:block> <xsl:value-of select="/mistral/enteteliste/zontitcol10"/> </fo:block> 
								</fo:table-cell> <!--12-->
								<fo:table-cell 
									border="solid 0.3mm" 
									text-align="center"> <fo:block> <xsl:value-of select="/mistral/enteteliste/zontitcol11"/> </fo:block> 
								</fo:table-cell> <!--13-->
								<fo:table-cell 
									border="solid 0.3mm" 
									text-align="center"> <fo:block> <xsl:value-of select="/mistral/enteteliste/zontitcol12"/> </fo:block> 
								</fo:table-cell> <!--14-->
								<fo:table-cell 
									border="solid 0.3mm" 
									text-align="center"> <fo:block> <xsl:value-of select="/mistral/enteteliste/zontitcol13"/> </fo:block> 
								</fo:table-cell> <!--15-->
								<fo:table-cell 
									border="solid 0.3mm" 
									text-align="center"> <fo:block> <xsl:value-of select="/mistral/enteteliste/zontitcol14"/> </fo:block> 
								</fo:table-cell> <!--16-->
								<fo:table-cell 
									border="solid 0.3mm" 
									text-align="center"> <fo:block> <xsl:value-of select="/mistral/enteteliste/zontitcol15"/> </fo:block> 
								</fo:table-cell> <!--17-->
								<fo:table-cell 
									border="solid 0.3mm" 
									text-align="center"> <fo:block> <xsl:value-of select="/mistral/enteteliste/zontitcol16"/> </fo:block> 
								</fo:table-cell> <!--18-->
								<fo:table-cell 
									border="solid 0.3mm" 
									text-align="center"> <fo:block> <xsl:value-of select="/mistral/enteteliste/zontitcol17"/> </fo:block> 
								</fo:table-cell> <!--19-->
								<fo:table-cell 
									border="solid 0.3mm" 
									text-align="center"> <fo:block> <xsl:value-of select="/mistral/enteteliste/zontitcol18"/> </fo:block> 
								</fo:table-cell> <!--20-->
								<fo:table-cell 
									border="solid 0.3mm" 
									text-align="center"> <fo:block> <xsl:value-of select="/mistral/enteteliste/zontitcol19"/> </fo:block> 
								</fo:table-cell> <!--21-->
								<fo:table-cell 
									border="solid 0.3mm" 
									text-align="center"> <fo:block> <xsl:value-of select="/mistral/enteteliste/zontitcol20"/> </fo:block> 
								</fo:table-cell> <!--22-->
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
			line-height="12pt"
			font-size="8pt">
			<fo:table-cell border="solid 0.3mm" 
				text-align="center"> 
				<fo:block> <xsl:value-of select="ide"/> </fo:block> 
			</fo:table-cell> <!--1-->
			<fo:table-cell border="solid 0.3mm" 
				text-align="left" margin-left="1mm"> 
				<fo:block> <xsl:value-of select="nom"/> </fo:block> 
			</fo:table-cell> <!--2-->
			<fo:table-cell border="solid 0.3mm" 
				text-align="center"> 
				<fo:block> <xsl:value-of select="col01"/> </fo:block> 
			</fo:table-cell> <!--3-->
			<fo:table-cell border="solid 0.3mm" 
				text-align="center"> 
				<fo:block> <xsl:value-of select="col02"/> </fo:block> 
			</fo:table-cell> <!--4-->
			<fo:table-cell border="solid 0.3mm" 
				text-align="center">   
				<fo:block> <xsl:value-of select="col03"/> </fo:block> 
			</fo:table-cell> <!--5-->
			<fo:table-cell border="solid 0.3mm" 
				text-align="center"> 
				<fo:block> <xsl:value-of select="col04"/> </fo:block> 
			</fo:table-cell> <!--6-->
  			<fo:table-cell border="solid 0.3mm" 
  				text-align="center"> 
  				<fo:block> <xsl:value-of select="col05"/> </fo:block> 
  			</fo:table-cell> <!--7-->
  			<fo:table-cell border="solid 0.3mm" 
  				text-align="center"> 
  				<fo:block> <xsl:value-of select="col06"/> </fo:block> 
  			</fo:table-cell> <!--8-->
  			<fo:table-cell border="solid 0.3mm" 
  				text-align="center"> 
  				<fo:block> <xsl:value-of select="col07"/> </fo:block> 
  			</fo:table-cell> <!--9-->
  			<fo:table-cell border="solid 0.3mm" 
  				text-align="center"> 
  				<fo:block> <xsl:value-of select="col08"/> </fo:block> 
  			</fo:table-cell> <!--1-->
  			<fo:table-cell border="solid 0.3mm" 
  				text-align="center"> 
  				<fo:block> <xsl:value-of select="col09"/> </fo:block> 
  			</fo:table-cell> <!--11-->
  			<fo:table-cell border="solid 0.3mm" 
  				text-align="center"> 
  				<fo:block> <xsl:value-of select="col10"/> </fo:block> 
  			</fo:table-cell> <!--12-->
  			<fo:table-cell border="solid 0.3mm" 
  				text-align="center"> 
  				<fo:block> <xsl:value-of select="col11"/> </fo:block> 
  			</fo:table-cell> <!--13-->
  			<fo:table-cell border="solid 0.3mm" 
  				text-align="center"> 
  				<fo:block> <xsl:value-of select="col12"/> </fo:block> 
  			</fo:table-cell> <!--14-->
  			<fo:table-cell border="solid 0.3mm" 
  				text-align="center"> 
  				<fo:block> <xsl:value-of select="col13"/> </fo:block> 
  			</fo:table-cell> <!--15-->
  			<fo:table-cell border="solid 0.3mm" 
  				text-align="center"> 
  				<fo:block> <xsl:value-of select="col14"/> </fo:block> 
  			</fo:table-cell> <!--16-->
  			<fo:table-cell border="solid 0.3mm" 
  				text-align="center"> 
  				<fo:block> <xsl:value-of select="col15"/> </fo:block> 
  			</fo:table-cell> <!--17-->
  			<fo:table-cell border="solid 0.3mm" 
  				text-align="center"> 
  				<fo:block> <xsl:value-of select="col16"/> </fo:block> 
  			</fo:table-cell> <!--18-->
  			<fo:table-cell border="solid 0.3mm" 
  				text-align="center"> 
  				<fo:block> <xsl:value-of select="col17"/> </fo:block> 
  			</fo:table-cell> <!--19-->
  			<fo:table-cell border="solid 0.3mm" 
  				text-align="center"> 
  				<fo:block> <xsl:value-of select="col18"/> </fo:block> 
  			</fo:table-cell> <!--20-->
  			<fo:table-cell border="solid 0.3mm" 
  				text-align="center"> 
  				<fo:block> <xsl:value-of select="col19"/> </fo:block> 
  			</fo:table-cell> <!--21-->
  			<fo:table-cell border="solid 0.3mm" 
  				text-align="center"> 
  				<fo:block> <xsl:value-of select="col20"/> </fo:block> 
  			</fo:table-cell> <!--22-->
  			
  			
		</fo:table-row>
		
	</xsl:template>

 
</xsl:stylesheet>      
