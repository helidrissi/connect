<?xml version="1.0" encoding="ISO-8859-1" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="text" encoding="iso-8859-1" />
<xsl:template match="/mistral">
Nom;Type;Modèle;Pilote;L/P;NbB;Bac;NbR;Rec;R/V;Cou;Pdf;xGr;Spool;
<xsl:apply-templates select="lig"/>
</xsl:template>
<xsl:template match="lig">
<xsl:value-of select="nom"/>;<xsl:value-of select="typ"/>;<xsl:value-of select="mod"/>;<xsl:value-of select="pil"/>;<xsl:value-of select="lpm"/>;<xsl:value-of select="nbb"/>;<xsl:value-of select="bac"/>;<xsl:value-of select="nbr"/>;<xsl:value-of select="rec"/>;<xsl:value-of select="rcv"/>;<xsl:value-of select="cou"/>;<xsl:value-of select="pdf"/>;<xsl:value-of select="gri"/>;<xsl:value-of select="spo"/>;
</xsl:template>
</xsl:stylesheet>
