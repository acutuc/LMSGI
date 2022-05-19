<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="/">
    <html>
        <head>
            <title>Ejercicio 6</title>
            <meta charset="utf-8"/>
            <style>
                table, td, th{border:1px solid black}
                table{border-collapse:collapse;width:80%;margin:0 auto;text-align:center}
                th{background-color:#CCC}
                .rojo{color:red}
                .verde{color:green}
            </style>
        </head>
        <body>
            <h3>Ejercicio 6</h3>
            <table>
                <tr><th>Título</th></tr>
                <xsl:for-each select="catalogo/cds/cd">
                    <xsl:choose>
                        <xsl:when test="año &lt; 2000">
                            <tr><td><span class="rojo"><xsl:value-of select="titulo"/></span></td></tr>
                         </xsl:when>
                        <xsl:when test="año &gt; 2000">
                            <tr><td><span class="verde"><xsl:value-of select="titulo"/></span></td></tr>
                        </xsl:when>
                         <xsl:otherwise>
                            <tr><td><xsl:value-of select="titulo"/></td></tr>
                     </xsl:otherwise>
                     </xsl:choose>
                </xsl:for-each>
            </table>
        </body>
    </html>
</xsl:template>

</xsl:stylesheet>