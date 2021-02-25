<?xml version="1.0" encoding="ISO-8859-1" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
   <xsl:output method="text" encoding="iso-8859-1" />
   <xsl:template match="/mistral">
<xsl:value-of select="/mistral/enteteliste/zontitdat"/>;<xsl:value-of select="/mistral/enteteliste/zontitref"/>;<xsl:value-of select="/mistral/enteteliste/zontitrrr"/>;<xsl:value-of select="/mistral/enteteliste/zontitcli"/>;<xsl:value-of select="/mistral/enteteliste/zontitqte2"/>;<xsl:value-of select="/mistral/enteteliste/zontitpunet"/>;<xsl:value-of select="/mistral/enteteliste/zontitnbon"/>;<xsl:value-of select="/mistral/enteteliste/zontitrem2"/>;<xsl:value-of select="/mistral/enteteliste/zontitmarge"/>;<xsl:value-of select="/mistral/enteteliste/zontitcial2"/>;<xsl:value-of select="/mistral/enteteliste/zontitnum"/>;<xsl:value-of select="/mistral/enteteliste/zontitdes"/>;;<xsl:value-of select="/mistral/enteteliste/zontitvil"/>;<xsl:value-of select="/mistral/enteteliste/zontitage2"/>;<xsl:value-of select="/mistral/enteteliste/zontitmtht"/>;<xsl:value-of select="/mistral/enteteliste/zontitnfac2"/>;<xsl:value-of select="/mistral/enteteliste/zontitact"/>;<xsl:value-of select="/mistral/enteteliste/zontitmat"/>;<xsl:value-of select="/mistral/enteteliste/zontitper"/>;<xsl:value-of select="/mistral/enteteliste/zontitadr"/>;<xsl:value-of select="/mistral/enteteliste/zontitpos"/>;<xsl:value-of select="/mistral/enteteliste/zontitags"/>;<xsl:value-of select="/mistral/enteteliste/zontittel"/>;<xsl:value-of select="/mistral/enteteliste/zontitmail"/>;<xsl:value-of select="/mistral/enteteliste/zontitcrf"/>;<xsl:value-of select="/mistral/enteteliste/zontitar2"/>;<xsl:value-of select="/mistral/enteteliste/zontitrff"/>;<xsl:value-of select="/mistral/enteteliste/zontittit"/>;<xsl:value-of select="/mistral/enteteliste/zontittel2"/>;<xsl:value-of select="/mistral/enteteliste/zontitvol"/>;<xsl:value-of select="/mistral/enteteliste/zontitrfc"/>;<xsl:value-of select="/mistral/enteteliste/zontitrfi"/>;
      <xsl:apply-templates select="fam" />
      <xsl:apply-templates select="total" />
   </xsl:template>
<!--050218 xsl:value-of select="/mistral/enteteliste/zontitdfac2"/>;<xsl:value-of select="/mistral/enteteliste/zontitref"/>;<xsl:value-of select="/mistral/enteteliste/zontitrrr"/>;<xsl:value-of select="/mistral/enteteliste/zontitcli"/>;<xsl:value-of select="/mistral/enteteliste/zontitqte2"/>;<xsl:value-of select="/mistral/enteteliste/zontitpunet"/>;<xsl:value-of select="/mistral/enteteliste/zontitnbon"/>;<xsl:value-of select="/mistral/enteteliste/zontitrem2"/>;<xsl:value-of select="/mistral/enteteliste/zontitmarge"/>;<xsl:value-of select="/mistral/enteteliste/zontitcial2"/>;<xsl:value-of select="/mistral/enteteliste/zontitnum"/>;<xsl:value-of select="/mistral/enteteliste/zontitdes"/>;;<xsl:value-of select="/mistral/enteteliste/zontitvil"/>;<xsl:value-of select="/mistral/enteteliste/zontitage2"/>;<xsl:value-of select="/mistral/enteteliste/zontitmtht"/>;<xsl:value-of select="/mistral/enteteliste/zontitnfac2"/>;<xsl:value-of select="/mistral/enteteliste/zontitact"/>;<xsl:value-of select="/mistral/enteteliste/zontitmat"/>;<xsl:value-of select="/mistral/enteteliste/zontitper"/>;<xsl:value-of select="/mistral/enteteliste/zontitadr"/>;<xsl:value-of select="/mistral/enteteliste/zontitpos"/>;<xsl:value-of select="/mistral/enteteliste/zontitags"/>;<xsl:value-of select="/mistral/enteteliste/zontittel"/>;<xsl:value-of select="/mistral/enteteliste/zontitmail"/>;<xsl:value-of select="/mistral/enteteliste/zontitcrf"/>;<xsl:value-of select="/mistral/enteteliste/zontitar2"/>;<xsl:value-of select="/mistral/enteteliste/zontitrff"/>;<xsl:value-of select="/mistral/enteteliste/zontittit"/>;<xsl:value-of select="/mistral/enteteliste/zontittel2"/>;<xsl:value-of select="/mistral/enteteliste/zontitvol"/>;<xsl:value-of select="/mistral/enteteliste/zontitrfc"/>;-->
   
   <xsl:template match="fam">
     <xsl:apply-templates select="art" />
     <xsl:if test="lib!=''">
       <xsl:value-of select="lib" />;;;;<xsl:value-of select="qte" />;;<xsl:value-of select="ht" />;;
     </xsl:if>
   </xsl:template>
   
   <xsl:template match="art">
     <xsl:value-of select="dat" />;<xsl:value-of select="art" />;<xsl:value-of select="crf" />;<xsl:value-of select="nom" />;<xsl:value-of select="qte" />;<xsl:value-of select="pri" />;<xsl:value-of select="bon" />;<xsl:value-of select="rem" />;<xsl:value-of select="mar" />;<xsl:value-of select="rep" />;<xsl:value-of select="cli" />;<xsl:value-of select="des" />;;<xsl:value-of select="vil" />;<xsl:value-of select="age" />;<xsl:value-of select="ht" />;<xsl:value-of select="fac" />;<xsl:value-of select="ori" />;<xsl:value-of select="mat" />;<xsl:value-of select="per" />;<xsl:value-of select="adr" />;<xsl:value-of select="pos" />;<xsl:value-of select="ags" />;<xsl:value-of select="tel" />;<xsl:value-of select="mail" />;<xsl:value-of select="crf2" />;<xsl:value-of select="ar2" />;<xsl:value-of select="rff" />;<xsl:value-of select="tit" />;<xsl:value-of select="tel2" />;<xsl:value-of select="vol" />;<xsl:value-of select="rfc" />;<xsl:value-of select="rfi" />;
   </xsl:template>   
   
   <xsl:template match="total">
     <xsl:value-of select="lib" />;;;;<xsl:value-of select="qte" />;<xsl:value-of select="ht" />;;;;;
   </xsl:template>      
   
</xsl:stylesheet>


