<?xml version="1.0" encoding="ISO-8859-1" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
   <xsl:output method="text" encoding="iso-8859-1" />
<xsl:template match="/mistral"><xsl:value-of select="enteteliste/zontitcod"/>;<xsl:value-of select="enteteliste/zontitlib"/>;<xsl:value-of select="enteteliste/zontitciso"/>;<xsl:value-of select="enteteliste/zontitcee"/>;
<xsl:apply-templates select="pay" />
</xsl:template>
<xsl:template match="pay"><xsl:value-of select="cod"/>;<xsl:value-of select="lib"/>;<xsl:value-of select="ciso"/>;<xsl:value-of select="cee"/>;
</xsl:template>
</xsl:stylesheet>      
