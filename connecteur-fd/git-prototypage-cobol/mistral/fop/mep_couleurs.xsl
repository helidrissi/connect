<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
                xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.0">

<xsl:variable name="coulcar">
     <xsl:choose>
       <xsl:when test="/mistral/p-coulcar!=''"><xsl:value-of select="/mistral/p-coulcar"/></xsl:when>
       <xsl:otherwise><xsl:value-of select="$colorbleu"/></xsl:otherwise> 
     </xsl:choose>     
  </xsl:variable>
  <xsl:variable name="couladr">
     <xsl:choose>
       <xsl:when test="/mistral/p-couladr!=''"><xsl:value-of select="/mistral/p-couladr"/></xsl:when>
       <xsl:otherwise>#FFFFCC</xsl:otherwise> 
     </xsl:choose>      
  </xsl:variable>
  <xsl:variable name="coulent">
     <xsl:choose>
       <xsl:when test="/mistral/p-coulent!=''"><xsl:value-of select="/mistral/p-coulent"/></xsl:when>
       <xsl:otherwise><xsl:value-of select="$colorbleu"/></xsl:otherwise>
     </xsl:choose>      
  </xsl:variable>
  <xsl:variable name="coulmsg">
     <xsl:choose>
       <xsl:when test="/mistral/p-coulmsg!=''"><xsl:value-of select="/mistral/p-coulmsg"/></xsl:when>
       <xsl:otherwise>#E8E8E8</xsl:otherwise>    
     </xsl:choose>  
  </xsl:variable>
  <xsl:variable name="coulpie">
     <xsl:choose>
       <xsl:when test="/mistral/p-coulpie!=''"><xsl:value-of select="/mistral/p-coulpie"/></xsl:when>
       <xsl:otherwise><xsl:value-of select="$colorbleu"/></xsl:otherwise>    
     </xsl:choose>  
  </xsl:variable>
  
 <xsl:variable name="difflong">
     <xsl:choose>
       <xsl:when test="/mistral/p-difflong!=''"><xsl:value-of select="/mistral/p-difflong"/></xsl:when>
       <xsl:otherwise>0</xsl:otherwise>    
     </xsl:choose>  
  </xsl:variable>
  <xsl:variable name="diffposcartouche">
     <xsl:choose>
       <xsl:when test="/mistral/p-diffposcartouche!=''"><xsl:value-of select="/mistral/p-diffposcartouche"/></xsl:when>
       <xsl:otherwise>0</xsl:otherwise>    
     </xsl:choose>  
  </xsl:variable>
   <xsl:variable name="diffposadresse">
     <xsl:choose>
       <xsl:when test="/mistral/p-diffposadresse!=''"><xsl:value-of select="/mistral/p-diffposadresse"/></xsl:when>
       <xsl:otherwise>0</xsl:otherwise>    
     </xsl:choose>  
  </xsl:variable>
   <xsl:variable name="diffposcorps">
     <xsl:choose>
       <xsl:when test="/mistral/p-diffposcorps!=''"><xsl:value-of select="/mistral/p-diffposcorps"/></xsl:when>
       <xsl:otherwise>0</xsl:otherwise>    
     </xsl:choose>  
  </xsl:variable>
   <xsl:variable name="diffposlieu">
     <xsl:choose>
       <xsl:when test="/mistral/p-diffposlieu!=''"><xsl:value-of select="/mistral/p-diffposlieu"/></xsl:when>
       <xsl:otherwise>0</xsl:otherwise>    
     </xsl:choose>  
  </xsl:variable>
  <xsl:variable name="difflonadresse">
     <xsl:choose>
       <xsl:when test="/mistral/p-difflonadresse!=''"><xsl:value-of select="/mistral/p-difflonadresse"/></xsl:when>
       <xsl:otherwise>0</xsl:otherwise>    
     </xsl:choose>  
  </xsl:variable>
  <xsl:variable name="diffpostit">
     <xsl:choose>
       <xsl:when test="/mistral/p-diffpostit!=''"><xsl:value-of select="/mistral/p-diffpostit"/></xsl:when>
       <xsl:otherwise>0</xsl:otherwise>    
     </xsl:choose>  
  </xsl:variable>
  
</xsl:stylesheet>
  
