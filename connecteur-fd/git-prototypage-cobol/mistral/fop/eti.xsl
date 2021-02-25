<?xml version="1.0" encoding="ISO-8859-1"?>	<!--Norme à respecter-->
<xsl:stylesheet 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:fo="http://www.w3.org/1999/XSL/Format"  
	xmlns:barcode="http://barcode4j.krysalis.org/ns" 
	version="1.0">	<!--Norme à respecter--> 
	
	<xsl:variable name="pageheight"> 
		<xsl:choose>
		<xsl:when test="/mistral/paysage=1">21</xsl:when>
		<xsl:otherwise>29.7</xsl:otherwise>
		</xsl:choose>		
	</xsl:variable>
	<xsl:variable name="pagewidth"> 
		<xsl:choose>
		<xsl:when test="/mistral/paysage=1">29.7</xsl:when>
		<xsl:otherwise>21</xsl:otherwise>
		</xsl:choose>		
	</xsl:variable>

<xsl:template match="/mistral">
<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">		<!--Norme à respecter-->

<fo:layout-master-set>
	<!--fo:simple-page-master master-name="master-page" page-height="29.7cm" page-width="21cm"-->

	<fo:simple-page-master master-name="master-page" page-height="{$pageheight}cm" page-width="{$pagewidth}cm">

    <xsl:variable name="mha" select="margehaut"/>      <!-- Marge de la planche en haut -->
    <xsl:variable name="mga" select="margegauche"/>    <!-- Marge de la planche à gauche -->    	
    <xsl:variable name="mba" select="margebasse"/>     <!-- Marge de la planche en bas -->
		<fo:region-body margin-top="{$mha}mm" margin-bottom="{$mba}mm" margin-left="{$mga}mm" margin-right="{$mga}mm"/>
		<fo:region-start  extent="0mm"/>
		<fo:region-end    extent="0mm"/>		
		<fo:region-before extent="0mm"/>
		<fo:region-after  extent="0mm"/>
	</fo:simple-page-master>
		
</fo:layout-master-set>

<fo:page-sequence master-reference="master-page">  
	<fo:flow flow-name="xsl-region-body">		        
		  <xsl:apply-templates select="etiquettes"/>
		<fo:block id="Fin"/>
	</fo:flow>
</fo:page-sequence>
</fo:root>
</xsl:template>

  <xsl:template match="etiquettes">
     <xsl:apply-templates select="etiquette"/>
  </xsl:template>  
  
  <xsl:template match="etiquette">
     <xsl:variable name="position" select="position()"/>  <!-- N° de l'étiquette -->
          
     <xsl:variable name="lar" select="../largeur"/>       <!-- Largeur de l'étiquette -->
     <xsl:variable name="hau" select="../hauteur"/>       <!-- Hauteur de l'étiquette -->
     <xsl:variable name="meha" select="../metihaute"/>    <!-- Marge haut bas de l'étiquette -->
     <xsl:variable name="mega" select="../metigauche"/>   <!-- Marge gauche droite de l'étiquette -->
     
     <!--xsl:variable name="dhbv" select="297 - (../../margehaut + ../../margebasse)"/-->      <!-- Distance haut-bas valable -->
     <!--xsl:variable name="dgdv" select="210 - (../../margegauche * 2)"/-->                   <!-- Distance gauche-droite valable -->

     <xsl:variable name="dhbv" select="$pageheight * 10 - (../../margehaut + ../../margebasse)"/>      <!-- Distance haut-bas valable -->
     <xsl:variable name="dgdv" select="$pagewidth  * 10 - (../../margegauche * 2)"/>                   <!-- Distance gauche-droite valable -->

     <xsl:variable name="maxincol" select="floor($dgdv div $lar)"/>   <!-- Nombre d'étiquette maximum de gauche à droite -->
     <xsl:variable name="maxinlig" select="floor($dhbv div $hau)"/>   <!-- Nombre d'étiquette maximum de haut en bas     -->     

     <xsl:variable name="numcol" select="$position mod $maxincol"/>                               <!-- Numero de colonne -->
     <xsl:variable name="numlig" select="floor(($position - 1) div $maxincol) mod $maxinlig"/>	  <!-- Numero de ligne   -->
     
     <xsl:variable name="poscol" select="(($position - 1) mod $maxincol) * $lar"/>  <!-- Position dans la page / colonne -->
     <xsl:variable name="poslig" select="$numlig * $hau"/>	                        <!-- Position dans la page / ligne   -->
     
     <xsl:if test="($position != 1) and ($numlig = 0) and ($numcol = 1)">
       <fo:block break-before="page" color="white"> . </fo:block>
     </xsl:if>	        		                        		 		     		 		   		     		 		     		                    		 
                    		 		     		 		   		     		 		     		       
     <xsl:if test="../encadre = 0">
       <fo:block-container border="solid 0mm" width="{$lar}mm" height="{$hau}mm" top="{$poslig}mm" left="{$poscol}mm" margin-left="0mm" margin-top="0mm" margin-bottom="0mm" margin-right="0mm" position="absolute">
          <fo:block line-height="{$meha}mm" color="white"> . </fo:block>
				  <xsl:apply-templates select="ligne"/>				  
       </fo:block-container>    		  
     </xsl:if>	        		       
     <xsl:if test="../encadre = 1">
       <fo:block-container border-color="black" border="solid 0.01mm" width="{$lar}mm" height="{$hau}mm" top="{$poslig}mm" left="{$poscol}mm" margin-top="0mm" margin-bottom="0mm" margin-left="0mm" margin-right="0mm" position="absolute">
          <fo:block line-height="{$meha}mm" color="white"> . </fo:block>
				  <xsl:apply-templates select="ligne"/>				  
       </fo:block-container>    		              
     </xsl:if>	        		       
     
  </xsl:template>  
  
  
  <xsl:template match="ligne">
     <xsl:variable name="lar" select="../../largeur"/>
     <xsl:variable name="hau" select="../../hauteur"/>     
		 <fo:table table-layout="fixed" width="{$lar}mm" position="absolute">    
        <xsl:for-each select="colonne">        
          <xsl:variable name="occ" select="occupation"/>       
          <xsl:variable name="occup" select="floor(( $lar * $occ ) div 100)"/>       
          <fo:table-column column-width="{$occup}mm"/>
        </xsl:for-each>
	      <fo:table-body>						
		     <fo:table-row>                           
           <xsl:apply-templates select="colonne"/>        
		     </fo:table-row>
		    </fo:table-body>      
		 </fo:table>		               
  </xsl:template>


  <xsl:template match="colonne">    
    <xsl:variable name="numcol" select="position()"/>  <!-- N° de l'étiquette -->          
    <xsl:variable name="mega" select="../../../metigauche"/>   <!-- Marge gauche droite de l'étiquette -->
  
    <xsl:variable name="gra" select="gras"/>
    <xsl:variable name="sou" select="souligne"/>
    <xsl:variable name="ita" select="italique"/>
    <xsl:variable name="tai" select="taille"/>    
    <xsl:variable name="cad" select="cadrage"/>   		   
    <xsl:variable name="pol" select="../../../police"/>   		   
    <fo:table-cell>  

     <xsl:choose>
     <xsl:when test="code-barre != ''">  

        <xsl:variable name="codebarre">
        	<xsl:value-of select="contenu"/>
       	</xsl:variable>	
 	  	<fo:block 
 	  		margin-left="{$mega}mm">                	     
          	<fo:instream-foreign-object>
     			<xsl:choose>
     			<xsl:when test="code-barre = 'ean-13'">
                	<barcode:barcode 
                    	xmlns:barcode="http://barcode4j.krysalis.org/ns" 
                        msg="{contenu}">
                        <barcode:ean-13>
                   			<barcode:height>12mm</barcode:height>
                        </barcode:ean-13>
                	</barcode:barcode>
     			</xsl:when>
     			<xsl:when test="code-barre = 'code128'">
                	<barcode:barcode 
                    	xmlns:barcode="http://barcode4j.krysalis.org/ns" 
                        msg="{contenu}">
                        <barcode:code128>
                   			<barcode:height>12mm</barcode:height>
                        </barcode:code128>
                	</barcode:barcode>
     			</xsl:when>
     			</xsl:choose>
          	</fo:instream-foreign-object>
     	</fo:block>	

   	 </xsl:when>         
   	 <xsl:otherwise>
     
     	<xsl:if test="contenu != ''">
        	<xsl:if test="$numcol != 1">    
      	  	<fo:block margin-left="2mm" font-weight="{$gra}" text-decoration="{$sou}" font-style="{$ita}" font-size="{$tai}pt" text-align="{$cad}">                	     
        	  <xsl:value-of select="contenu"/>
     	 	  </fo:block>      	
      	  	<fo:block margin-left="2mm" font-weight="{$gra}" text-decoration="{$sou}" font-style="{$ita}" font-size="{$tai}pt" text-align="{$cad}">                	     
        	  <xsl:value-of select="contenu2"/>
     	 	  </fo:block>      	
      	  	<fo:block margin-left="2mm" font-weight="{$gra}" text-decoration="{$sou}" font-style="{$ita}" font-size="{$tai}pt" text-align="{$cad}">                	     
        	  <xsl:value-of select="contenu3"/>
     	 	  </fo:block>      	     	 	       	 	  
     	 	</xsl:if>    
     	 	<xsl:if test="$numcol = 1">    
     	 	  <fo:block margin-left="{$mega}mm" font-weight="{$gra}" text-decoration="{$sou}" font-style="{$ita}" font-size="{$tai}pt" text-align="{$cad}">                	     
        	  <xsl:value-of select="contenu"/>
     	 	  </fo:block>      	
     	 	  <fo:block margin-left="{$mega}mm" font-weight="{$gra}" text-decoration="{$sou}" font-style="{$ita}" font-size="{$tai}pt" text-align="{$cad}">                	     
        	  <xsl:value-of select="contenu2"/>
     	 	  </fo:block>      	
     	 	  <fo:block margin-left="{$mega}mm" font-weight="{$gra}" text-decoration="{$sou}" font-style="{$ita}" font-size="{$tai}pt" text-align="{$cad}">                	     
        	  <xsl:value-of select="contenu3"/>
     	 	  </fo:block>      	     	 	       	 	  
     	 	</xsl:if>    
     	</xsl:if>    
     	<xsl:if test="contenu = ''">
      		<fo:block font-size="{$tai}" color="white"> . </fo:block>      	
     	</xsl:if>         
   	 
   	 </xsl:otherwise>         
   	 </xsl:choose>         
    </fo:table-cell>   
  </xsl:template>
  
</xsl:stylesheet> 
  