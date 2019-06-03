<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:output method="xml" doctype-system="http://www.w3.org/Graphics/SVG/1.1/DTD/svg11-basic.dtd" doctype-public="-//W3C//DTD SVG 1.1 Basic//EN" indent="yes" />
    <xsl:template match="musicCollection">
        <svg version="1.1" width="1000px" height="2000px" style="background-color: #fbeec1"
            xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
            <style type="text/css">
                .graphLink { font: 25px tahoma; fill: #daad86; }
                .graphTitle { font: 30px tahoma; fill: #bc986a; }
                .albumName { font: 18px tahoma; fill: #659dbd; }
                .priceLabel { font: 12px tahoma; fill: #659dbd; }
                .summaryEntry { font: 20px tahoma; fill: #8d8741; }
            </style>

            <xsl:variable name="albumPriceGraphOffsetY" select="300" />
            <xsl:variable name="priceLabelOffsetX" select="25" />
            <xsl:variable name="albumNameLabelOffsetX" select="50" />
            <xsl:variable name="summaryEntryOffsetX" select="50" />
            <xsl:variable name="priceRectOffsetX" select="250" />
            <xsl:variable name="priceRectHeight" select="30" />
            <xsl:variable name="linkOffsetX" select="50" />
            <xsl:variable name="graphTitleOffsetX" select="150" />
            <xsl:variable name="graphTitleOffsetY" select="75" />

            <xsl:variable name="initialPriceGraphColor" select="'#05386b'" />

            <a xlink:href="#albumPriceGraph">
                <text x="{$linkOffsetX}" y="50" class="graphLink">Graph showing price of album</text>
            </a>
            <a xlink:href="#albumGenreGraph">
                <text x="{$linkOffsetX}" y="100" class="graphLink">Report summary</text>
            </a>

            <text x="{$graphTitleOffsetX}" y="{150 + $graphTitleOffsetY}" class="graphTitle" id="albumPriceGraph">Price of the album</text>

            <xsl:for-each select="cd">
                <xsl:variable name="name" select="title" />
                <xsl:variable name="price" select="number(substring(price, 1, 5))" />

                <xsl:variable name="positionX" select="$albumNameLabelOffsetX" />
                <xsl:variable name="positionY" select="$albumPriceGraphOffsetY + ((position() - 1) * 40)" />
                <xsl:variable name="rectPositionX" select="$positionX + $priceRectOffsetX" />
                <xsl:variable name="rectPositionY" select="$positionY - 0.7 * $priceRectHeight" />
                <xsl:variable name="rectWidth" select="$price * 8" />
                <xsl:variable name="priceLabelPositionX" select="$rectPositionX + $rectWidth + $priceLabelOffsetX" />

                <text x="{$positionX}" y="{$positionY}" class="albumName">
                    <xsl:value-of select="$name" />
                </text>

                <rect x="{$rectPositionX}" y="{$rectPositionY}" height="{$priceRectHeight}" width="0" fill="{$initialPriceGraphColor}" stroke="black" stroke-width="1" onclick="changeRectColor(evt)">
                    <animate attributeType="XML" attributeName="width" from="0" to="{$rectWidth}" dur="2s" fill="freeze" />
                </rect>

                <text x="{$priceLabelPositionX}" y="{$positionY}" class="priceLabel">
                    <xsl:value-of select="$price" />
                </text>
            </xsl:for-each>

            <xsl:variable name="albumGenreGraphOffsetY" select="$albumPriceGraphOffsetY + (count(cd) * 40)" />

            <text x="{$graphTitleOffsetX}" y="{$albumGenreGraphOffsetY + $graphTitleOffsetY}" class="graphTitle" id="albumGenreGraph">Summary</text>

            <text x="{$summaryEntryOffsetX}" y="{$albumGenreGraphOffsetY + $graphTitleOffsetY + 50}" class="summaryEntry">
                Number of albums: <xsl:value-of select="information/data/numberOfAlbums" />
            </text>

            <text x="{$summaryEntryOffsetX}" y="{$albumGenreGraphOffsetY + $graphTitleOffsetY + 100}" class="summaryEntry">
                Number of rap albums: <xsl:value-of select="information/data/numberOfRapSongs" />
            </text>

            <text x="{$summaryEntryOffsetX}" y="{$albumGenreGraphOffsetY + $graphTitleOffsetY + 150}" class="summaryEntry">
                Number of pop albums: <xsl:value-of select="information/data/numberOfPopSongs" />
            </text>

            <text x="{$summaryEntryOffsetX}" y="{$albumGenreGraphOffsetY + $graphTitleOffsetY + 200}" class="summaryEntry">
                Number of hiphop albums: <xsl:value-of select="information/data/numberOfHiphopSongs" />
            </text>

            <text x="{$summaryEntryOffsetX}" y="{$albumGenreGraphOffsetY + $graphTitleOffsetY + 250}" class="summaryEntry">
                Number of trap albums: <xsl:value-of select="information/data/numberOfTrapSongs" />
            </text>

            <text x="{$summaryEntryOffsetX}" y="{$albumGenreGraphOffsetY + $graphTitleOffsetY + 300}" class="summaryEntry">
                Number of swing albums: <xsl:value-of select="information/data/numberOfSwingSongs" />
            </text>

            <text x="{$summaryEntryOffsetX}" y="{$albumGenreGraphOffsetY + $graphTitleOffsetY + 350}" class="summaryEntry">
                Number of jazz albums: <xsl:value-of select="information/data/numberOfJazzSongs" />
            </text>

            <text x="{$summaryEntryOffsetX}" y="{$albumGenreGraphOffsetY + $graphTitleOffsetY + 400}" class="summaryEntry">
                Number of funk albums: <xsl:value-of select="information/data/numberOfFunkSongs" />
            </text>

            <script type="text/ecmascript">
                <![CDATA[
                    function changeRectColor(evt) {
                        var supportedFillValues = ['#05386b', '#379683', '#5cdb95', '#8ee4af', '#edf5e1'];

                        var rect = evt.target;
                        var fillAttribute = "fill";
                        var currentFill = rect.getAttribute(fillAttribute);

                        var currentFillIndex = supportedFillValues.indexOf(currentFill);
                        var nextFillIndex = currentFillIndex + 1;

                        if (nextFillIndex > supportedFillValues.length - 1) {
                            nextFillIndex = 0;
                        }

                        rect.setAttribute(fillAttribute, supportedFillValues[nextFillIndex]);
                    }
                ]]>
            </script>
        </svg>
    </xsl:template>
</xsl:stylesheet>
