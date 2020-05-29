<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
<!--    <xsl:output method="html" indent="no" encoding="ISO-8859-1"/>-->
    <xsl:include href="dev_build_html.xsl"/>
    <xsl:template match="/">
        <xsl:apply-templates select="catalogue" mode="build-html"/>
    </xsl:template>
</xsl:stylesheet>
