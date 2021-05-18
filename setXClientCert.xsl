<xsl:stylesheet
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:dp="http://www.datapower.com/extensions"
extension-element-prefixes="dp"
version="1.0">
	<xsl:template match="/">
	
	<xsl:variable name="clientCert">
		<xsl:value-of select="dp:auth-info('ssl-client-cert')"/>
	</xsl:variable>

		<!-- Check if certificate was grabed -->
		<xsl:choose>
			<xsl:when test="not($clientCert = '*No certificate provided*')">
				<dp:set-request-header name="'X-CLIENT-CERTIFICATE'" value="$clientCert"/>
			</xsl:when>
			
			<xsl:otherwise>
				<dp:reject>Authentication credentials were not provided</dp:reject>
			</xsl:otherwise>
		</xsl:choose>

	</xsl:template>
</xsl:stylesheet>
