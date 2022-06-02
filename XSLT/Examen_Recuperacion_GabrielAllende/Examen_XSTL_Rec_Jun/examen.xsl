<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="/">
<html>
    <head>
        <title>Transformación XSLT</title>
        <meta charset="UTF-8"/>
        <style>
            ol{width:200px}
            li img{height:100px}
            p{text-align:center; width:100%}
        </style>
    </head>
    <body>
        <h1>
            Plantillas de la Temporada 2009-2010
        </h1>
        <ol>
            <xsl:for-each select="futbol/plantillas/plantilla">
            <xsl:sort select="@equipo" order="ascending"/>
            <li>
                <h2>
                    <xsl:if test="@temporada != '1999-2000'">
                        <xsl:value-of select="@equipo"/>
                    </xsl:if>
                </h2>
                <h4>
                    <xsl:if test="@temporada = '2009-2010'">
                        Jugadores
                    </xsl:if>
                                      
                </h4>
                <ol>
                    <xsl:for-each select="jugador">
                    <li>
                        <a>
                            <xsl:attribute name="href">#<xsl:value-of select="."/></xsl:attribute>
                            <xsl:value-of select="."/>
                        </a>
                    </li>
                    </xsl:for-each>
                </ol>
            </li>
        </xsl:for-each>
        </ol>

        <h1>Ficha de todos los jugadores</h1>
        
        <ol>
            <xsl:for-each select="futbol/jugadores/jugador">
            <xsl:sort name="@nombre" order="descending"/>
            <li>
                <h3>
                    <xsl:attribute name="id"><xsl:value-of select="@nombre"/></xsl:attribute>
                    <xsl:value-of select="@nombre"/>
                </h3>
                <p>
                    <img><xsl:attribute name="src">Images/<xsl:value-of select="@foto"/></xsl:attribute><xsl:attribute name="title"><xsl:value-of select="@nombre"/></xsl:attribute></img>
                    <br/>
                    <xsl:choose>
                        <xsl:when test="@nacido != ''">
                            <strong>Año de nacimiento: </strong><xsl:value-of select="@nacido"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <strong>Edad: </strong><xsl:value-of select="@edad"/>
                        </xsl:otherwise>
                    </xsl:choose>
                </p>
            </li>
        </xsl:for-each>
        </ol>
    </body>
</html>
</xsl:template>

</xsl:stylesheet>