<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
                xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.0">

<xsl:template match="entete">

   <xsl:variable name="C_logo"><xsl:value-of select="logo"/></xsl:variable>
   <xsl:variable name="C_toplogo"><xsl:value-of select="toplogo"/>mm</xsl:variable>
   <xsl:variable name="C_poslogo"><xsl:value-of select="poslogo"/>mm</xsl:variable> 
   <xsl:if test="longlogo=0">
     <xsl:variable name="C_longlogo">85mm</xsl:variable> 
   </xsl:if>
   <xsl:if test="longlogo!=0">
     <xsl:variable name="C_longlogo"><xsl:value-of select="longlogo"/>mm</xsl:variable> 
   </xsl:if>    
   <xsl:if test="larglogo=0">
     <xsl:variable name="C_larglogo">20mm</xsl:variable> 
   </xsl:if>
   <xsl:if test="larglogo!=0">
     <xsl:variable name="C_larglogo"><xsl:value-of select="larglogo"/>mm</xsl:variable> 
   </xsl:if>  
   
   

   <xsl:apply-templates select="entete-l"/>
  
   <xsl:if test="$C_logo!=''">
      <!--<fo:block-container background-color="white" 
                          left="{$C_poslogo}" 
                          top="{$C_toplogo}" 
                          width="200mm" 
                          height="100mm" 
                          position="absolute" 
                          text-align="left">
                               <fo:block>
                               <xsl:element name="fo:external-graphic">
                                      <xsl:attribute name="src">url('<xsl:value-of select="logo" />')</xsl:attribute> 
                                      <xsl:attribute name="width">100%</xsl:attribute>
                                      <xsl:attribute name="scaling">uniform</xsl:attribute> 
                               </xsl:element>
                               </fo:block>
      </fo:block-container>-->
      <fo:block-container background-color="white" 
                          left="{$C_poslogo}" 
                          top="{$C_toplogo}" 
                          width="{$C_longlogo}" 
                          height="{$C_larglogo}" 
                          position="absolute" 
                          text-align="center">
                          <fo:external-graphic src="{$C_logo}" width="{$C_longlogo}" height="{$C_larglogo}" />
      </fo:block-container>
   </xsl:if>
   
</xsl:template>

<!-- UNE LIGNE -->

<xsl:template match="entete-l">

     <xsl:variable name="C_size"><xsl:value-of select="size"/>pt</xsl:variable> 
     <xsl:variable name="C_weight"><xsl:value-of select="weight"/></xsl:variable>
     <xsl:variable name="C_style"><xsl:value-of select="style"/></xsl:variable>
     <xsl:variable name="C_decoration"><xsl:value-of select="decoration"/></xsl:variable>
     <xsl:variable name="C_left"><xsl:value-of select="left"/>mm</xsl:variable>
     <xsl:variable name="C_color">#<xsl:value-of select="color"/></xsl:variable>
      
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
</xsl:stylesheet>
