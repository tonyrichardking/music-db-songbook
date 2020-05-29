<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<!--    <xsl:output method="html" indent="no" encoding="ISO-8859-1"/>-->
    <xsl:import href="dev_build_pdf.xsl"/>
    <xsl:template match="/">
        <xsl:apply-templates select="songbook" mode="generate-pdf">
            <xsl:with-param name="pdf-content" select="'setlist'"/>
        </xsl:apply-templates>
    </xsl:template>
</xsl:stylesheet>
