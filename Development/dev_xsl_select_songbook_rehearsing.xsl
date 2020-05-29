<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <!-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% -->
    <xsl:template name="songbook_rehearsing">
        <xsl:for-each select="//song">
            <xsl:sort select="title"/>
            <xsl:if test="info[@status='rehearsing']">
                <xsl:apply-templates select="."/>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>
    <!-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% -->
    <xsl:template name="songbookIndex_rehearsing">
        <xsl:for-each select="//song">
            <xsl:sort select="title"/>
            <xsl:if test="info[@status='rehearsing']">
                <fo:block font-style="italic" font-size="10pt" text-align-last="justify">
                    <fo:inline font-weight="bold">
                        <xsl:value-of select="title"/>
                    </fo:inline>
                    <fo:inline>
                        <fo:leader leader-pattern="dots"/>
                        <fo:basic-link internal-destination="{title}" text-decoration="underline">
                            <fo:page-number-citation ref-id="{title}"/>
                        </fo:basic-link>
                    </fo:inline>
                </fo:block>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>
    <!-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% -->
</xsl:stylesheet>
