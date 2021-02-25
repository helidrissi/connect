<?xml version="1.0" encoding="ISO-8859-1"?>	<!--Norme à respecter-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.0">	<!--Norme à respecter-->  
<xsl:template match="/mistral">
<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">		<!--Norme à respecter-->
<fo:layout-master-set>
	<fo:simple-page-master master-name="master-page" page-height="21cm" page-width="29.7cm">
		<fo:region-body margin-top="15mm" margin-bottom="10mm" margin-left="3mm" margin-right="3mm"/>
		<fo:region-start  extent="0mm"/>
		<fo:region-end    extent="0mm"/>		
		<fo:region-before extent="0mm"/>
		<fo:region-after  extent="0mm"/>
	</fo:simple-page-master>
</fo:layout-master-set>
<fo:page-sequence master-reference="master-page">  
	<fo:flow flow-name="xsl-region-body">		        
      <fo:block border-color="black" text-align="center"> lol </fo:block>	
		  <!-- <xsl:apply-templates select="mats"/> -->
		  <!-- <xsl:apply-templates select="etiquettes"/> -->
		<fo:block id="Fin"/>
	</fo:flow>
</fo:page-sequence>
</fo:root>
</xsl:template>

<xsl:template match="etiquettes">
  <xsl:apply-templates select="etiquette"/>
</xsl:template>

<xsl:template match="etiquette">	 	 	
  <xsl:variable name="position" select="position()"/>
	<xsl:variable name="poscol" select="($position - 1) mod 5 * 58"/>
	<xsl:variable name="poslig" select="(($position - 1) div 5) mod 2"/>	
	
	
  <fo:block border-color="black" text-align="center"> <xsl:value-of select="$poslig"/> et <xsl:value-of select="$poscol"/> </fo:block>
		  	
    <!-- <xsl:if test="$poslig = 0 and $position != 1">
    <fo:block break-before="page" color="white"> . </fo:block>
    </xsl:if>	-->
				
  <xsl:if test="$poslig &lt; 1">
  <fo:block-container border-color="#1A038D" padding="3pt" border="solid 0.2mm" width="5cm" height="8cm" top="0mm" left="{$poscol}mm" position="absolute">       		
     <xsl:apply-templates select="ligne"/>
  </fo:block-container>	  	
  </xsl:if>	    	  

    <!--<xsl:if test="$poslig &gt; 1 or $poslig = 1">	  
	  <fo:block-container border-color="#1A038D" padding="3pt" border="solid 0.2mm" width="5cm" height="8cm" top="85mm" left="{$poscol}mm" position="absolute">
	     <xsl:apply-templates select="desc"/>
	     <xsl:apply-templates select="imgs"/>
       <fo:block border-color="#1A038D" border-top="solid 0.1mm" padding-top="4pt">
         <xsl:apply-templates select="docs"/>
       </fo:block> 	  	                        
       <fo:block>
          <xsl:apply-templates select="equipements"/>
       </fo:block> 	  	 
    </fo:block-container>
    </xsl:if>	    	       -->
   
	  <!-- <fo:block font-family="Helvetica, sans">
       Posit <xsl:value-of select="$position"/>
    </fo:block>		-->		
</xsl:template>

<xsl:template match="ligne">	 	 	
  <xsl:apply-templates select="colonne"/>
</xsl:template>

<xsl:template match="colonne">
  <xsl:value-of select="$contenu"/>
</xsl:template>




  
  <xsl:template match="cartouche">
     <fo:block font-size="8pt" font-weight="bold">  
     <xsl:for-each select="part">
       <xsl:variable name="pos" select="position()"/>	
	     <xsl:if test="$pos &lt; 5">
           <xsl:value-of select="text()"/> &#160;&#160;
	     </xsl:if>
     </xsl:for-each>
     </fo:block> 	  	                      
     <fo:block font-size="8pt">  
     <xsl:for-each select="part">
       <xsl:variable name="pos" select="position()"/>	       
	     <xsl:if test="$pos &gt; 4">
           <xsl:value-of select="text()"/> &#160;&#160;
	     </xsl:if>
     </xsl:for-each>
     </fo:block> 	  	                           
  </xsl:template>

  <xsl:template match="att">
    <fo:block font-size="12pt" font-style="italic" font-weight="bold" text-align="right"> <xsl:value-of select="titre"/> </fo:block>
  </xsl:template>







  <xsl:template match="mats">
    <xsl:apply-templates select="mat"/>
  </xsl:template>
  
  <xsl:template match="equipements">
    <xsl:apply-templates select="options"/>
  </xsl:template>
  
  <xsl:template match="options">
    <xsl:apply-templates select="option"/>    
  </xsl:template>  

	<xsl:template match="option">
    <xsl:apply-templates select="modalites"/>
	</xsl:template>
	
	<xsl:template match="modalites">
		  <xsl:for-each select="modalite">
		   <xsl:if test="num &lt; 9">
         <fo:block margin-left="1.5mm" margin-right="0.5mm" font-family="Helvetica, sans" text-align="left" font-size="7pt">
            <fo:inline> <xsl:value-of select="lib"/> </fo:inline>
            <xsl:if test="qte &gt; 1">
               <fo:inline>&#160; : &#160;</fo:inline> <fo:inline font-weight="bold"><xsl:value-of select="qte"/></fo:inline>
            </xsl:if>
         </fo:block>                  	        
       </xsl:if>
      </xsl:for-each>	   	      
	</xsl:template>
	
  <xsl:template match="docs">
      <xsl:for-each select="doc">
		   <xsl:if test="num &lt; 9">
         <fo:block margin-left="1.5mm" margin-right="0.5mm" font-family="Helvetica, sans" text-align="left" font-size="7pt">
            <fo:inline> <xsl:value-of select="lib"/> : </fo:inline> 
            <fo:inline font-weight="bold"> <xsl:value-of select="value"/> </fo:inline>
         </fo:block>                  	        
       </xsl:if>
      </xsl:for-each>	   	      
  </xsl:template>	
	

	<xsl:template match="mat">	 	 	
	  <xsl:variable name="position" select="position()"/>
		<xsl:variable name="poscol" select="($position - 1) mod 5 * 58"/>
		<xsl:variable name="poslig" select="(($position - 1) div 5) mod 2"/>	
	
    <xsl:if test="$poslig = 0 and $position != 1">
    <fo:block break-before="page" color="white"> . </fo:block>
    </xsl:if>	
				
    <xsl:if test="$poslig &lt; 1">
	  <fo:block-container border-color="#1A038D" padding="3pt" border="solid 0.2mm" width="5cm" height="8cm" top="0mm" left="{$poscol}mm" position="absolute">       		
	     <xsl:apply-templates select="desc"/>
	     <xsl:apply-templates select="imgs"/>
       <fo:block border-color="#1A038D" border-top="solid 0.1mm" padding-top="4pt">
         <xsl:apply-templates select="docs"/>
       </fo:block> 	  	                 
       <fo:block>
         <xsl:apply-templates select="equipements"/>
       </fo:block> 	  	          
    </fo:block-container>	  	
    </xsl:if>	    	  

    <xsl:if test="$poslig &gt; 1 or $poslig = 1">	  
	  <fo:block-container border-color="#1A038D" padding="3pt" border="solid 0.2mm" width="5cm" height="8cm" top="85mm" left="{$poscol}mm" position="absolute">
	     <xsl:apply-templates select="desc"/>
	     <xsl:apply-templates select="imgs"/>
       <fo:block border-color="#1A038D" border-top="solid 0.1mm" padding-top="4pt">
         <xsl:apply-templates select="docs"/>
       </fo:block> 	  	                        
       <fo:block>
          <xsl:apply-templates select="equipements"/>
       </fo:block> 	  	 
    </fo:block-container>
    </xsl:if>	    	       
   
	  <!-- <fo:block font-family="Helvetica, sans">
       Posit <xsl:value-of select="$position"/>
    </fo:block>		-->		
	</xsl:template>
	
	<xsl:template match="imgs">
       <fo:block padding="0.1cm" font-size="11pt" font-weight="bold" text-align="center">
          <xsl:element name="fo:external-graphic">
          <xsl:attribute name="src">url('<xsl:value-of select="img"/>')</xsl:attribute>
          <xsl:attribute name="height">2.5cm</xsl:attribute>
          <xsl:attribute name="scaling">uniform</xsl:attribute>
          </xsl:element>
       </fo:block>	
	</xsl:template>
		
	<xsl:template match="desc">		  		 	 		  		 		  		  
       <fo:block color="red" text-align="center" font-size="9pt" font-weight="bold" border-color="#1A038D" border-bottom="solid 0.1mm">
          <xsl:value-of select="mar"/> &#160; <xsl:value-of select="typ"/>
       </fo:block>            
       <xsl:if test="por!=''">   
       <fo:block space-before="1mm" padding-top="0.1mm" padding-bottom="0.1mm" text-align="center" font-size="9pt" font-weight="bold" margin-left="0.5mm" margin-right="0.5mm">
           Année Origine : <xsl:value-of select="por"/>
       </fo:block>    
       </xsl:if>                                                                    
       <xsl:if test="ser!=''">
        <fo:block text-align="center" padding-top="0.3mm" space-after="1pt" font-size="8pt" font-weight="bold" margin-left="0.5mm" margin-right="0.5mm">
           N° Série : <xsl:value-of select="ser"/>
        </fo:block>               
       </xsl:if>                                                             
       <xsl:if test="pvp!=''">
        <fo:block text-align="center" padding-top="0.3mm" font-size="8pt" font-weight="bold" margin-left="0.5mm" margin-right="0.5mm" color="red">
           Prix : <xsl:value-of select="pvp"/> E
        </fo:block>               
       </xsl:if>                                                                  
	</xsl:template>	
 
	<xsl:template match="titre">
		<fo:block-container left="0.0mm" top="30mm" width="195mm" height="7mm" position="absolute">
			<fo:block font-size="13pt" font-weight="bold" text-align="center"> <xsl:value-of select="text()"/> </fo:block>
		</fo:block-container>
	</xsl:template>
</xsl:stylesheet>      
