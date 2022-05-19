<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="/">
    <html>
        <head>
            <title>Ejercicio 2</title>
            <meta charset="utf-8"/>
            <style>
                table, td, th{border:1px solid black}
                table{border-collapse:collapse;width:80%;margin:0 auto;text-align:center}
                th{background-color:#CCC}
                .rojo{background-color:red}
            </style>
        </head>
        <body>
            <h3>Ejercicio 2</h3>
            <table>
                <tr><th>Precio</th><th>Título</th><th>Año de publicación</th></tr>
                <xsl:for-each select="bib/libro">
                <xsl:sort select="precio" order="ascending"/>
                <tr>
                    <td>
                        <xsl:value-of select="precio"/>
                    </td>
                    <xsl:choose>
                        <xsl:when test="precio &gt; 100">
                            <td class="rojo">
                                <xsl:value-of select="titulo"/>
                            </td>
                        </xsl:when>
                        <xsl:otherwise>
                            <td>
                                <xsl:value-of select="titulo"/>
                            </td>
                        </xsl:otherwise>
                    </xsl:choose>
                    <td>
                        <em><xsl:value-of select="@año"/></em>
                    </td>
                </tr>
            </xsl:for-each>
            </table>
        </body>
    </html>
</xsl:template>

</xsl:stylesheet>