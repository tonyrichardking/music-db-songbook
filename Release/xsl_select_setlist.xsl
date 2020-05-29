<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <xsl:template name="songbookTmpl">
        <xsl:apply-templates select="//song[title='Lets Stick Together']"/>
        <xsl:apply-templates select="//song[title='In The Midnight Hour']"/>
        <xsl:apply-templates select="//song[title='Soul Man']"/>
        <xsl:apply-templates select="//song[title='Wrap It Up']"/>
        <xsl:apply-templates select="//song[title='Hold On Im Coming']"/>
        <xsl:apply-templates select="//song[title='You Got Me']"/>
        <xsl:apply-templates select="//song[title='Someone Like You']"/>
        <xsl:apply-templates select="//song[title='Sway']"/>
        <xsl:apply-templates select="//song[title='Smooth']"/>
        <xsl:apply-templates select="//song[title='I Say a Little Prayer']"/>
        <xsl:apply-templates select="//song[title='Miserlou']"/>
        <xsl:apply-templates select="//song[title='Fields Of Gold']"/>
        <xsl:apply-templates select="//song[title='Hoochie Coochie Man']"/>
        <xsl:apply-templates select="//song[title='Unchain My Heart']"/>
        <xsl:apply-templates select="//song[title='What A Wonderful World']"/>
        <xsl:apply-templates select="//song[title='Mama Told Me Not To Come']"/>
        <xsl:apply-templates select="//song[title='Respect']"/>
        <xsl:apply-templates select="//song[title='Night Train']"/>
        <xsl:apply-templates select="//song[title='Dancing In The Street']"/>
        <xsl:apply-templates select="//song[title='I Cant Help Myself']"/>
        <xsl:apply-templates select="//song[title='Twisting The Night Away']"/>
        <xsl:apply-templates select="//song[title='Mess Around']"/>
        <xsl:apply-templates select="//song[title='Shake Your Tailfeather']"/>
        <xsl:apply-templates select="//song[title='Whatd I Say']"/>
        <xsl:apply-templates select="//song[title='Johnny B. Goode']"/>
        <xsl:apply-templates select="//song[title='Try A Little Tenderness']"/>
    </xsl:template>
    <!-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% -->
    <xsl:template name="songbookIndexTmpl">
        <fo:block font-style="italic" font-size="10pt" text-align-last="justify"/>
    </xsl:template>
    <!-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% -->
</xsl:stylesheet>
