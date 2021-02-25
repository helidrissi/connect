<?xml version="1.0" encoding="ISO-8859-1" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
   <xsl:output method="text" encoding="iso-8859-1" />
<xsl:template match="/mistral"><xsl:value-of select="enteteliste/zontitcod"/>   
   <xsl:apply-templates select="etiquettes" />
</xsl:template>
<xsl:template match="etiquettes">
   <xsl:apply-templates select="etiquette" />  
</xsl:template>
 
<xsl:template match="etiquette">
<xsl:apply-templates select="ligne" /> 
</xsl:template>

<xsl:template match="ligne">
<xsl:variable name="pos" select="position()" />
<xsl:if test="$pos='1'">
<xsl:value-of select="../ligne[$pos ]/colonne/contenu"/>;<xsl:value-of select="../ligne[$pos ]/colonne/contenu2"/>;<xsl:value-of select="../ligne[$pos ]/colonne/contenu3"/>;<xsl:value-of select="../ligne[$pos + 1 ]/colonne/contenu"/>;<xsl:value-of select="../ligne[$pos + 1 ]/colonne/contenu2"/>;<xsl:value-of select="../ligne[$pos + 1 ]/colonne/contenu3"/>;<xsl:value-of select="../ligne[$pos + 2 ]/colonne/contenu"/>;<xsl:value-of select="../ligne[$pos + 2 ]/colonne/contenu2"/>;<xsl:value-of select="../ligne[$pos + 2 ]/colonne/contenu3"/>;<xsl:value-of select="../ligne[$pos + 3 ]/colonne/contenu"/>;<xsl:value-of select="../ligne[$pos + 3 ]/colonne/contenu2"/>;<xsl:value-of select="../ligne[$pos + 3 ]/colonne/contenu3"/>;<xsl:value-of select="../ligne[$pos + 4 ]/colonne/contenu"/>;<xsl:value-of select="../ligne[$pos + 4 ]/colonne/contenu2"/>;<xsl:value-of select="../ligne[$pos + 4 ]/colonne/contenu3"/>;<xsl:value-of select="../ligne[$pos + 5 ]/colonne/contenu"/>;<xsl:value-of select="../ligne[$pos + 5 ]/colonne/contenu2"/>;<xsl:value-of select="../ligne[$pos + 5 ]/colonne/contenu3"/>; 
</xsl:if>  
</xsl:template>
</xsl:stylesheet>      
