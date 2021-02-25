<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
                xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.0">

  <xsl:variable name="colorbleu">
     <xsl:choose>
       <xsl:when test="/mistral/colorbleu!=''"><xsl:value-of select="/mistral/colorbleu"/></xsl:when>
       <xsl:otherwise>#C0D9FE</xsl:otherwise>    
     </xsl:choose>  
  </xsl:variable>
  <xsl:variable name="colorjaune">
     <xsl:choose>
       <xsl:when test="/mistral/colorjaune!=''"><xsl:value-of select="/mistral/colorjaune"/></xsl:when>
       <xsl:otherwise>#FFFFB0</xsl:otherwise>    
     </xsl:choose>  
  </xsl:variable>
  <xsl:variable name="colorgris">
     <xsl:choose>
       <xsl:when test="/mistral/colorgris!=''"><xsl:value-of select="/mistral/colorgris"/></xsl:when>
       <xsl:otherwise>#DFDFDF</xsl:otherwise>    
     </xsl:choose>  
  </xsl:variable>
   
<xsl:template match="entete">

   <xsl:variable name="C_logo"><xsl:value-of select="logo"/></xsl:variable>
   <xsl:variable name="C_toplogo"><xsl:value-of select="toplogo"/>mm</xsl:variable>
   <xsl:variable name="C_poslogo"><xsl:value-of select="poslogo"/>mm</xsl:variable> 
   <xsl:variable name="C_lonlogo">
     <xsl:if test="lonlogo=0">85mm</xsl:if>
     <xsl:if test="lonlogo!=0"><xsl:value-of select="lonlogo"/>mm</xsl:if>
   </xsl:variable>   
   <xsl:variable name="C_larlogo">
     <xsl:if test="larlogo=0">20mm</xsl:if>
     <xsl:if test="larlogo!=0"><xsl:value-of select="larlogo"/>mm</xsl:if>
   </xsl:variable>  
   
 
   <xsl:apply-templates select="entete-l"/>
  
   <xsl:if test="$C_logo!=''">
      <fo:block-container background-color="white" 
                          left="{$C_poslogo}" 
                          top="{$C_toplogo}" 
                          width="{$C_lonlogo}" 
                          height="{$C_larlogo}" 
                          position="absolute" 
                          text-align="center">
                          <fo:external-graphic src="{$C_logo}" width="{$C_lonlogo}" height="{$C_larlogo}" />
      </fo:block-container>
   </xsl:if>
   
</xsl:template>

<!-- UNE LIGNE -->

<xsl:template match="entete-l">

     <!--<xsl:variable name="C_size"><xsl:value-of select="size"/>pt</xsl:variable>-->
     <xsl:variable name="C_size">
          <xsl:if test="size=00">8pt</xsl:if>
          <xsl:if test="size!=0"><xsl:value-of select="size"/>pt</xsl:if>
     </xsl:variable> 
     <xsl:variable name="C_weight"><xsl:value-of select="weight"/></xsl:variable>
     <xsl:variable name="C_style"><xsl:value-of select="style"/></xsl:variable>
     <xsl:variable name="C_decoration"><xsl:value-of select="decoration"/></xsl:variable>
     <xsl:variable name="C_left"><xsl:value-of select="left"/>mm</xsl:variable>
     <xsl:variable name="C_color">
         <xsl:if test="color=''">black</xsl:if>
         <xsl:if test="color!=''">#<xsl:value-of select="color"/></xsl:if>
     </xsl:variable>  
    
<fo:block-container background-color="white" 
                    left="0mm" 
                    width="195mm" 
                    height="20mm">              
      <fo:block font-size="{$C_size}" 
                font-style="{$C_style}" 
                font-weight="{$C_weight}"
                margin-left="{$C_left}"
                color="{$C_color}"
                text-decoration="{$C_decoration}">
                <xsl:value-of select="lib"/>
      </fo:block>         
 </fo:block-container> 

</xsl:template> 

<!--****************************************************************************-->
<!--****************************************************************************-->
<!--****************************************************************************-->

<xsl:template match="entfax">

   <xsl:variable name="C_logo"><xsl:value-of select="logo"/></xsl:variable>
   <xsl:variable name="C_toplogo"><xsl:value-of select="toplogo"/>mm</xsl:variable>
   <xsl:variable name="C_poslogo"><xsl:value-of select="poslogo"/>mm</xsl:variable> 
   <xsl:variable name="C_lonlogo">
     <xsl:if test="lonlogo=0">85mm</xsl:if>
     <xsl:if test="lonlogo!=0"><xsl:value-of select="lonlogo"/>mm</xsl:if>
   </xsl:variable>   
   <xsl:variable name="C_larlogo">
     <xsl:if test="larlogo=0">20mm</xsl:if>
     <xsl:if test="larlogo!=0"><xsl:value-of select="larlogo"/>mm</xsl:if>
   </xsl:variable>  
   

   <xsl:apply-templates select="entfax-l"/>
  
   <xsl:if test="$C_logo!=''">
      <fo:block-container background-color="white" 
                          left="{$C_poslogo}" 
                          top="{$C_toplogo}" 
                          width="{$C_lonlogo}" 
                          height="{$C_larlogo}" 
                          position="absolute" 
                          text-align="center">
                          <fo:external-graphic src="{$C_logo}" width="{$C_lonlogo}" height="{$C_larlogo}" />
      </fo:block-container>
   </xsl:if>
   
</xsl:template>

<!-- UNE LIGNE -->

<xsl:template match="entfax-l">

     <!--<xsl:variable name="C_size"><xsl:value-of select="size"/>pt</xsl:variable>-->
     <xsl:variable name="C_size">
          <xsl:if test="size=00">8pt</xsl:if>
          <xsl:if test="size!=0"><xsl:value-of select="size"/>pt</xsl:if>
     </xsl:variable> 
     <xsl:variable name="C_weight"><xsl:value-of select="weight"/></xsl:variable>
     <xsl:variable name="C_style"><xsl:value-of select="style"/></xsl:variable>
     <xsl:variable name="C_decoration"><xsl:value-of select="decoration"/></xsl:variable>
     <xsl:variable name="C_left"><xsl:value-of select="left"/>mm</xsl:variable>
     <xsl:variable name="C_color">
         <xsl:if test="color=''">black</xsl:if>
         <xsl:if test="color!=''">#<xsl:value-of select="color"/></xsl:if>
     </xsl:variable>  
    
<fo:block-container background-color="white" 
                    left="0mm" 
                    width="195mm" 
                    height="20mm">              
      <fo:block font-size="{$C_size}" 
                font-style="{$C_style}" 
                font-weight="{$C_weight}"
                margin-left="{$C_left}"
                color="{$C_color}"
                text-decoration="{$C_decoration}">
                <xsl:value-of select="lib"/>
      </fo:block>         
 </fo:block-container> 

</xsl:template> 

<!--****************************************************************************-->
<!--****************************************************************************-->
<!--****************************************************************************-->

<xsl:template match="condpied">

   <xsl:variable name="CP_logo"><xsl:value-of select="logo"/></xsl:variable>
   <xsl:variable name="CP_toplogo"><xsl:value-of select="toplogo"/>mm</xsl:variable>
   <xsl:variable name="CP_poslogo"><xsl:value-of select="poslogo"/>mm</xsl:variable> 
   <xsl:variable name="CP_lonlogo">
     <xsl:if test="lonlogo=0">85mm</xsl:if>
     <xsl:if test="lonlogo!=0"><xsl:value-of select="lonlogo"/>mm</xsl:if>
   </xsl:variable>   
   <xsl:variable name="CP_larlogo">
     <xsl:if test="larlogo=0">20mm</xsl:if>
     <xsl:if test="larlogo!=0"><xsl:value-of select="larlogo"/>mm</xsl:if>
   </xsl:variable>  
   

   <xsl:apply-templates select="condpied-l"/>
  
   <xsl:if test="$CP_logo!=''">
      <fo:block-container background-color="white" 
                          left="{$CP_poslogo}" 
                          top="{$CP_toplogo}" 
                          width="{$CP_lonlogo}" 
                          height="{$CP_larlogo}" 
                          position="absolute" 
                          text-align="center">
                          <fo:external-graphic src="{$CP_logo}" width="{$CP_lonlogo}" height="{$CP_larlogo}" />
      </fo:block-container>
   </xsl:if>
   
</xsl:template>

<!-- UNE LIGNE -->

<xsl:template match="condpied-l">

     <!--<xsl:variable name="CP_size"><xsl:value-of select="size"/>pt</xsl:variable>--> 
     <xsl:variable name="CP_size">
          <xsl:if test="size=00">8pt</xsl:if>
          <xsl:if test="size!=0"><xsl:value-of select="size"/>pt</xsl:if>
     </xsl:variable> 
     <xsl:variable name="CP_weight"><xsl:value-of select="weight"/></xsl:variable>
     <xsl:variable name="CP_style"><xsl:value-of select="style"/></xsl:variable>
     <xsl:variable name="CP_decoration"><xsl:value-of select="decoration"/></xsl:variable>
     <xsl:variable name="CP_left"><xsl:value-of select="left"/>mm</xsl:variable>
     <xsl:variable name="CP_color">
         <xsl:if test="color=''">black</xsl:if>
         <xsl:if test="color!=''">#<xsl:value-of select="color"/></xsl:if>
     </xsl:variable>
      
<fo:block-container background-color="white" 
                    left="0mm" 
                    width="195mm" 
                    height="20mm">              
      <fo:block font-size="{$CP_size}" 
                font-style="{$CP_style}" 
                font-weight="{$CP_weight}"
                margin-left="{$CP_left}"
                color="{$CP_color}"
                text-decoration="{$CP_decoration}">
                <xsl:value-of select="lib"/>
      </fo:block>         
 </fo:block-container> 

</xsl:template> 

<!--   PIED DU FAX OU DU MAIL (AJOUT LE 28/05/2009) -->
<xsl:template match="piedfax">

   <xsl:variable name="CP_logo"><xsl:value-of select="logo"/></xsl:variable>
   <xsl:variable name="CP_toplogo"><xsl:value-of select="toplogo"/>mm</xsl:variable>
   <xsl:variable name="CP_poslogo"><xsl:value-of select="poslogo"/>mm</xsl:variable> 
   <xsl:variable name="CP_lonlogo">
     <xsl:if test="lonlogo=0">85mm</xsl:if>
     <xsl:if test="lonlogo!=0"><xsl:value-of select="lonlogo"/>mm</xsl:if>
   </xsl:variable>   
   <xsl:variable name="CP_larlogo">
     <xsl:if test="larlogo=0">20mm</xsl:if>
     <xsl:if test="larlogo!=0"><xsl:value-of select="larlogo"/>mm</xsl:if>
   </xsl:variable>  
   

   <xsl:apply-templates select="piedfax-l"/>
  
   <xsl:if test="$CP_logo!=''">
      <fo:block-container background-color="white" 
                          left="{$CP_poslogo}" 
                          top="{$CP_toplogo}" 
                          width="{$CP_lonlogo}" 
                          height="{$CP_larlogo}" 
                          position="absolute" 
                          text-align="center">
                          <fo:external-graphic src="{$CP_logo}" width="{$CP_lonlogo}" height="{$CP_larlogo}" />
      </fo:block-container>
   </xsl:if>
   
</xsl:template>

<!-- UNE LIGNE -->

<xsl:template match="piedfax-l">

     <!--<xsl:variable name="CP_size"><xsl:value-of select="size"/>pt</xsl:variable>--> 
     <xsl:variable name="CP_size">
          <xsl:if test="size=00">8pt</xsl:if>
          <xsl:if test="size!=0"><xsl:value-of select="size"/>pt</xsl:if>
     </xsl:variable> 
     <xsl:variable name="CP_weight"><xsl:value-of select="weight"/></xsl:variable>
     <xsl:variable name="CP_style"><xsl:value-of select="style"/></xsl:variable>
     <xsl:variable name="CP_decoration"><xsl:value-of select="decoration"/></xsl:variable>
     <xsl:variable name="CP_left"><xsl:value-of select="left"/>mm</xsl:variable>
     <xsl:variable name="CP_color">
         <xsl:if test="color=''">black</xsl:if>
         <xsl:if test="color!=''">#<xsl:value-of select="color"/></xsl:if>
     </xsl:variable>
      
<fo:block-container background-color="white" 
                    left="0mm" 
                    width="195mm" 
                    height="20mm">              
      <fo:block font-size="{$CP_size}" 
                font-style="{$CP_style}" 
                font-weight="{$CP_weight}"
                margin-left="{$CP_left}"
                color="{$CP_color}"
                text-decoration="{$CP_decoration}">
                <xsl:value-of select="lib"/>
      </fo:block>         
 </fo:block-container> 

</xsl:template> 
</xsl:stylesheet>
