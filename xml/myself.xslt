<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="html" indent="yes"/>

    <xsl:template match="个人简历">
      <html>
        <head>
          <style type="text/css">
            .s1{
              width: 15%;
            }
          </style>
        </head>
        <body>
          <table title="个人简介">
            <tr>
              <td  colspan="2" align="center">个人简介</td>
            </tr>
            <tr>
              <td class="s1">姓名：</td>
              <td><xsl:value-of select="姓名"/></td>
            </tr>
            <tr>
              <td class="s1">年龄：</td>
              <td><xsl:value-of select="年龄"/></td>
            </tr>
            <tr>
              <td class="s1">籍贯：</td>
              <td><xsl:value-of select="籍贯"/></td>
            </tr>
            <tr>
              <td class="s1">学历：</td>
              <td><xsl:value-of select="学历"/></td>
            </tr>
            <tr>
              <td class="s1">院校名称：</td>
              <td><xsl:value-of select="院校名称"/></td>
            </tr>
            <tr>
              <td class="s1">专业：</td>
              <td><xsl:value-of select="专业"/></td>
            </tr>
            <tr>
              <td class="s1">专业水平：</td>
              <td><xsl:value-of select="专业水平"/></td>
            </tr>
            <tr>
              <td class="s1">自我评价：</td>
              <td><xsl:value-of select="自我评价"/></td>
            </tr>
            <tr>
              <td class="s1">联系地址：</td>
              <td><xsl:value-of select="联系地址"/></td>
            </tr>
            <tr>
              <td class="s1">email：</td>
              <td><xsl:value-of select="email"/></td>
            </tr>
          </table>
        </body>
      </html>
    
    </xsl:template>
</xsl:stylesheet>
