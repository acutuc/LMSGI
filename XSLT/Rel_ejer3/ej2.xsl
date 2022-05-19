<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="/">
        <html>
            <head>
                <title>Ejercicio 2</title>
                <meta charset="UTF-8"/>
                <style>
                </style>
            </head>
            <body>
                <h3>Ejercicio 2</h3>
                <xsl:for-each select="tienda/producto">
                    <ul>
                        <li>
                            <xsl:value-of select="articulo"/>
                        </li>
                    </ul>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>