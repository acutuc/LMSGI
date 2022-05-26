<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <html>
            <head>
                <title>Información de los Continentes</title>
                <meta charset="UTF-8"/>
                <style>
                    td img{height:100px}
                    .esp{padding-left:50px}
                </style>
            </head>
            <body>
                <h1>Información de los Continentes</h1>
                <xsl:for-each select="geografia/continentes">
                    <ol>
                        <li>
                            <h2>
                                <xsl:value-of select="continente/@nombre"/>
                            </h2>
                            <ul>
                                <li>
                                    <a>
                                        <xsl:value-of select="pais"/>
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ol>
                </xsl:for-each>

                <h1>Información de los países</h1>
                <ol>
                    <xsl:for-each select="geografia/paises/pais">
                        <xsl:sort order="ascending"/>
                        <li>
                            <h2>
                                <xsl:value-of select="@nombre"/>
                            </h2>
                            <table>
                                <tr>
                                    <td>
                                        <p>
                                            <strong>Sistema de gobierno: </strong>
                                            <xsl:value-of select="sistema"/>
                                        </p>
                                        <p>
                                            <strong>Superficie: </strong>
                                            <xsl:value-of select="superficie"/> m2
                                        </p>
                                        <p>
                                            <strong>Idioma: </strong>
                                            <xsl:value-of select="idioma"/>
                                        </p>
                                        <p>
                                            <strong>Moneda: </strong>
                                            <xsl:value-of select="moneda"/>
                                        </p>
                                        <p>
                                            <strong>Moneda antigua: </strong>
                                            <xsl:value-of select="moneda/@antigua"/>
                                        </p>
                                    </td>
                                    <td>
                                        <img>
                                            <xsl:attribute name="src">Img/<xsl:value-of select="@nombre"/>.png</xsl:attribute>
                                        </img>
                                    </td>
                                </tr>
                            </table>
                        </li>
                    </xsl:for-each>
                </ol>

            </body>
        </html>
    </xsl:template>


</xsl:stylesheet>