<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <!-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% -->
    <xsl:import href="dev_xsl_select_songbook.xsl"/>
    <xsl:import href="dev_xsl_select_songbook_rehearsing.xsl"/>
    <xsl:import href="dev_xsl_select_setlist.xsl"/>
    <xsl:import href="dev_xsl_select_new.xsl"/>
    <xsl:output method="xml"/>
    <!-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% -->
    <xsl:template match="songbook" mode="generate-pdf">
        <xsl:param name="pdf-content" select="'rehearsing'"/>
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <!--    
            %
            % Layout
            %
            -->
            <fo:layout-master-set>
                <fo:simple-page-master master-name="contents" page-height="32cm" page-width="21cm" margin="0cm">
                    <fo:region-body region-name="xsl-region-body" margin="2cm"/>
                    <fo:region-before extent="2cm" region-name="xsl-region-before"/>
                    <fo:region-after extent="2cm" region-name="xsl-region-after"/>
                </fo:simple-page-master>
                <fo:simple-page-master master-name="toc" page-height="29.7cm" page-width="21cm" margin="0cm">
                    <fo:region-body region-name="xsl-region-body" margin="2cm"/>
                    <fo:region-before extent="2cm" region-name="xsl-region-before"/>
                    <fo:region-after extent="2cm" region-name="xsl-region-after"/>
                </fo:simple-page-master>
            </fo:layout-master-set>
            <!--    
            %
            % Table of contents flow
            %
             -->
            <fo:page-sequence master-reference="toc" format="1">
                <fo:flow flow-name="xsl-region-body">
                    <xsl:choose>
                        <xsl:when test="$pdf-content='full'">
                            <xsl:call-template name="songbookIndex_full"/>
                        </xsl:when>
                        <xsl:when test="$pdf-content='rehearsing'">
                            <xsl:call-template name="songbookIndex_rehearsing"/>
                        </xsl:when>
                        <xsl:when test="$pdf-content='setlist'">
                            <xsl:call-template name="songbookIndex_setlist"/>
                        </xsl:when>
                        <xsl:when test="$pdf-content='new'">
                            <xsl:call-template name="songbookIndex_new"/>
                        </xsl:when>
                    </xsl:choose>
                </fo:flow>
            </fo:page-sequence>
            <fo:page-sequence master-reference="contents" format="1" initial-page-number="2">
                <fo:static-content flow-name="xsl-region-after">
                    <fo:block text-align="center">- <fo:page-number/> -</fo:block>
                </fo:static-content>
                <!--    
                %
                % Songbook body flow
                %
                -->
                <fo:flow flow-name="xsl-region-body">
                    <xsl:choose>
                        <xsl:when test="$pdf-content='full'">
                            <xsl:call-template name="songbook_full"/>
                        </xsl:when>
                        <xsl:when test="$pdf-content='rehearsing'">
                            <xsl:call-template name="songbook_rehearsing"/>
                        </xsl:when>
                        <xsl:when test="$pdf-content='setlist'">
                            <xsl:call-template name="songbook_setlist"/>
                        </xsl:when>
                        <xsl:when test="$pdf-content='new'">
                            <xsl:call-template name="songbook_new"/>
                        </xsl:when>
                    </xsl:choose>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
    <!-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% -->
    <xsl:template match="revisioninfo" name="revisionTmpl">
        <fo:block id="{.}" font-weight="bold" line-height="18pt" font-family="Times" font-size="16pt" text-align="center"
            color="#CC0066">
            <xsl:value-of select="."/>
            <xsl:value-of select="description"/>
        </fo:block>
    </xsl:template>
    <!-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% -->
    <xsl:template match="song">
        <fo:table border="1pt solid black" text-align="center" border-spacing="3pt" break-before="page">
            <fo:table-column column-width="85mm"/>
            <fo:table-column column-width="85mm"/>
            <fo:table-body>
                <fo:table-row>
                    <fo:table-cell padding="3pt" border="1pt solid black">
                        <xsl:apply-templates select="title"/>
                    </fo:table-cell>
                    <fo:table-cell padding="3pt" border="1pt solid black">
                        <xsl:apply-templates select="info"/>
                    </fo:table-cell>
                </fo:table-row>
            </fo:table-body>
        </fo:table>
        <fo:table border="0.5pt solid black" text-align="center" border-spacing="3pt">
            <fo:table-column column-width="30mm"/>
            <fo:table-column column-width="140mm"/>
            <fo:table-body>
                <xsl:apply-templates select="content"/>
            </fo:table-body>
        </fo:table>
    </xsl:template>
    <!-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% -->
    <xsl:template match="title">
        <fo:block id="{.}" font-weight="bold" line-height="18pt" font-family="Times" font-size="16pt" text-align="center"
            color="#CC0066">
            <xsl:value-of select="."/>
        </fo:block>
    </xsl:template>
    <!-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% -->
    <xsl:template match="info">
        <fo:block font-weight="bold" line-height="18pt" font-family="Times" font-size="18pt" text-align="center" color="#CC0066">
            <xsl:value-of select="@key"/>
        </fo:block>
    </xsl:template>
    <!-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% -->
    <xsl:template match="content">
        <xsl:apply-templates select="annotation"/>
        <xsl:apply-templates select="section"/>
    </xsl:template>
    <!-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% -->
    <xsl:template match="annotation">
        <fo:table-row>
            <fo:table-cell padding="3pt" border="0.5pt solid black">
                <xsl:if test="@type = 'howstart'">
                    <fo:block font-size="12pt" text-align="left" color="#006699"> started by <xsl:value-of select="@person"/>
                    </fo:block>
                </xsl:if>
            </fo:table-cell>
            <fo:table-cell padding="3pt" border="0.5pt solid black">
                <fo:block font-style="oblique" font-size="10pt" text-align="left" font-family="Verdana">
                    <xsl:value-of select="."/>
                </fo:block>
            </fo:table-cell>
        </fo:table-row>
    </xsl:template>
    <!-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% -->
    <xsl:template match="section">
        <fo:table-row>
            <fo:table-cell padding="3pt" border="0.5pt solid black">
                <fo:block font-size="12pt" text-align="left" color="#006699">
                    <xsl:value-of select="@sectiontype"/>
                    <xsl:if test="@numbars&gt;0"> - <xsl:value-of select="@numbars"/> bars </xsl:if>
                    <xsl:if test="@part"> - <xsl:value-of select="@part"/></xsl:if>
                    <xsl:if test="@feel"> - <xsl:value-of select="@feel"/></xsl:if>
                    <xsl:if test="@person"> - <xsl:value-of select="@person"/></xsl:if>
                    <xsl:apply-templates select="directions"/>
                </fo:block>
            </fo:table-cell>
            <fo:table-cell padding="3pt" border="0.5pt solid black">
                <xsl:apply-templates select="comment"/>
                <xsl:apply-templates select="chords"/>
                <xsl:apply-templates select="lyrics"/>
            </fo:table-cell>
        </fo:table-row>
    </xsl:template>
    <!-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% -->
    <xsl:template match="chords">
        <fo:block font-style="oblique" font-size="12pt" text-align="left" font-family="Verdana" color="#006699"> (<xsl:value-of
                select="."/>) </fo:block>
    </xsl:template>
    <!-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% -->
    <xsl:template match="lyrics">
        <xsl:apply-templates select="span"/>
    </xsl:template>
    <!-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% -->
    <xsl:template match="comment">
        <fo:block font-style="oblique" font-size="12pt" text-align="left" font-family="Verdana" color="#999999"> (<xsl:value-of
                select="."/>) </fo:block>
    </xsl:template>
    <!-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% -->
    <xsl:template match="span">
        <xsl:choose>
            <xsl:when test="@spantype='words'">
                <fo:block font-style="italic" font-size="14pt" text-align="left">
                    <xsl:value-of select="."/>
                </fo:block>
            </xsl:when>
            <xsl:when test="@spantype='chords'">
                <fo:block font-style="oblique" font-size="12pt" text-align="left" font-family="Verdana" color="#006699">
                        (<xsl:value-of select="."/>) </fo:block>
            </xsl:when>
        </xsl:choose>
    </xsl:template>
    <!-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% -->
    <xsl:template match="directions">
        <fo:block font-style="oblique" font-size="12pt" text-align="left" font-family="Verdana"> (<xsl:value-of select="."/>)
        </fo:block>
    </xsl:template>
</xsl:stylesheet>
<!-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% -->
<!-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% -->
