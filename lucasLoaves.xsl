<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <link rel="stylesheet" href="lucasLoaves.css"/>
      </head>
      <body>
        <h2>LucasLoaves</h2>
        <table>
          <tr>
            <th>Bread Type</th>
            <th>Price</th>
            <th>Description</th>
            <th>Photo</th>
            <th>Audio</th>
          </tr>
          <xsl:for-each select="lucasLoaves/record">
          <tr>
            <td><xsl:value-of select="breadType"/></td>
            <td><xsl:value-of select="price"/></td>
            <td><xsl:value-of select="description"/></td>
            <td><xsl:value-of select="photo"/></td>
            <td><xsl:value-of select="audio"/></td>
          </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>