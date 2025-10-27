<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <xsl:template name="songbook_setlist">

        <!--New-->

    
        <xsl:apply-templates select="//song[title = 'I Wanna Dance With Somebody']"/>    
        
         <!--         
        <xsl:apply-templates select="//song[title = 'Youve Got The Love']"/>         
        <xsl:apply-templates select="//song[title = 'I Feel Love']"/>          
        <xsl:apply-templates select="//song[title = 'Master Blaster']"/>         
        -->

        <!--        
        <xsl:apply-templates select="//song[title = 'Part Time Lover']"/>   
        <xsl:apply-templates select="//song[title = 'Lady Marmalade']"/>   
        -->

        <!--    
        <xsl:apply-templates select="//song[title = 'Midnight Train to Georgia']"/>
        <xsl:apply-templates select="//song[title = 'D.I.S.C.O (en francais)']"/>
        -->

        <!--Newnham 24/10/2025-->
        
        <!--
            
        <xsl:apply-templates select="//song[title = 'September']"/>
        <xsl:apply-templates select="//song[title = 'Disco Inferno (C)']"/>
        <xsl:apply-templates select="//song[title = 'Take Me To The River']"/>
        <xsl:apply-templates select="//song[title = 'Superstition']"/>
        <xsl:apply-templates select="//song[title = 'Aint Nobody']"/>
        <xsl:apply-templates select="//song[title = 'I Wish']"/>
        <xsl:apply-templates select="//song[title = 'Young Hearts Run Free']"/>
        <xsl:apply-templates select="//song[title = 'Upside Down']"/>
        <xsl:apply-templates select="//song[title = 'Interval']"/>
        <xsl:apply-templates select="//song[title = 'Smooth Operator']"/>
        <xsl:apply-templates select="//song[title = 'Master Blaster']"/>
        <xsl:apply-templates select="//song[title = 'Im Coming Out']"/>
        <xsl:apply-templates select="//song[title = 'Murder On The Dancefloor']"/>
        <xsl:apply-templates select="//song[title = 'Waterloo']"/>
        <xsl:apply-templates select="//song[title = 'Its Raining Men']"/>
        <xsl:apply-templates select="//song[title = 'I Will Survive']"/>
        <xsl:apply-templates select="//song[title = 'Lost In Music']"/>
        <xsl:apply-templates select="//song[title = 'We Are Family']"/>
        <xsl:apply-templates select="//song[title = 'Encores / Extras']"/>
        <xsl:apply-templates select="//song[title = 'Get Lucky']"/>
        <xsl:apply-templates select="//song[title = 'Valerie']"/>
        
        -->

        <!-- 
            <xsl:apply-templates select="//song[title = 'Happy']"/>     
            <xsl:apply-templates select="//song[title = 'Sweet Home Chicago']"/>   
            
                
            <xsl:apply-templates select="//song[title = 'Proud Mary (DeepBlue Version)']"/>         
            <xsl:apply-templates select="//song[title = 'D.I.S.C.O']"/>              
             
            <xsl:apply-templates select="//song[title = 'Back to Black']"/> 
            <xsl:apply-templates select="//song[title = 'Love Song']"/>            
           
            <xsl:apply-templates select="//song[title = 'Smooth Operator']"/>   
            <xsl:apply-templates select="//song[title = 'Love Song']"/>  
            <xsl:apply-templates select="//song[title = 'To Make You Feel My Love']"/>  
            <xsl:apply-templates select="//song[title = 'I Say a Little Prayer']"/>
            <xsl:apply-templates select="//song[title = 'Murder On The Dancefloor']"/>            
            <xsl:apply-templates select="//song[title = 'Valerie']"/>  

        -->


        <!-- 
            
        <xsl:apply-templates select="//song[title = 'Happy Birthday']"/>          
        <xsl:apply-templates select="//song[title = 'Hold On Im Coming']"/> 
        <xsl:apply-templates select="//song[title = 'Pigbag']"/>            
             
        <xsl:apply-templates select="//song[title = 'I Heard It Through the Grapevine']"/>   
        <xsl:apply-templates select="//song[title = 'Dont leave me this way']"/>     
        <xsl:apply-templates select="//song[title = 'You Cant Hurry Love']"/>
                
        <xsl:apply-templates select="//song[title = 'Twist And Shout']"/>              
        <xsl:apply-templates select="//song[title = 'Stand By Me']"/>  
        <xsl:apply-templates select="//song[title = 'To Make You Feel My Love']"/>         
        <xsl:apply-templates select="//song[title = 'Love Song']"/>   

        <xsl:apply-templates select="//song[title = 'Songbird']"/> 
        <xsl:apply-templates select="//song[title = 'Rolling In The Deep']"/> 
        <xsl:apply-templates select="//song[title = 'Help Me Make It Through The Night']"/>               
            
        <xsl:apply-templates select="//song[title = 'Honky Tonk Woman']"/>           
        <xsl:apply-templates select="//song[title = 'I Heard It Through the Grapevine']"/>                           
        
        <xsl:apply-templates select="//song[title = 'Rockin Around the Christmas Tree']"/>
        <xsl:apply-templates select="//song[title = 'I Feel Good']"/>
        <xsl:apply-templates select="//song[title = 'Summertime']"/>       

        <xsl:apply-templates select="//song[title = 'Lady Marmalade']"/>   
        <xsl:apply-templates select="//song[title = 'Disco Inferno']"/>    
        <xsl:apply-templates select="//song[title = 'Lady Marmalade (Instrumental)']"/>
  

        <xsl:apply-templates select="//song[title = 'Johnny B. Goode']"/>
        <xsl:apply-templates select="//song[title = 'Piece Of My Heart']"/>
        <xsl:apply-templates select="//song[title = 'Teardrops']"/> 
        <xsl:apply-templates select="//song[title = 'Need Your Love So Bad']"/>        
        
        <xsl:apply-templates select="//song[title = 'Try A Little Tenderness']"/>
        <xsl:apply-templates select="//song[title = 'Always There']"/>    
        <xsl:apply-templates select="//song[title = 'Sweet Child Of Mine']"/>            
        <xsl:apply-templates select="//song[title = 'Hallelujah']"/>   
        <xsl:apply-templates select="//song[title = 'Rolling In The Deep']"/>  

        <xsl:apply-templates select="//song[title = 'Wonderwall']"/> 
        <xsl:apply-templates select="//song[title = 'Set Fire To The Rain']"/>             
        <xsl:apply-templates select="//song[title = 'Thinking Of You']"/>
        <xsl:apply-templates select="//song[title = 'All I Wanna Do']"/>           
        <xsl:apply-templates select="//song[title = 'I Saw Her Standing There']"/>
        <xsl:apply-templates select="//song[title = 'Misirlou']"/>
        <xsl:apply-templates select="//song[title = 'Human']"/>
        <xsl:apply-templates select="//song[title = 'Aint No Stoppin Us Now']"/>
        <xsl:apply-templates select="//song[title = 'High Heel Sneakers']"/>
        <xsl:apply-templates select="//song[title = 'Always There']"/>
        <xsl:apply-templates select="//song[title = 'I Want Your Love']"/>
        <xsl:apply-templates select="//song[title = 'Sisters are doin it for themselves']"/>
        <xsl:apply-templates select="//song[title = 'Oye Como Va (Tito Puente version)']"/>            
        <xsl:apply-templates select="//song[title = 'Whats Going On']"/>           
        <xsl:apply-templates select="//song[title = 'Great Balls Of Fire']"/>
        <xsl:apply-templates select="//song[title = 'Rock and Roll Music (Deep  Blue version)']"/>
        <xsl:apply-templates select="//song[title = 'Master Blaster (Am)']"/>
        <xsl:apply-templates select="//song[title = 'The Thrill Is Gone']"/>
        <xsl:apply-templates select="//song[title = 'Hoochie Coochie Man']"/> 
        <xsl:apply-templates select="//song[title = 'I Say a Little Prayer (D)']"/>               
        <xsl:apply-templates select="//song[title = 'Mustang Sally']"/>       
        <xsl:apply-templates select="//song[title = 'Smooth']"/>
        <xsl:apply-templates select="//song[title = 'I Say a Little Prayer (D)']"/>
        <xsl:apply-templates select="//song[title = 'None of Us Are Free']"/>
        <xsl:apply-templates select="//song[title = 'If I Aint Got You']"/>              
        <xsl:apply-templates select="//song[title = 'I Feel Good']"/>           
        <xsl:apply-templates select="//song[title = 'Pata Pata']"/>            
        <xsl:apply-templates select="//song[title = 'Stormy Monday']"/>      
        <xsl:apply-templates select="//song[title = 'Brothers In Arms']"/>
        <xsl:apply-templates select="//song[title = 'Black Magic Woman']"/>
        <xsl:apply-templates select="//song[title = 'Oye Como Va']"/>
        <xsl:apply-templates select="//song[title = 'Burning down the house']"/>
        <xsl:apply-templates select="//song[title = 'Sittin On The Dock Of The Bay']"/> 
        <xsl:apply-templates select="//song[title = 'Hey Joe']"/>
     -->

    </xsl:template>

    <!-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% -->
    <xsl:template name="songbookIndex_setlist">
        <fo:block font-style="italic" font-size="10pt" text-align-last="justify"/>
    </xsl:template>
    <!-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% -->
</xsl:stylesheet>
