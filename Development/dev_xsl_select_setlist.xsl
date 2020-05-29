<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <xsl:template name="songbook_setlist">

        <!-- 2019-07-21 Newnham Social Club gig -->

        <xsl:apply-templates select="//song[title = 'New York, New York (B)']"/>
        <xsl:apply-templates select="//song[title = 'Johnny B. Goode']"/>
        <xsl:apply-templates select="//song[title = 'Great Balls Of Fire']"/>
        <xsl:apply-templates select="//song[title = 'Rock and Roll Music (Deep  Blue version)']"/>
        <xsl:apply-templates select="//song[title = 'Rockin Around the Christmas Tree']"/>
        <xsl:apply-templates select="//song[title = 'Wonderwall']"/>

        <!-- 

        <xsl:apply-templates select="//song[title = 'Help Me Make It Through The Night']"/>
        <xsl:apply-templates select="//song[title = 'Master Blaster (Am)']"/>
        <xsl:apply-templates select="//song[title = 'Valerie']"/>
        <xsl:apply-templates select="//song[title = 'Human']"/>
        <xsl:apply-templates select="//song[title = 'The Thrill Is Gone']"/>
        <xsl:apply-templates select="//song[title = 'Stand By Me']"/>
        <xsl:apply-templates select="//song[title = 'You Cant Hurry Love']"/>
        <xsl:apply-templates select="//song[title = 'Need Your Love So Bad']"/>
        <xsl:apply-templates select="//song[title = 'Hoochie Coochie Man']"/>
        <xsl:apply-templates select="//song[title = 'Aint Nobody']"/>
        <xsl:apply-templates select="//song[title = 'Happy']"/>
        <xsl:apply-templates select="//song[title = 'Love Song']"/>
        <xsl:apply-templates select="//song[title = 'Take Me To The River']"/>
        <xsl:apply-templates select="//song[title = 'Sweet Home Chicago']"/>
        <xsl:apply-templates select="//song[title = 'Misirlou']"/>
        <xsl:apply-templates select="//song[title = 'Honky Tonk Woman']"/>
        <xsl:apply-templates select="//song[title = 'Twist And Shout']"/>
        <xsl:apply-templates select="//song[title = 'Proud Mary (DeepBlue Version)']"/>
        <xsl:apply-templates select="//song[title = 'Get Lucky']"/>
        <xsl:apply-templates select="//song[title = 'September']"/>
        <xsl:apply-templates select="//song[title = 'Lost In Music']"/>
        <xsl:apply-templates select="//song[title = 'I Say a Little Prayer (D)']"/>
        <xsl:apply-templates select="//song[title = 'Rolling In The Deep']"/>   
        <xsl:apply-templates select="//song[title = 'Hallelujah']"/>     
        <xsl:apply-templates select="//song[title = 'High Heel Sneakers']"/>           
        <xsl:apply-templates select="//song[title = 'To Make You Feel My Love']"/>   
        <xsl:apply-templates select="//song[title = 'Summertime']"/>
        <xsl:apply-templates select="//song[title = 'Lady Marmalade']"/> 
        <xsl:apply-templates select="//song[title = 'Mustang Sally']"/>       
        <xsl:apply-templates select="//song[title = 'Smooth']"/>
        <xsl:apply-templates select="//song[title = 'I Say a Little Prayer (D)']"/>
        <xsl:apply-templates select="//song[title = 'None of Us Are Free']"/>
        <xsl:apply-templates select="//song[title = 'If I Aint Got You']"/>        
        <xsl:apply-templates select="//song[title = 'Rock and Roll Music (Deep  Blue version)']"/>        
        <xsl:apply-templates select="//song[title = 'I Feel Good']"/>           
        <xsl:apply-templates select="//song[title = 'Pata Pata']"/>            
        <xsl:apply-templates select="//song[title = 'Stormy Monday']"/>      
        <xsl:apply-templates select="//song[title = 'Brothers In Arms']"/>
        <xsl:apply-templates select="//song[title = 'Black Magic Woman']"/>
        <xsl:apply-templates select="//song[title = 'Oye Como Va']"/>
        <xsl:apply-templates select="//song[title = 'Burning down the house']"/>
        <xsl:apply-templates select="//song[title = 'Sittin On The Dock Of The Bay']"/> 
        <xsl:apply-templates select="//song[title = 'Master Blaster (Am)']"/>
        <xsl:apply-templates select="//song[title = 'Hey Joe']"/>
        <xsl:apply-templates select="//song[title = 'Wild Wood']"/>
        <xsl:apply-templates select="//song[title = 'It Takes Two']"/>
        <xsl:apply-templates select="//song[title = 'Roll Over Beethoven']"/>
        <xsl:apply-templates select="//song[title = '500 Miles']"/>                   
        <xsl:apply-templates select="//song[title = 'Oh Mary Dont You Weep']"/>
        <xsl:apply-templates select="//song[title = 'Southern Man']"/>
        <xsl:apply-templates select="//song[title = 'Good Golly Miss Molly']"/>           
        <xsl:apply-templates select="//song[title = 'Sugar']"/>
        <xsl:apply-templates select="//song[title = 'Autumn Leaves']"/> 
        <xsl:apply-templates select="//song[title = 'A Change Is Gonna Come (A)']"/>
        <xsl:apply-templates select="//song[title = 'Adventure Of A Lifetime']"/>                                       
        <xsl:apply-templates select="//song[title = 'Street Life']"/>           
        <xsl:apply-templates select="//song[title = 'Oh Mary Dont You Weep']"/>          
        <xsl:apply-templates select="//song[title = 'Dont Ever Let Nobody Drag Your Spirit Down']"/>          
        <xsl:apply-templates select="//song[title = 'Knockin On Heavens Door']"/>
        <xsl:apply-templates select="//song[title = 'Higher and Higher']"/>                  
        <xsl:apply-templates select="//song[title = 'Hard Times']"/>     
        <xsl:apply-templates select="//song[title = 'Be My Baby']"/>

        
        -->

    </xsl:template>
    <!-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% -->
    <xsl:template name="songbookIndex_setlist">
        <fo:block font-style="italic" font-size="10pt" text-align-last="justify"/>
    </xsl:template>
    <!-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% -->
</xsl:stylesheet>
