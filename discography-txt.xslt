<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
				version="2.0">
    <xsl:output method="text" version="1.0" encoding="UTF-8"/>
    <xsl:template match="/">
        <xsl:apply-templates select="musicCollection/Statistics"/>
        <xsl:apply-templates select="musicCollection"/>
    </xsl:template>
    <xsl:template name= "Statistics" match="musicCollection/Statistics">
        <xsl:text>Authors: </xsl:text> <xsl:for-each select="authorsOfDocument"> <xsl:value-of select="person" /> <xsl:text>&#xA;</xsl:text></xsl:for-each>
        <xsl:text>Raport date - </xsl:text> <xsl:value-of select="substring(musicCollection/information/data/reportDate, 1, 10)" /> <xsl:text>&#xA;</xsl:text>

        <xsl:text>Summary</xsl:text> <xsl:text>&#xA;</xsl:text>
        <xsl:text>Report date:</xsl:text> <xsl:value-of select="musicCollection/information/data/reportDate" /> <xsl:text>&#xA;</xsl:text>
        <xsl:text>Number of albums:</xsl:text> <xsl:value-of select="musicCollection/information/data/numberOfAlbums" /> <xsl:text>&#xA;</xsl:text>
        <xsl:text>Number of rap songs:</xsl:text> <xsl:value-of select="musicCollection/information/data/numberOfRapSongs" /> <xsl:text>&#xA;</xsl:text>
        <xsl:text>Number of pop songs:</xsl:text> <xsl:value-of select="musicCollection/information/data/numberOfPopSongs" /> <xsl:text>&#xA;</xsl:text>
        <xsl:text>Number of hiphop songs:</xsl:text> <xsl:value-of select="musicCollection/information/data/numberOfHiphopSongs" /> <xsl:text>&#xA;</xsl:text>
        <xsl:text>Number of trap songs:</xsl:text> <xsl:value-of select="musicCollection/information/data/numberOfTrapSongs" /> <xsl:text>&#xA;</xsl:text>
        <xsl:text>Number of swing songs:</xsl:text> <xsl:value-of select="musicCollection/information/data/numberOfSwingSongs" /> <xsl:text>&#xA;</xsl:text>
        <xsl:text>Number of jazz songs:</xsl:text> <xsl:value-of select="musicCollection/information/data/numberOfJazzSongs" /> <xsl:text>&#xA;</xsl:text>
        <xsl:text>Number of funk songs:</xsl:text> <xsl:value-of select="musicCollection/information/data/numberOfFunkSongs" /> <xsl:text>&#xA;</xsl:text>
        <xsl:text>Highest price:</xsl:text> <xsl:value-of select="musicCollection/information/data/highestPrice" /> <xsl:text>&#xA;</xsl:text>
        <xsl:text>Lowest price:</xsl:text> <xsl:value-of select="musicCollection/information/data/lowestPrice" /> <xsl:text>&#xA;</xsl:text>

    </xsl:template>
    <xsl:template name="Catalog" match="musicCollection">
        <xsl:text>Music collection: </xsl:text><xsl:text>&#xA;</xsl:text>
        <xsl:text>TITLE                                   ARTIST                RELEASED                      GENRE               PRICE  </xsl:text>
        <xsl:text>&#xA;</xsl:text>
        <xsl:text>__________________________________________________________________________________________________________________________________</xsl:text>
        <xsl:text>&#xA;</xsl:text>
        <xsl:for-each select="cd">
            <xsl:value-of select="concat(title,substring('                                   ',1,40-string-length(title)), artistInfo, substring('                      ',1,22-string-length(artistInfo)), released,substring('                        ',1,30-string-length(released)) , genreInfo, substring('                     ',1,20-string-length(genreInfo)), price, substring('          ',1,10-string-length(price)))"/>
            <xsl:text>&#xA;</xsl:text>
            <xsl:text>------------------------------------------------------------------------------------------------------------------------------</xsl:text>
            <xsl:text>&#xA;</xsl:text>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
