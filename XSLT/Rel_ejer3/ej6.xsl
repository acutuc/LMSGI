<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <html>
            <head>
                <title>Ejercicio 6</title>
                <meta charset="UTF-8"/>
                <style>
                    table, td, th{border:1px solid black}
                    table{border-collapse:collapse;width:80%;margin:0 auto;text-align:center}
                    th{background-color:#CCC}
                    .verde{color:green}
                    .azul{color:blue}
                    .rojo{color:red}
                </style>
            </head>
            <body>
                <h3>Ejercicio 6</h3>
                <table>
                    <tr>
                        <th>Código</th>
                        <th>Artículo</th>
                        <th>Cantidad</th>
                    </tr>
                    <xsl:for-each select="tienda/producto">
                        <tr>
                            <td>
                                <xsl:value-of select="codigo"/>
                            </td>
                            <td>
                                <xsl:choose>
                                    <xsl:when test="precio &lt;= 100">
                                        <span class="verde">
                                            <xsl:value-of select="articulo"/>
                                        </span>
                                    </xsl:when>
                                    <xsl:when test="precio &gt; 100">
                                        <span class="azul">
                                            <xsl:value-of select="articulo"/>
                                        </span>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <span class="rojo">
                                            <xsl:value-of select="articulo"/>
                                        </span>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </td>
                            <td>
                                <xsl:value-of select="cantidad"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>