<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <!-- =============================================================================== -->
    <xsl:template match="/">
        <html xmlns="http://www.w3.org/1999/xhtml">
            <head>
                <title>All Deep Blue's Songs</title>
            </head>
            <body>
                <div style="text-align: center; text-decoration: underline; font-family: Arial;">
                    <span style="font-weight: bold;">Deep Blue Songs</span>
                </div>
                <br/>
                <xsl:apply-templates select="songbook"/>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="songbook">
        <div>
            <table border="1" align="center">
                <tr bgcolor="#FFCCFF">
                    <td>rehearsing</td>
                    <td>Not ready yet</td>
                </tr>
                <tr bgcolor="#33FF33">
                    <td>ready</td>
                    <td>We know how to play this </td>
                </tr>
                <tr bgcolor="#FFFF00">
                    <td>resting</td>
                    <td>Needs some brushing up</td>
                </tr>
                <tr bgcolor="#FF0000">
                    <td>retired</td>
                    <td>Ages since we played it, or never really got to grips with</td>
                </tr>
            </table>
        </div>
        <br/>
        <table border="1">
            <xsl:for-each select="song">
                <xsl:sort select="title"/>
                <tr>
                    <td>
                        <xsl:value-of select="title"/>
                    </td>
                    <xsl:apply-templates select="info"/>
                </tr>
            </xsl:for-each>
        </table>
    </xsl:template>
    <xsl:template match="info">
        <xsl:choose>
            <xsl:when test="@status='ready'">
                <td bgcolor="#33FF33">
                    <xsl:value-of select="@status"/>
                </td>
            </xsl:when>
            <xsl:when test="@status='resting'">
                <td bgcolor="#FFFF00">
                    <xsl:value-of select="@status"/>
                </td>
            </xsl:when>
            <xsl:when test="@status='retired'">
                <td bgcolor="#FF0000">
                    <xsl:value-of select="@status"/>
                </td>
            </xsl:when>
            <xsl:when test="@status='rehearsing'">
                <td bgcolor="#FFCCFF">
                    <xsl:value-of select="@status"/>
                </td>
            </xsl:when>
        </xsl:choose>
        <td>
            <xsl:value-of select="@artist"/>
        </td>
        <td>
            <xsl:value-of select="@style"/>
        </td>
    </xsl:template>
    <!-- =============================================================================== -->
</xsl:stylesheet>
<!--    <html>
        <body>
            <h2>My CD Collection</h2>
            <table border="1">
                <tr bgcolor="#9acd32">
                    <th>Title</th>
                    <th>Artist</th>
                </tr>
                <xsl:for-each select="catalog/cd">
                    <tr>
                        <td><xsl:value-of select="title"/></td>
                        <xsl:choose>
                            <xsl:when test="price &gt; 10">
                                <td bgcolor="#ff00ff">
                                    <xsl:value-of select="artist"/></td>
                            </xsl:when>
                            <xsl:otherwise>
                                <td><xsl:value-of select="artist"/></td>
                            </xsl:otherwise>
                        </xsl:choose>
                    </tr>
                </xsl:for-each>
            </table>
        </body>
    </html>
    </xsl:template>-->
