<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<?xml-stylesheet type="text/xsl" href="xml_project.xml"?>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="css_project.css"/>
	<title>Kinds of Guitars</title>
</head>
	<body>
            <table>
			
			<h1>Classic Guitars</h1>
				<tr>
					<th>Model</th>
					<th>Year</th>
					<th>Country</th>
					<th>Image</th>
				</tr>
	
				<xsl:for-each select="//guitar[@type='classic']">
						<tr bgcolor="yellow">
							<td><xsl:value-of select='model' /> </td>
							<td><xsl:value-of select='year'/> </td>
							<td><xsl:value-of select='country'/> </td>
							<td><img src= "{image}" height="250" width="400"/> </td>
						</tr>
				</xsl:for-each>
				
				<h1>Acoustic Guitars</h1>
				
				<tr>
					<th>Model</th>
					<th>Year</th>
					<th>Country</th>
					<th>Image</th>
				</tr>
					
				<xsl:for-each select="//guitar[@type='acoustic']">
						<tr bgcolor="green">
							<td><xsl:value-of select='model' /> </td>
							<td><xsl:value-of select='year'/></td>
							<td><xsl:value-of select='country'/></td>
							<td><img src = "{image}" height="400" width="300"/></td>
						</tr>
				</xsl:for-each>
				
				<h1>Electric Guitars</h1>
				
				<tr>
					<th>Model</th>
					<th>Year</th>
					<th>Country</th>
					<th>Image</th>
				</tr>
					
				<xsl:for-each select="//guitar[@type='electric']">
						<tr bgcolor="pink">
							<td><xsl:value-of select='model' /> </td>
							<td><xsl:value-of select='year'/></td>
							<td><xsl:value-of select='country'/></td>
							<td><img src = "{image}" height="250" width="400"/></td>
						</tr>
				</xsl:for-each>
				
            </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>