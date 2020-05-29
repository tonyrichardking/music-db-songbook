<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<body>
				<xsl:apply-templates select="//song[title='In The Midnight Hour']"/>
				<xsl:apply-templates select="//song[title='Good Times']"/>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
