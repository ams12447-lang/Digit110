<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    xmlns="http://www.w3.org/1999/xhtml"
    exclude-result-prefixes="xs math"
    version="3.0">
    <xsl:template match="/">
        <html>
            <head>
               <title>DRACULA</title>
                <link rel="stylesheet" href="exercisetest.css"></link>
            </head>
            <body>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="title">
    <h1><xsl:apply-templates/> </h1>  
    </xsl:template>
    <xsl:template match="chapter">
        <section class="chapter">
            <section id="{count(preceding::chapTitle)+1}">
                <xsl:apply-templates/>></section> 
    <xsl:apply-templates/>
            </section>           
    </xsl:template>
    <xsl:template match="p">
        <p> <xsl:apply-templates/> </p>
    </xsl:template>
    <xsl:template match="chapTitle">
        <h2 id="{count(preceding::chapTitle)+1}">
            <a id="CE"></a>
            <xsl:apply-templates/> </h2> 
    </xsl:template>
    <xsl:template match="tech">
        <span class="tech">
          <a id="TH"></a>  
        <xsl:apply-templates/>
        </span>
    </xsl:template>
    <xsl:template match="loc">
        <span class="loc">
        <a id="LC"></a>    <xsl:apply-templates/>  
        </span>
    </xsl:template>

<xsl:template match="date">
    <span class="date">
        <a id="DE"></a>
    </span>
</xsl:template>
    <xsl:template match="time">
        <span class="time">
            <a id="TE"></a>
        </span>
    </xsl:template>
    <xsl:template match="person">
        <span class="person">
            <a id="PN"></a>
        </span>            
    </xsl:template>
</xsl:stylesheet>