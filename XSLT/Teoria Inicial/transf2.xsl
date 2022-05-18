<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <html>
            <head>
                <title>Transformación 1</title>
                <meta charset="UTF-8"/>
                <body>
                    <h1>FOR-EACH, SORT, IF</h1>
                    <xsl:for-each select="ies/ciclos/ciclo"><!--POR CADA UNO DE LOS CICLOS...-->
                    <xsl:sort select="nombre" order="descending"/> <!--ORDENA POR NOMBRE, DESCENDENTE-->
                    <xsl:if test="decretoTitulo/@año &gt;= 2009"><!--LOS ATRIBUTOS SE HACEN REFERENCIA CON @-->
                        <li><xsl:value-of select="nombre"/></li>
                    </xsl:if>
                    </xsl:for-each>
                </body>
            </head>
        </html>
    </xsl:template>

</xsl:stylesheet>