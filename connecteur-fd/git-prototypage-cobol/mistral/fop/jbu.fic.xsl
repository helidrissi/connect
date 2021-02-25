<?xml version="1.0" encoding="ISO-8859-1" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
   <xsl:output method="text" encoding="iso-8859-1" />
<xsl:template match="/mistral"><xsl:value-of select="enteteliste/zontitdat"/>;<xsl:value-of select="enteteliste/zontitdeb"/>;<xsl:value-of select="enteteliste/zontitfin"/>;<xsl:value-of select="enteteliste/zontitdur"/>;<xsl:value-of select="enteteliste/zontittra"/>;<xsl:value-of select="enteteliste/zontitlog"/>;<xsl:value-of select="enteteliste/zontitpro"/>;<xsl:value-of select="enteteliste/zontitsoc"/>;<xsl:value-of select="enteteliste/zontitpcs"/>;<xsl:value-of select="enteteliste/zontiterr"/>;<xsl:value-of select="enteteliste/zontitexe"/>;<xsl:value-of select="enteteliste/zontitpos"/>;<xsl:value-of select="enteteliste/zontitenv"/>;
<xsl:apply-templates select="lig" />
</xsl:template>
<xsl:template match="lig"><xsl:value-of select="dat"/>;<xsl:value-of select="deb"/>;<xsl:value-of select="fin"/>;<xsl:value-of select="dur"/>;<xsl:value-of select="tra"/>;<xsl:value-of select="log"/>;<xsl:value-of select="pro"/>;<xsl:value-of select="soc"/>;<xsl:value-of select="pcs"/>;<xsl:if test="err=1">E</xsl:if>;<xsl:value-of select="exe"/>;<xsl:value-of select="pos"/>;<xsl:value-of select="env"/>;
</xsl:template>
</xsl:stylesheet>      
