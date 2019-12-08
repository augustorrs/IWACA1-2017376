<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <table id="menuTable" class="indent">
            <thead>
                <tr>
                    <th colspan="3" style="font-size: 24px;">Pisa - Italian Restaurant Menu</th>
                </tr>
                <tr>
                    <th style="text-align:center">Item</th>
                    <th style="text-align:center">Description</th>
                    <th style="text-align:center">Price($)</th>
                </tr>
            </thead>
            <tbody>
                <xsl:for-each select="/cafemenu/section">
                    <tr>
                        <td colspan="3" >
                            <b><xsl:value-of select="@name" /></b>
                        </td>
                    </tr>
                    <xsl:for-each select="entree">
                    <tr id="{position()}">
                        <xsl:attribute name="vegetarian">
                            <xsl:value-of select="boolean(./@vegetarian)" />
                        </xsl:attribute>
                        <td style="text-align:center">
                            <xsl:value-of select="item" />
                        </td>
                        <td style="text-align:center">
                            <xsl:value-of select="desc" />
                        </td>
                        <td style="text-align:center" class="price">
                            <xsl:value-of select="price" />
                        </td>
                    </tr>
                    </xsl:for-each>
                </xsl:for-each>
            </tbody>
        </table><br/>
    </xsl:template>
</xsl:stylesheet>