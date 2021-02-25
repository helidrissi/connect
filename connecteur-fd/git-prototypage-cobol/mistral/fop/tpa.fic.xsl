<?xml version="1.0" encoding="ISO-8859-1" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
   <xsl:output method="text" encoding="iso-8859-1" />
<xsl:template match="/mistral"><xsl:value-of select="enteteliste/zontitcod"/>;<xsl:value-of select="enteteliste/zontittyp"/>;<xsl:value-of select="enteteliste/zontitlib"/>;<xsl:value-of select="enteteliste/zontitabr"/>;<xsl:value-of select="enteteliste/zontitlir"/>;<xsl:if test="/mistral/mxpalm/valeur = 1"><xsl:value-of select="enteteliste/zontitacd"/>;<xsl:value-of select="enteteliste/zontitimm"/>;</xsl:if>;
<xsl:apply-templates select="TAB" />
</xsl:template>       
<xsl:template match="TAB">
<xsl:apply-templates select="tpa" />
</xsl:template>
<xsl:template match="tpa"><xsl:value-of select="cod"/>;<xsl:value-of select="typ"/>;<xsl:value-of select="lib"/>;<xsl:value-of select="abr"/>;<xsl:value-of select="lir"/>;<xsl:if test="/mistral/mxpalm/valeur = 1"><xsl:value-of select="acd"/>;<xsl:value-of select="imm"/>;</xsl:if>;
</xsl:template>
</xsl:stylesheet>      
