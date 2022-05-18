<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <html>
            <head>
                <title>Transformación 1</title>
                <meta charset="UTF-8"/>
                <style>
                    .verde{color:green}
                    .azul{color:blue}
                    .rojo{color:red}
                </style>
            </head>
            <body>
                <h1>IF, COLORES</h1>
                <ul>
                    <xsl:for-each select="ies/ciclos/ciclo"><!--POR CADA UNO DE LOS CICLOS...-->
                        <xsl:sort select="nombre" order="descending"/> <!--ORDENA POR NOMBRE, DESCENDENTE-->
                            
                        <xsl:choose>
                            <xsl:when test="decretoTitulo/@año &lt; 2009"><!--AÑO MENOR QUE 2009, DE COLOR ROJO-->
                                <li><span class="rojo"><xsl:value-of select="nombre"/></span></li>
                            </xsl:when>
                            <xsl:when test="decretoTitulo/@año = 2009"><!--AÑO IGUAL QUE 2009, DE COLOR AZUL-->
                                <li><span class="azul"><xsl:value-of select="nombre"/></span></li>
                            </xsl:when>
                            <xsl:otherwise><!--AÑO MAYOR QUE 2009, DE COLOR VERDE-->
                                <li><span class="verde"><xsl:value-of select="nombre"/></span></li>
                            </xsl:otherwise>
                        </xsl:choose>
                            
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>