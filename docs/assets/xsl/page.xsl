<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns:html="http://www.w3.org/1999/xhtml" exclude-result-prefixes="xs tei html" version="2.0">
    <xsl:output method="html"/>
    
    <xsl:template match="tei:teiCorpus">
        <xsl:for-each select="tei:TEI">
            <xsl:variable name="postcardurl" select="@xml:id"/>
            <xsl:result-document href="{$postcardurl}.html">
    <html lang="en" xml:lang="en">
    <head>
        <title>
            <!-- add the title from the metadata. This is what will be shown
                    on your browsers tab-->
            <xsl:apply-templates select="//tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"/>
        </title>
        <!-- load bootstrap css (requires internet!) so you can use their pre-defined css classes to style your html -->
        <link rel="stylesheet"
            href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
            integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
            crossorigin="anonymous"/>
        <!-- load the stylesheets in the assets/css folder, where you can modify the styling of your website -->
        <link rel="stylesheet" href="assets/css/main.css"/>
        <!-- <link rel="stylesheet" href="assets/css/desktop.css"/> -->
    </head>
    <body>
        <header>
            <h1>
                Description: <xsl:value-of select="tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"/>
            </h1>
        </header>
        <nav id="sitenav">
            <a href="index.html">Home</a> |
            <a href="postcards.html">Postcard Collection</a> |
        </nav>
        <main>
            
        </main>
    </body>
    </html>
            </xsl:result-document>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>