<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="/">
    <html>
        <head>
            <title>Ejercicio 2</title>
            <meta charset="utf-8"/>
            <style>
            </style>
        </head>
        <body>
            <h3>Ejercicio 3</h3>
                <ol>
                <xsl:for-each select="bib/libro/autor">
                <xsl:sort select="apellido" order="ascending"/>
                    <li>
                        <xsl:value-of select="nombre"/><xsl:text> </xsl:text> <xsl:value-of select="apellido"/>
                    </li>                
            </xsl:for-each>
            </ol>
        </body>
    </html>
</xsl:template>

</xsl:stylesheet>