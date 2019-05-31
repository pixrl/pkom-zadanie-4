<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:format="http://www.w3.org/1999/XSL/Format">
    <xsl:output method="xml" encoding="UTF-8"/>
    <xsl:template match="/">
        <format:root font-family="Arial">
            <format:layout-master-set>
                <format:simple-page-master master-name="Statistics" page-height="29cm" page-width="21cm" margin-bottom="2cm"
                                       margin-top="2cm" margin-left="1.5cm" margin-right="1.5cm" font-size="12pt">
                    <format:region-body margin-top="1cm"/>
                    <format:region-before extent="1.5cm"/>
                    <format:region-after extent="1.5cm"/>
                </format:simple-page-master>
                <format:simple-page-master master-name="Catalog" page-height="29cm" page-width="21cm" margin-bottom="2cm"
                                       margin-top="2cm" margin-left="1.5cm" margin-right="1.5cm" font-size="12pt">
                    <format:region-body margin-top="1cm"/>
                    <format:region-before extent="1.5cm"/>
                    <format:region-after extent="1.5cm"/>
                </format:simple-page-master>
            </format:layout-master-set>
            <format:page-sequence master-reference="Statistics">
                <format:flow flow-name="xsl-region-body">
                    <format:block text-align="center">Statistics</format:block>

                    <format:list-block>
                        <format:list-item>
                            <format:list-item-label>
                                <format:block>Report date:</format:block>
                            </format:list-item-label>
                            <format:list-item-body>
                                <format:block margin-left="10cm">
                                    <xsl:value-of select="musicCollection/information/data/reportDate"/>
                                </format:block>
                            </format:list-item-body>
                        </format:list-item>
                    </format:list-block>
                    <format:list-block>
                        <format:list-item>
                            <format:list-item-label>
                                <format:block>Number of albums:</format:block>
                            </format:list-item-label>
                            <format:list-item-body>
                                <format:block margin-left="10cm">
                                    <xsl:value-of select="musicCollection/information/data/numberOfAlbums"/>
                                </format:block>
                            </format:list-item-body>
                        </format:list-item>
                    </format:list-block>
                    <format:list-block>
                        <format:list-item>
                            <format:list-item-label>
                                <format:block>Number of rap songs:</format:block>
                            </format:list-item-label>
                            <format:list-item-body>
                                <format:block margin-left="10cm">
                                    <xsl:value-of select="musicCollection/information/data/numberOfRapSongs"/>
                                </format:block>
                            </format:list-item-body>
                        </format:list-item>
                    </format:list-block>
                    <format:list-block>
                        <format:list-item>
                            <format:list-item-label>
                                <format:block>Number of pop songs:</format:block>
                            </format:list-item-label>
                            <format:list-item-body>
                                <format:block margin-left="10cm">
                                    <xsl:value-of select="musicCollection/information/data/numberOfPopSongs"/>
                                </format:block>
                            </format:list-item-body>
                        </format:list-item>
                    </format:list-block>
                    <format:list-block>
                        <format:list-item>
                            <format:list-item-label>
                                <format:block>Number of hiphop songs:</format:block>
                            </format:list-item-label>
                            <format:list-item-body>
                                <format:block margin-left="10cm">
                                    <xsl:value-of select="musicCollection/information/data/numberOfHiphopSongs"/>
                                </format:block>
                            </format:list-item-body>
                        </format:list-item>
                    </format:list-block>
                    <format:list-block>
                        <format:list-item>
                            <format:list-item-label>
                                <format:block>Number of trap songs:</format:block>
                            </format:list-item-label>
                            <format:list-item-body>
                                <format:block margin-left="10cm">
                                    <xsl:value-of select="musicCollection/information/data/numberOfTrapSongs"/>
                                </format:block>
                            </format:list-item-body>
                        </format:list-item>
                    </format:list-block>
                    <format:list-block>
                        <format:list-item>
                            <format:list-item-label>
                                <format:block>Number of swing songs:</format:block>
                            </format:list-item-label>
                            <format:list-item-body>
                                <format:block margin-left="10cm">
                                    <xsl:value-of select="musicCollection/information/data/numberOfSwingSongs"/>
                                </format:block>
                            </format:list-item-body>
                        </format:list-item>
                    </format:list-block>
                    <format:list-block>
                        <format:list-item>
                            <format:list-item-label>
                                <format:block>Number of jazz songs:</format:block>
                            </format:list-item-label>
                            <format:list-item-body>
                                <format:block margin-left="10cm">
                                    <xsl:value-of select="musicCollection/information/data/numberOfJazzSongs"/>
                                </format:block>
                            </format:list-item-body>
                        </format:list-item>
                    </format:list-block>
                    <format:list-block>
                        <format:list-item>
                            <format:list-item-label>
                                <format:block>Number of funk songs:</format:block>
                            </format:list-item-label>
                            <format:list-item-body>
                                <format:block margin-left="10cm">
                                    <xsl:value-of select="musicCollection/information/data/numberOfFunkSongs"/>
                                </format:block>
                            </format:list-item-body>
                        </format:list-item>
                    </format:list-block>
                    <format:list-block>
                        <format:list-item>
                            <format:list-item-label>
                                <format:block>Highest price:</format:block>
                            </format:list-item-label>
                            <format:list-item-body>
                                <format:block margin-left="10cm">
                                    <xsl:value-of select="musicCollection/information/data/highestPrice"/>
                                </format:block>
                            </format:list-item-body>
                        </format:list-item>
                    </format:list-block>
                    <format:list-block>
                        <format:list-item>
                            <format:list-item-label>
                                <format:block>Lowest price:</format:block>
                            </format:list-item-label>
                            <format:list-item-body>
                                <format:block margin-left="10cm">
                                    <xsl:value-of select="musicCollection/information/data/lowestPrice"/>
                                </format:block>
                            </format:list-item-body>
                        </format:list-item>
                    </format:list-block>
                </format:flow>
            </format:page-sequence>
            <format:page-sequence master-reference="Catalog">
                <format:flow flow-name="xsl-region-body">
                    <format:table table-layout="fixed" width="100%">
                        <format:table-column column-width="25%" />
                        <format:table-column column-width="20%" />
                        <format:table-column column-width="12%" />
                        <format:table-column column-width="20%" />
                        <format:table-column column-width="13%" />
                        <format:table-column column-width="10%" />
                        <format:table-header>
                            <format:table-row border="solid 2pt black" keep-together.within-page="always">
                                <format:table-cell margin-left="1cm">
                                    <format:block font-weight="bold">Title</format:block>
                                </format:table-cell>
                                <format:table-cell margin-left="2mm">
                                    <format:block font-weight="bold">Artist</format:block>
                                </format:table-cell>
                                <format:table-cell margin-left="2mm">
                                    <format:block font-weight="bold">Released</format:block>
                                </format:table-cell>
                                <format:table-cell margin-left="2mm">
                                    <format:block font-weight="bold">Genre</format:block>
                                </format:table-cell>
                                <format:table-cell margin-left="2mm">
                                    <format:block font-weight="bold">Price</format:block>
                                </format:table-cell>
                                <format:table-cell margin-left="2mm">
                                    <format:block font-weight="bold">Songs</format:block>
                                </format:table-cell>
                            </format:table-row>
                        </format:table-header>
                        <format:table-body>
                            <xsl:for-each select="musicCollection/cd">
                                <format:table-row border="solid 1pt black" keep-together.within-page="always">
                                    <format:table-cell margin-left="0mm" display-align="center">
                                        <format:block>
                                            <xsl:value-of select="title"/>
                                        </format:block>
                                    </format:table-cell>
                                    <format:table-cell display-align="center">
                                        <format:block>
                                            <xsl:value-of select="artistInfo"/>
                                        </format:block>
                                    </format:table-cell>
                                    <format:table-cell margin-left="1mm" display-align="center">
                                        <format:block>
                                            <xsl:value-of select="released"/>
                                        </format:block>
                                    </format:table-cell>
                                    <format:table-cell margin-left="1mm" display-align="center">
                                        <format:block>
                                            <xsl:value-of select="genreInfo"/>
                                        </format:block>
                                    </format:table-cell>
                                    <format:table-cell margin-left="1mm" display-align="center">
                                        <format:block>
                                            <xsl:value-of select="price"/>
                                        </format:block>
                                    </format:table-cell>
                                    <format:table-cell margin-left="1mm" display-align="center">
                                        <format:block>
                                            <xsl:value-of select="songs"/>
                                        </format:block>
                                    </format:table-cell>
                                </format:table-row>
                            </xsl:for-each>
                        </format:table-body>
                    </format:table>
                </format:flow>
            </format:page-sequence>
        </format:root>
    </xsl:template>
</xsl:stylesheet>
