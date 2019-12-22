<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="goods/item/size" mode="sizing">
    <div class="product-card__sizing-container">
      <xsl:apply-templates select="." mode="sizing-box"/>
    </div>
  </xsl:template>

  <xsl:template match="size/code" mode="sizing-box">
    <div class="product-card__sizing-box">
      <label>
        <xsl:attribute name="for">
          <xsl:value-of select="../../name/@id"/>
          <xsl:text>-</xsl:text>
          <xsl:value-of select="."/>
        </xsl:attribute>
        <input type="radio" name="size" class="radio">
          <xsl:attribute name="id">
            <xsl:value-of select="../../name/@id"/>
            <xsl:text>-</xsl:text>
            <xsl:value-of select="."/>
          </xsl:attribute>
          <xsl:attribute name="value">
            <xsl:value-of select="."/>
          </xsl:attribute>
        </input>
        <span class="radio-button product-card__sizing-button">
          <xsl:value-of select="."/>
        </span>
      </label>
    </div>
  </xsl:template>

  <xsl:template match="size/code[last()]" mode="sizing-box">
    <div class="product-card__sizing-box">
      <label>
        <xsl:attribute name="for">
          <xsl:value-of select="../../name/@id"/>
          <xsl:text>-</xsl:text>
          <xsl:value-of select="."/>
        </xsl:attribute>
        <input type="radio" name="size" class="radio">
          <xsl:attribute name="id">
            <xsl:value-of select="../../name/@id"/>
            <xsl:text>-</xsl:text>
            <xsl:value-of select="."/>
          </xsl:attribute>
          <xsl:attribute name="value">
            <xsl:value-of select="."/>
          </xsl:attribute>
        </input>
        <span class="radio-button product-card__sizing-button product-card__sizing-button_last">
          <xsl:value-of select="."/>
        </span>
      </label>
    </div>
  </xsl:template>


</xsl:stylesheet>