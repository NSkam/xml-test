<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
	<body>
		<h2>Schedule</h2>
			<table border="1" style="border-collapse:collapse;">
				<tr bgcolor="silver">
					<th style="font-family:Times New Roman;"><b>Title</b></th>
					<th style="font-family:Times New Roman;"><b>Professor</b></th>
					<th style="font-family:Times New Roman;"><b>Day</b></th>
				</tr>
				<xsl:for-each select="Schedule/Lesson/Lecture">
					<xsl:sort select="Day='Friday'"/>
					<xsl:sort select="Day='Thursday'"/>
					<xsl:sort select="Day='Wednesday'"/>
					<xsl:sort select="Day='Tuesday'"/>
					<xsl:sort select="Day='Monday'"/>
					<xsl:if test="Day='Monday'">
						<tr bgcolor="red">
							<td style="font-family:Times New Roman;"><xsl:value-of select="preceding-sibling::Title"/></td>
							<td style="font-family:Times New Roman;"><xsl:value-of select="following-sibling::Professor"/></td>
							<td style="font-family:Times New Roman;"><xsl:value-of select="Day"/></td>
						</tr>
					</xsl:if>
					<xsl:if test="Day='Tuesday'">
						<tr bgcolor="green">
							<td style="font-family:Times New Roman;"><xsl:value-of select="preceding-sibling::Title"/></td>
							<td style="font-family:Times New Roman;"><xsl:value-of select="following-sibling::Professor"/></td>
							<td style="font-family:Times New Roman;"><xsl:value-of select="Day"/></td>
						</tr>
					</xsl:if>
					<xsl:if test="Day='Wednesday'">
						<tr bgcolor="blue">
							<td style="font-family:Times New Roman;"><xsl:value-of select="preceding-sibling::Title"/></td>
							<td style="font-family:Times New Roman;"><xsl:value-of select="following-sibling::Professor"/></td>
							<td style="font-family:Times New Roman;"><xsl:value-of select="Day"/></td>
						</tr>
					</xsl:if>
					<xsl:if test="Day='Thursday'">
						<tr bgcolor="gold">
							<td style="font-family:Times New Roman;"><xsl:value-of select="preceding-sibling::Title"/></td>
							<td style="font-family:Times New Roman;"><xsl:value-of select="following-sibling::Professor"/></td>
							<td style="font-family:Times New Roman;"><xsl:value-of select="Day"/></td>
						</tr>
					</xsl:if>
					<xsl:if test="Day='Friday'">
						<tr bgcolor="purple">
							<td style="font-family:Times New Roman;"><xsl:value-of select="preceding-sibling::Title"/></td>
							<td style="font-family:Times New Roman;"><xsl:value-of select="following-sibling::Professor"/></td>
							<td style="font-family:Times New Roman;"><xsl:value-of select="Day"/></td>
						</tr>
					</xsl:if>
					<xsl:if test="Day='Saturday'">
						<tr bgcolor="orange">
							<td style="font-family:Times New Roman;"><xsl:value-of select="preceding-sibling::Title"/></td>
							<td style="font-family:Times New Roman;"><xsl:value-of select="following-sibling::Professor"/></td>
							<td style="font-family:Times New Roman;"><xsl:value-of select="Day"/></td>
						</tr>
					</xsl:if>
					<xsl:if test="Day='Sunday'">
						<tr bgcolor="gray">
							<td style="font-family:Times New Roman;"><xsl:value-of select="preceding-sibling::Title"/></td>
							<td style="font-family:Times New Roman;"><xsl:value-of select="following-sibling::Professor"/></td>
							<td style="font-family:Times New Roman;"><xsl:value-of select="Day"/></td>
						</tr>
					</xsl:if>
				</xsl:for-each>
			</table>
		</body>
	</html>
</xsl:template>

</xsl:stylesheet>