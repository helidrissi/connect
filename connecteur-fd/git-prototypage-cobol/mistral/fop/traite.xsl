<!-- FORMAT TRAITE BAS DE PAGE A4 -->

<!-- UTILISE PAR CX/RFB ET MX/REL ET MX/LCR-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.0">

<!-- CADRE TRAITE PIED DE PAGE -->
	<!--xsl:template match="cadre_pied"-->
	<xsl:template name="cadre_pied">
		<fo:block-container left="-08mm" top="192mm" width="210mm" height="100mm" 
			position="absolute" 
			border-top="solid 0.1mm" 
			border-color="gray" 
			font-size="6.5pt">	<!-- trait séparateur et bloc contenant la traite--> 
			<xsl:choose>
			<xsl:when test="donnees_pied/pie-borlcr=2"><!-- BOR -->
				<fo:block-container left="010mm" width="40mm" top="04mm" height="15mm" 
					position="absolute" 
					text-align="center">
					<fo:block>Contre le présent</fo:block>
					<fo:block>BILLET A ORDRE</fo:block>
					<fo:block>stipulé SANS FRAIS, nous</fo:block>
					<fo:block>paierons la somme indiquée</fo:block>
					<fo:block>ci-dessous à</fo:block>
				</fo:block-container>
				<!-- Trait à droite de "Contre cette LETTRE...-->
				<fo:block-container left="072mm" width="01mm" top="04mm" height="15mm" 
					position="absolute" 
					border-left="solid 0.1mm">
				</fo:block-container> 
			</xsl:when>	
			<xsl:otherwise><!-- LCR -->
				<fo:block-container left="070mm" width="40mm" top="04mm" height="15mm" 
					position="absolute" 
					text-align="center">
					<fo:block>Contre cette LETTRE DE CHANGE</fo:block>
					<fo:block>stipulée SANS FRAIS,</fo:block>
					<fo:block>veuillez payer la somme</fo:block>
					<fo:block>indiquée ci-dessous</fo:block>
					<fo:block>à l'ordre de :</fo:block>
				</fo:block-container>
				<!-- Trait à droite de "Contre cette LETTRE...-->
				<fo:block-container left="110mm" width="01mm" top="04mm" height="15mm" 
					position="absolute" 
					border-left="solid 0.1mm">
				</fo:block-container> 
			</xsl:otherwise>	
			</xsl:choose>
			
			<fo:block-container left="004mm" width="40mm" top="24mm" height="10mm" 
				position="absolute" 
				text-align="left"  >
				<fo:block>A</fo:block>
			</fo:block-container>
			<fo:block-container left="044mm" width="40mm" top="24mm" height="10mm" 
				position="absolute" 
				text-align="left"  >
				<fo:block>Le</fo:block>
			</fo:block-container>
			<!-- Flèche "Le"-->
			<fo:block-container left="049mm" width="07mm" top="25mm" height="02mm" 
				position="absolute" 
				border-top="solid 0.1mm" 
				border-right="solid 0.1mm" 
				border-color="gray">
			</fo:block-container>
			<fo:block-container left="054mm" width="05mm" top="26mm" height="04mm" 
				position="absolute">
				<fo:block text-align="center"> v </fo:block>
			</fo:block-container>  
			
			<!-- Cadre "LCR"-->
			<fo:block-container left="192mm" width="18mm" top="04mm" height="15mm" 
				position="absolute" 
				border-left="solid 0.1mm" 
				border-bottom="solid 0.1mm">
			</fo:block-container>  
			<fo:block-container left="192mm" width="15mm" top="04mm" height="15mm" 
				position="absolute" 
				text-align="center">
				<fo:block>mention</fo:block>
				<xsl:if test="donnees_pied/pie-borlcr=1 or 0"><!-- LCR -->
					<fo:block>L.C.R.</fo:block>
				</xsl:if>	
				<xsl:if test="donnees_pied/pie-borlcr=2"><!-- BOR -->
					<fo:block>B.O.R.</fo:block>
				</xsl:if>	
				<fo:block>s'il y a lieu</fo:block>
			</fo:block-container>

			<fo:block-container left="176mm" width="25mm" top="22mm" height="5mm" 
				position="absolute" 
				border-left="solid 0.1mm" 
				border-bottom="solid 0.1mm" 
				border-right="solid 0.1mm">
			</fo:block-container>	
			<fo:block-container left="176mm" width="25mm" top="20mm" height="5mm" 
				position="absolute" 
				text-align="center">
				<fo:block>CODE MONNAIE ISO</fo:block>
			</fo:block-container>
			
<!-- ligne 1 -->			
			<fo:block-container left="004mm" width="35mm" top="31mm" height="10mm" 
				position="absolute" 
				border-left="solid 0.1mm" 
				border-bottom="solid 0.1mm" 
				border-right="solid 0.1mm">
			</fo:block-container>
			<fo:block-container left="004mm" width="35mm" top="29mm" height="10mm" 
				position="absolute" 
				text-align="center">
				<fo:block>MONTANT POUR CONTROLE</fo:block>
			</fo:block-container>

			<fo:block-container left="042mm" width="26mm" top="31mm" height="10mm" 
				position="absolute" 
				border-left="solid 0.1mm" 
				border-bottom="solid 0.1mm" 
				border-right="solid 0.1mm">
			</fo:block-container>
			<fo:block-container left="042mm" width="26mm" top="29mm" height="10mm" 
				position="absolute" 
				text-align="center">
				<fo:block>DATE DE CREATION</fo:block>
			</fo:block-container>

			<fo:block-container left="072mm" width="26mm" top="31mm" height="10mm" 
				position="absolute" 
				border-left="solid 0.1mm" 
				border-bottom="solid 0.1mm" 
				border-right="solid 0.1mm">
			</fo:block-container>
			<fo:block-container left="072mm" width="26mm" top="29mm" height="10mm" 
				position="absolute" 
				text-align="center">
				<fo:block>ECHEANCE</fo:block>
			</fo:block-container>

			<!-- Haut cadre "LCR seulement" -->
			<fo:block-container left="102mm" width="68mm" top="31mm" height="10mm" 
				position="absolute" 
				border-top="solid 0.1mm">
			</fo:block-container>	
			<!-- Cadre REF TIRE 1-->
			<fo:block-container left="102mm" width="29mm" top="31mm" height="10mm" 
				position="absolute" 
				border-left="solid 0.1mm" 
				border-bottom="solid 0.1mm" 
				border-right="solid 0.1mm">
			</fo:block-container>	
			<!-- Petit cadre REF TIRE 2 -->
			<fo:block-container left="138mm" width="06mm" top="31mm" height="10mm" 
				position="absolute" 
				border-left="solid 0.1mm" 
				border-bottom="solid 0.1mm" 
				border-right="solid 0.1mm"> 
			</fo:block-container>
			<!-- Grand cadre REF TIRE 3 -->
			<fo:block-container left="154mm" width="16mm" top="31mm" height="10mm" 
				position="absolute" 
				border-left="solid 0.1mm" 
				border-bottom="solid 0.1mm" 
				border-right="solid 0.1mm">	
			</fo:block-container>
			<fo:block-container left="125mm" width="20mm" top="29mm" height="10mm" 
				position="absolute" 
				text-align="center">
				<xsl:if test="donnees_pied/pie-borlcr=1 or 0"><!-- LCR -->
					<fo:block background-color="white">L.C.R. seulement</fo:block>
				</xsl:if>	
				<xsl:if test="donnees_pied/pie-borlcr=2"><!-- BOR -->
					<fo:block background-color="white">B.O.R. seulement</fo:block>
				</xsl:if>	
			</fo:block-container>
			<fo:block-container left="103mm" width="28mm" top="32mm" height="10mm" 
				position="absolute" 
				text-align="left"  >
				<xsl:if test="donnees_pied/pie-borlcr=1 or 0"><!-- LCR -->
					<fo:block>REF.TIRE</fo:block>
				</xsl:if>	
				<xsl:if test="donnees_pied/pie-borlcr=2"><!-- BOR -->
					<fo:block>REF.SOUSCRIPTEUR</fo:block>
				</xsl:if>	
			</fo:block-container>

			<fo:block-container left="173mm" width="33mm" top="31mm" height="10mm" 
				position="absolute" 
				border-left="solid 0.1mm" 
				border-bottom="solid 0.1mm" 
				border-right="solid 0.1mm">
			</fo:block-container>
			<fo:block-container left="173mm" width="33mm" top="29mm" height="10mm" 
				position="absolute" 
				text-align="center"><fo:block>MONTANT</fo:block>
			</fo:block-container>

<!-- ligne 2 --> <!-- cadres vides pour références -->
			
			<!-- 1er cadre REF -->
			<fo:block-container left="007mm" width="06mm" top="45mm" height="05mm" 
				position="absolute" 
				border-top="solid 0.1mm" 
				border-bottom="solid 0.1mm" 
				border-left="solid 0.1mm">
			</fo:block-container>
			<fo:block-container left="076mm" width="06mm" top="45mm" height="05mm"
			 	position="absolute" 
			 	border-top="solid 0.1mm" 
			 	border-bottom="solid 0.1mm" 
				border-right="solid 0.1mm">
			</fo:block-container> 

			<!-- 2ème cadre -->
			<fo:block-container left="086mm" width="06mm" top="45mm" height="05mm"
				position="absolute" 
				border-top="solid 0.1mm" 
				border-bottom="solid 0.1mm" 
				border-left="solid 0.1mm">
			</fo:block-container>
			<fo:block-container left="134mm" width="06mm" top="45mm" height="05mm"
				position="absolute" 
				border-top="solid 0.1mm" 
				border-bottom="solid 0.1mm" 
				border-right="solid 0.1mm"> 
			</fo:block-container>	
			
			<!-- 3ème cadre -->
			<fo:block-container left="144mm" width="06mm" top="45mm" height="05mm"
				position="absolute" 
				border-top="solid 0.1mm" 
				border-bottom="solid 0.1mm" 
				border-left="solid 0.1mm">
			</fo:block-container>
			<fo:block-container left="164mm" width="06mm" top="45mm" height="05mm"
				position="absolute" 
				border-top="solid 0.1mm" 
				border-bottom="solid 0.1mm" 
				border-right="solid 0.1mm">
			</fo:block-container>	

<!-- ligne 3 -->
			<!-- Haut et bords cadre "RIB du tiré"-->
			<fo:block-container left="004mm" width="14mm" top="53mm" height="10mm"
				position="absolute" 
				border-left="solid 0.1mm" 
				border-top="solid 0.1mm" 
				border-right="solid 0.1mm">
			</fo:block-container>	
			<!-- 1ère séparation RIB -->
			<fo:block-container left="018mm" width="14mm" top="53mm" height="10mm"
				position="absolute" 
				border-left="solid 0.1mm" 
				border-top="solid 0.1mm" 
				border-right="solid 0.1mm">
			</fo:block-container>	
			<!-- 2ème séparation RIB -->
			<fo:block-container left="032mm" width="32mm" top="53mm" height="10mm"
				position="absolute" 
				border-left="solid 0.1mm" 
				border-top="solid 0.1mm" 
				border-right="solid 0.1mm">
			</fo:block-container>	
			<!-- 3ème séparation RIB -->
			<fo:block-container left="064mm" width="10mm" top="53mm" height="10mm"
				position="absolute" 
				border-left="solid 0.1mm" 
				border-top="solid 0.1mm" 
				border-right="solid 0.1mm">
			</fo:block-container>	
			<fo:block-container left="025mm" width="25mm" top="51mm" height="10mm" 
				position="absolute" 
				text-align="center">
				<xsl:if test="donnees_pied/pie-borlcr=1 or 0"><!-- LCR -->
					<fo:block background-color="white">R.I.B. du TIRE</fo:block>
				</xsl:if>	
				<xsl:if test="donnees_pied/pie-borlcr=2"><!-- BOR -->
					<fo:block background-color="white">R.I.B. du Souscripteur</fo:block>
				</xsl:if>	
			</fo:block-container>
			<fo:block-container left="004mm" width="14mm" top="64mm" height="10mm" 
				position="absolute" 
				text-align="center">
				<fo:block>Code établ.</fo:block>
			</fo:block-container>
			<fo:block-container left="018mm" width="14mm" top="64mm" height="10mm" 
				position="absolute" 
				text-align="center">
				<fo:block>Code guichet</fo:block>
			</fo:block-container>
			<fo:block-container left="032mm" width="32mm" top="64mm" height="10mm" 
				position="absolute" 
				text-align="center">
				<fo:block>N° de compte</fo:block>
			</fo:block-container>
			<fo:block-container left="064mm" width="10mm" top="64mm" height="10mm" 
				position="absolute" 
				text-align="center">
				<fo:block>Clé R.I.B.</fo:block>
			</fo:block-container>
			<!--fo:block-container left="000mm" width="14mm" top="68mm" height="10mm" 
				position="absolute" 
				text-align="center">
				<fo:block>Valeur en :</fo:block>
			</fo:block-container-->

			<fo:block-container left="043mm" width="30mm" top="69mm" height="10mm" 
				position="absolute" 
				text-align="right">
				<fo:block>NOM &#160; </fo:block>
				<fo:block>et ADRESSE ></fo:block>
				<xsl:if test="donnees_pied/pie-borlcr=1 or 0"><!-- LCR -->
					<fo:block>du TIRE &#160; </fo:block>
				</xsl:if>	
				<xsl:if test="donnees_pied/pie-borlcr=2"><!-- BOR -->
					<fo:block>du SOUSCRIPTEUR &#160; </fo:block>
				</xsl:if>	
			</fo:block-container>
			<!-- trait séparateur "Nom et adresse du tiré" et Adresse -->
			<fo:block-container left="077mm" width="1mm" top="60mm" height="20mm" 
				position="absolute" 
				text-align="right" 
				border-left="solid 0.1mm"/>
			<!-- coin haut gauche adresse -->	 
			<fo:block-container left="077mm" width="08mm" top="53mm" height="03mm" 
				position="absolute" 
				border-top="solid 0.1mm"  
				border-left="solid 0.1mm">
			</fo:block-container>	
			<!-- coin haut droit adresse -->
			<fo:block-container left="134mm" width="08mm" top="53mm" height="03mm" 
				position="absolute" 
				border-top="solid 0.1mm"  
				border-right="solid 0.1mm">
			</fo:block-container>	

			<fo:block-container left="144mm" width="62mm" top="53mm" height="13mm" 
				position="absolute" 
				border-left="solid 0.1mm" 
				border-top="solid 0.1mm" 
				border-right="solid 0.1mm">
			</fo:block-container>
			<fo:block-container left="159mm" width="20mm" top="51mm" height="10mm" 
				position="absolute" 
				text-align="center">
				<fo:block background-color="white">DOMICILIATION</fo:block>
			</fo:block-container>

			<fo:block-container left="157mm" width="30mm" top="67mm" height="10mm" 
				position="absolute" 
				text-align="left"  >
				<fo:block>Droit de timbre et Signature</fo:block>
			</fo:block-container>
			<fo:block-container left="009mm" width="30mm" top="68mm" height="10mm" 
				position="absolute" 
				text-align="right" >
				<xsl:if test="donnees_pied/pie-borlcr=1 or 0"><!-- LCR -->
					<fo:block>ACCEPTATION OU AVAL v</fo:block>
				</xsl:if>	
				<xsl:if test="donnees_pied/pie-borlcr=2"><!-- BOR -->
					<fo:block>BON POUR AVAL</fo:block>
				</xsl:if>	
			</fo:block-container>


			<xsl:if test="donnees_pied/pie-borlcr=1 or 0"><!-- LCR -->
				<fo:block-container left="005mm" width="30mm" top="82mm" height="5mm" 
					position="absolute" 
					text-align="center">
					<fo:block>N° SIREN DU TIRE</fo:block>
				</fo:block-container>
				<fo:block-container left="031mm" width="30mm" top="81mm" height="5mm" 
					position="absolute" 
					border-left="solid 0.1mm" 
					border-bottom="solid 0.1mm" 
					border-right="solid 0.1mm">
				</fo:block-container>
			</xsl:if>	

			<fo:block-container left="078mm" width="50mm" top="87mm" height="10mm" 
				position="absolute" 
				text-align="right" >
				<fo:block>ne rien inscrire au-dessous de cette ligne</fo:block>
			</fo:block-container>
			<!-- trait de bas de traite -->
			<fo:block-container left="00mm"  width="210mm" top="91mm" height="01mm" 
				position="absolute" 
				border-top="solid 0.1mm"> 
			</fo:block-container> 
		</fo:block-container>
	</xsl:template>


<!-- DONNEES TRAITE PIED DE PAGE -->
	<!--xsl:template match="donnees_pied"-->
	<xsl:template name="donnees_pied">
		<!--fo:block-container left="-08mm" width="210mm" top="117mm" height="01mm" -->
		<fo:block-container left="-08mm" width="210mm" top="{$topdonneespied}mm" height="01mm" 
			position="absolute" 
			font-size="10pt"> 
			
			<xsl:choose>
			<xsl:when test="donnees_pied/pie-borlcr=2"><!-- BOR -->
				<fo:block-container left="085mm" width="65mm" top="04mm" height="40mm" 
					position="absolute" 
					text-align="left">
					<fo:block>
						<xsl:value-of select="donnees_pied/pie-rai-cfou"/>
					</fo:block>
					<fo:block>
						<xsl:value-of select="donnees_pied/pie-nom-cfou"/>
					</fo:block>
					<fo:block>
						<xsl:value-of select="donnees_pied/pie-rue-cfou"/>
					</fo:block>
					<fo:block>
						<xsl:value-of select="donnees_pied/pie-lie-cfou"/>
					</fo:block>
					<fo:block>
						<xsl:value-of select="donnees_pied/pie-vil-cfou"/>
					</fo:block>
					<fo:block>
						<xsl:value-of select="donnees_pied/pie-pay-cfou"/>
					</fo:block>
				</fo:block-container>
			</xsl:when>
			<!-- adresse tireur LCR -->
			<xsl:otherwise><!-- LCR -->
				<fo:block-container left="10mm" width="65mm" top="04mm" height="40mm" 
					position="absolute" 
					text-align="left">
					<fo:block>
						<xsl:value-of select="donnees_pied/pie-rai-cfou"/>
					</fo:block>
					<fo:block>
						<xsl:value-of select="donnees_pied/pie-nom-cfou"/>
					</fo:block>
					<fo:block>
						<xsl:value-of select="donnees_pied/pie-rue-cfou"/>
					</fo:block>
					<fo:block>
						<xsl:value-of select="donnees_pied/pie-lie-cfou"/>
					</fo:block>
					<fo:block>
						<xsl:value-of select="donnees_pied/pie-vil-cfou"/>
					</fo:block>
					<fo:block>
						<xsl:value-of select="donnees_pied/pie-pay-cfou"/>
					</fo:block>
				</fo:block-container>
			</xsl:otherwise>
			</xsl:choose>
			
			<!-- Ville tireur -->
			<fo:block-container left="008mm" width="40mm" top="24mm" height="10mm" 
				position="absolute" 
				text-align="left"  >
				<fo:block 
					font-size="6.5pt">
					<xsl:value-of select="donnees_pied/pie-vil"/>
				</fo:block>
			</fo:block-container>
			<!-- Code monnaie ISO -->
			<fo:block-container left="176mm" width="25mm" top="23mm" height="10mm" 
				position="absolute" 
				text-align="center">
				<fo:block>
					<xsl:value-of select="donnees_pied/dev"/>
				</fo:block>
			</fo:block-container>
			<!-- LCR -->		
			<fo:block-container left="192mm" width="15mm" top="14mm" height="10mm" 
				position="absolute" 
				text-align="center">
				<fo:block>
					<xsl:value-of select="donnees_pied/pie-typ"/>
				</fo:block>
			</fo:block-container>
			<!-- Montant pour controle -->
			<fo:block-container left="004mm" width="35mm" top="31mm" height="10mm" 
				position="absolute" 
				text-align="center">
				<fo:block 
					padding-top="05mm">
					<xsl:value-of select="donnees_pied/pie-mon"/>
				</fo:block>
			</fo:block-container>
			<!-- Date création -->
			<fo:block-container left="042mm" width="26mm" top="31mm" height="10mm" 
				position="absolute" 
				text-align="center">
				<fo:block 
					padding-top="05mm">
					<xsl:value-of select="donnees_pied/pie-dat"/>
				</fo:block>
			</fo:block-container>
			<!-- Echéance -->
			<fo:block-container left="072mm" width="26mm" top="31mm" height="10mm" 
				position="absolute" 
				text-align="center">
				<fo:block 
					padding-top="05mm">
					<xsl:value-of select="donnees_pied/pie-ech"/>
				</fo:block>
			</fo:block-container>
			<!-- Code fournisseur dans REF TIRE 1 -->
			<fo:block-container left="102mm" width="29mm" top="31mm" height="10mm" 
				position="absolute" 
				text-align="center">
				<fo:block 
					padding-top="05mm">
					<xsl:value-of select="donnees_pied/pie-fou"/>
				</fo:block>
			</fo:block-container>
			<!-- Type BOR/LCR dans REF TIRE 2 -->
			<fo:block-container left="138mm" width="06mm" top="31mm" height="10mm" 
				position="absolute" 
				text-align="center">
				<fo:block 
					padding-top="05mm">
					<xsl:value-of select="donnees_pied/pie-borlcr"/>
				</fo:block>
			</fo:block-container>
			<!-- Pièce dans REF TIRE 3 -->
			<fo:block-container left="154mm" width="16mm" top="31mm" height="10mm" 
				position="absolute" 
				text-align="center">
				<fo:block 
					padding-top="05mm">
					<xsl:value-of select="donnees_pied/pie-pier"/>
				</fo:block>
			</fo:block-container>
			<!-- Montant -->
			<fo:block-container left="173mm" width="33mm" top="31mm" height="10mm" 
				position="absolute" 
				text-align="center">
				<fo:block 
					padding-top="05mm">
					<xsl:value-of select="donnees_pied/pie-mon"/>
				</fo:block>
			</fo:block-container>
			<!-- Pièce 1 dans 1er cadre vide -->
			<fo:block-container left="14mm" width="20mm" top="41mm" height="10mm" 
				position="absolute" 
				text-align="center">
				<fo:block 
					padding-top="05mm">
					<xsl:value-of select="donnees_pied/pie-fou2"/>
				</fo:block>
			</fo:block-container>
			<!-- Pièce 2 dans 2ème cadre vide -->
			<fo:block-container left="108mm" width="20mm" top="41mm" height="10mm" 
				position="absolute" 
				text-align="center">
				<fo:block 
					padding-top="05mm">
					<xsl:value-of select="donnees_pied/pie-pier2"/>
				</fo:block>
			</fo:block-container>
			<!-- RIB -->
			<fo:block-container left="004mm" width="14mm" top="53mm" height="10mm" 
				position="absolute" 
				text-align="center">
				<fo:block 
					padding-top="05mm" 
					font-size="12pt">
					<xsl:value-of select="donnees_pied/pie-bqe-cbqe"/>
				</fo:block>
			</fo:block-container>
			<fo:block-container left="018mm" width="14mm" top="53mm" height="10mm" 
				position="absolute" 
				text-align="center">
				<fo:block 
					padding-top="05mm" 
					font-size="12pt">
					<xsl:value-of select="donnees_pied/pie-gui-cbqe"/>
				</fo:block>
			</fo:block-container>
			
			<fo:block-container left="032mm" width="32mm" top="53mm" height="10mm" 
				position="absolute" 
				text-align="center">
				<fo:block 
					padding-top="05mm" 
					font-size="12pt">
					<xsl:value-of select="donnees_pied/pie-cbq-cbqe"/>
				</fo:block>
			</fo:block-container>
			<fo:block-container left="064mm" width="10mm" top="53mm" height="10mm" 
				position="absolute" 
				text-align="center">
				<fo:block 
					padding-top="05mm" 
					font-size="12pt">
					<xsl:value-of select="donnees_pied/pie-rib-cbqe"/>
				</fo:block>
			</fo:block-container>	
			<!-- Adresse tiré LCR -->
			<fo:block-container left="077mm" width="65mm" top="53mm" height="30mm" 
				position="absolute" 
				text-align="left">
				<xsl:choose>
				<xsl:when test="donnees_pied/pie-rai-csoc != ''">
					<fo:block 
						margin-left="01mm" 
						padding-top="02mm">
						<xsl:value-of select="donnees_pied/pie-rai-csoc"/>
					</fo:block>
					<fo:block 
						margin-left="01mm">
						<xsl:value-of select="donnees_pied/pie-nom-csoc"/>
					</fo:block>
				</xsl:when>	
				<xsl:otherwise>
					<fo:block 
						margin-left="01mm" 
						padding-top="02mm">
						<xsl:value-of select="donnees_pied/pie-nom-csoc"/>
					</fo:block>
				</xsl:otherwise>
				</xsl:choose>	
				<fo:block 
					margin-left="01mm">
					<xsl:value-of select="donnees_pied/pie-rue-csoc"/>
				</fo:block>
				<fo:block 
					margin-left="01mm">
					<xsl:value-of select="donnees_pied/pie-lie-csoc"/>
				</fo:block>
				<fo:block 
					margin-left="01mm">
					<xsl:value-of select="donnees_pied/pie-vil-csoc"/>
				</fo:block>
			</fo:block-container>
			<!-- Domiciliation -->
			<fo:block-container left="144mm" width="70mm" top="53mm" height="30mm" 
				position="absolute" 
				text-align="left">
				<fo:block 
					margin-left="01mm" 
					padding-top="02mm">
					<xsl:value-of select="donnees_pied/pie-nom-cbqe"/>
				</fo:block>
				<fo:block 
					margin-left="01mm">
					<xsl:value-of select="donnees_pied/pie-adr-cbqe"/>
				</fo:block>
				<fo:block 
					margin-left="01mm">
					<xsl:value-of select="donnees_pied/pie-cdp-cbqe"/>&#160;<xsl:value-of select="donnees_pied/pie-vil-cbqe"/>
				</fo:block>
			</fo:block-container>
			<!-- code SIREN -->
			<xsl:if test="donnees_pied/pie-borlcr=1 or 0"><!-- LCR -->
				<fo:block-container left="031mm" width="30mm" top="81mm" height="5mm" 
					position="absolute" >
					<fo:block 
						text-align="center">
						<xsl:value-of select="donnees_pied/pie-sir-cfou"/>
					</fo:block>
				</fo:block-container>
			</xsl:if>	
		</fo:block-container>
	</xsl:template>

</xsl:stylesheet>