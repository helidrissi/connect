<?xml version="1.0" encoding="ISO-8859-1" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="text" encoding="iso-8859-1" />
   
<xsl:template match="/mistral">
<xsl:value-of select="/mistral/coltit01"/>;<xsl:value-of select="/mistral/coltit02"/>;<xsl:value-of select="/mistral/coltit03"/>;<xsl:value-of select="/mistral/coltit04"/>;<xsl:value-of select="/mistral/coltit05"/>;<xsl:value-of select="/mistral/coltit06"/>;<xsl:value-of select="/mistral/coltit07"/>;<xsl:value-of select="/mistral/coltit08"/>;<xsl:value-of select="/mistral/coltit09"/>;<xsl:value-of select="/mistral/coltit10"/>;<xsl:value-of select="/mistral/coltit11"/>;<xsl:value-of select="/mistral/coltit12"/>;<xsl:value-of select="/mistral/coltit13"/>;<xsl:value-of select="/mistral/coltit14"/>;<xsl:value-of select="/mistral/coltit15"/>;<xsl:value-of select="/mistral/coltit16"/>;<xsl:value-of select="/mistral/coltit17"/>;<xsl:value-of select="/mistral/coltit18"/>;<xsl:value-of select="/mistral/coltit19"/>;<xsl:value-of select="/mistral/coltit20"/>;<xsl:value-of select="/mistral/coltit21"/>;<xsl:value-of select="/mistral/coltit22"/>;<xsl:value-of select="/mistral/coltit23"/>;<xsl:value-of select="/mistral/coltit24"/>;<xsl:value-of select="/mistral/coltit25"/>;<xsl:value-of select="/mistral/coltit26"/>;<xsl:value-of select="/mistral/coltit27"/>;<xsl:value-of select="/mistral/coltit28"/>;<xsl:value-of select="/mistral/coltit29"/>;&#160;
<xsl:apply-templates select="fam"/>
<xsl:apply-templates select="total"/>
</xsl:template>
	 	   
<xsl:template match="fam">
<xsl:apply-templates select="art"/>
</xsl:template>
   
<xsl:template match="art">
<xsl:call-template name="colonnes"/>
</xsl:template>
   
<xsl:template match="total">
<xsl:call-template name="colonnes"/>
</xsl:template>
   
<xsl:template name="colonnes">
<xsl:value-of select="col01"/>;<xsl:value-of select="col02"/>;<xsl:value-of select="col03"/>;<xsl:value-of select="col04"/>;<xsl:value-of select="col05"/>;<xsl:value-of select="col06"/>;<xsl:value-of select="col07"/>;<xsl:value-of select="col08"/>;<xsl:value-of select="col09"/>;<xsl:value-of select="col10"/>;<xsl:value-of select="col11"/>;<xsl:value-of select="col12"/>;<xsl:value-of select="col13"/>;<xsl:value-of select="col14"/>;<xsl:value-of select="col15"/>;<xsl:value-of select="col16"/>;<xsl:value-of select="col17"/>;<xsl:value-of select="col18"/>;<xsl:value-of select="col19"/>;<xsl:value-of select="col20"/>;<xsl:value-of select="col21"/>;<xsl:value-of select="col22"/>;<xsl:value-of select="col23"/>;<xsl:value-of select="col24"/>;<xsl:value-of select="col25"/>;<xsl:value-of select="col26"/>;<xsl:value-of select="col27"/>;<xsl:value-of select="col28"/>;<xsl:value-of select="col29"/>;&#160;
</xsl:template>

</xsl:stylesheet>