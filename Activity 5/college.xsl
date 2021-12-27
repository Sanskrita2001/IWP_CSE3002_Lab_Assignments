<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="college">
<html>
<body>
  <h3 style="text-align: center">Student Information</h3>
  <table border="1">
    <tr bgcolor="#EE9480" style="color: black">
      <th style="text-align:center">Registration Number</th>
      <th style="text-align:center">Name</th>
      <th style="text-align:center">College</th>
      <th style="text-align:center">Branch</th>
      <th style="text-align:center">Course</th>
      <th style="text-align:center">Year of Joining</th>
      <th style="text-align:center">Email</th>
      <th style="text-align:center">CGPA</th>
      <th style="text-align:center">Number of courses registered</th>
      <th style="text-align:center">Number of credits earned</th>
    </tr>
    <xsl:for-each select="information/student[cgpa &lt; 8.5] [cgpa &gt; 7.5]">
    <xsl:sort select="cgpa" order="descending" data-type="number"/>
    <tr>
      <td><xsl:value-of select="regno"/></td>
      <td><xsl:value-of select="name"/></td>
      <td><xsl:value-of select="college"/></td>
      <td><xsl:value-of select="branch"/></td>
      <td><xsl:value-of select="course"/></td>
      <td><xsl:value-of select="year"/></td>
      <td><xsl:value-of select="email"/></td>
      <td><xsl:value-of select="cgpa"/></td>
      <td><xsl:value-of select="coursesreg"/></td>
      <td><xsl:value-of select="creditsearned"/></td>
    </tr>
    </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>