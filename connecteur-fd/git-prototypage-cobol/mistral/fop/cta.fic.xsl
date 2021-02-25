<?xml version="1.0" encoding="ISO-8859-1" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
   <xsl:output method="text" encoding="iso-8859-1" />
       
<xsl:template match="/mistral"><xsl:value-of select="enteteliste/zontitdeb"/>;<xsl:value-of select="enteteliste/zontitpid"/>;<xsl:value-of select="enteteliste/zontitide"/>;<xsl:value-of select="enteteliste/zontitnom"/>;<xsl:value-of select="enteteliste/zontitlib"/>;<xsl:value-of select="enteteliste/zontitlog"/>;
<xsl:apply-templates select="cta" />
</xsl:template>
<xsl:template match="cta"><xsl:value-of select="deb"/>;<xsl:value-of select="pid"/>;<xsl:value-of select="ide"/>;<xsl:value-of select="nom"/>;<xsl:value-of select="lib"/>;<xsl:value-of select="log"/>;
</xsl:template>
</xsl:stylesheet>      
