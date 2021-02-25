<?xml version="1.0" encoding="ISO-8859-1" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
   <xsl:output method="text" encoding="iso-8859-1" />
<xsl:template match="/mistral"><xsl:value-of select="enteteliste/zontitcod"/>;<xsl:value-of select="enteteliste/zontitlib"/>;<xsl:value-of select="enteteliste/zontitabr"/>;<xsl:value-of select="enteteliste/zontitfct"/>;<xsl:value-of select="enteteliste/zontitnom"/>;<xsl:value-of select="enteteliste/zontitsir"/>;<xsl:value-of select="enteteliste/zontitnaf"/>;
<xsl:apply-templates select="tso" />
</xsl:template>
<xsl:template match="tso"><xsl:value-of select="cod"/>;<xsl:value-of select="lib"/>;<xsl:value-of select="abr"/>;<xsl:value-of select="fct"/>;<xsl:value-of select="nom"/>;<xsl:value-of select="sir"/>;<xsl:value-of select="naf"/>;
</xsl:template>
</xsl:stylesheet>      
