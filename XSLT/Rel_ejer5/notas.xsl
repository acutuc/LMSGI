<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Transformación 1 Notas</title>
                <meta charset="UTF-8"/>
                <style>
                .rojo{color:red}
                .naranja{color:orange}
                .celeste{color:lightblue}
                .azul{color:blue}
                .text_centrado{text-align:center}
                .fondo1{background-color:1d51e1}
                .fondo2{background-color:5d7edc}
                table, th, td {border:1px solid black}
                .tabla{width:80%; margin:0 auto; border-colapse:collapse; }
                </style>
            </head>
            <body>
                <h1 class="rojo text_centrado">Calificaciones de las Notas de Junio</h1>
                <table class="tabla text_centrado">
                    <tr class="fondo1">                        <!--ENCABEZADO-->
                        <th colspan="3">
                        Datos
                        </th>
                        <th colspan="3">
                        Notas
                        </th>
                    </tr>

                    <tr class="fondo2">
                        <th>
                        Nombres
                        </th>
                        <th>
                        Apellidos
                        </th>
                        <th>
                        Tareas
                        </th>
                        <th>
                        Cuestionarios
                        </th>
                        <th>
                        Examen
                        </th>
                        <th>
                        Final
                        </th>
                    </tr>
                    <xsl:for-each select="notas/alumno">
                        <xsl:if test="@convocatoria = 'Junio'">
                            <tr>
                                <td>
                                    <xsl:value-of select="nombre"/>
                                </td>
                                <td>
                                    <xsl:value-of select="apellidos"/>
                                </td>
                                <td>
                                    <xsl:value-of select="tareas"/>
                                </td>
                                <td>
                                    <xsl:value-of select="cuestionarios"/>
                                </td>
                                <td>
                                    <xsl:value-of select="examen"/>
                                </td>
                                <td>
                                    <xsl:choose>
                                        <xsl:when test="final &lt; 5">
                                            <span class="rojo">
                                                Suspenso
                                            </span>
                                        </xsl:when>
                                        <xsl:when test="final &lt; 6">
                                            <span class="naranja">
                                                Suficiente
                                            </span>
                                        </xsl:when>
                                        <xsl:when test="final &lt; 7">
                                            <span>
                                                Bien
                                            </span>
                                        </xsl:when>
                                        <xsl:when test="final &lt; 9">
                                            <span class="celeste">
                                                Notable
                                            </span>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <span class="azul">
                                                Sobresaliente
                                            </span>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                </table>
            </body>
        </html>

    </xsl:template>

</xsl:stylesheet>