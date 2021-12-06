<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <xsl:template name="songbook_new">
        <xsl:apply-templates select="//song[title='Baby Its You']"/>
        <xsl:apply-templates select="//song[title='Valentine Moon']"/>
        <xsl:apply-templates select="//song[title='Erev Shel Shoshanim']"/>
    </xsl:template>
    <!-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% -->
    <xsl:template name="songbookIndex_new">
        <fo:block font-style="italic" font-size="10pt" text-align-last="justify"/>
    </xsl:template>
    <!-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% -->
</xsl:stylesheet>
