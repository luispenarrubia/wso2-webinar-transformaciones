<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:chkry="http://www.chakray.com/webinar/users" version="2.0">
   <xsl:output method="xml" omit-xml-declaration="yes" encoding="UTF-8" indent="yes"/>
   <xsl:template match="/">
      <xsl:variable name="current" select="current-dateTime()" />
      <chkry:users_create>
		<chkry:id>
		   <xsl:value-of select="/jsonObject/id/text()" />
		</chkry:id>
		<chkry:firstName>
		   <xsl:value-of select="/jsonObject/name/text()" />
		</chkry:firstName>
		<chkry:lastName>
		   <xsl:value-of select="/jsonObject/surname/text()" />
		</chkry:lastName>
		<xsl:variable name="titleValue" select="/jsonObject/title" />
		<xsl:choose>
			<xsl:when test="$titleValue = 'Director'">
			   <chkry:title>01</chkry:title>
			</xsl:when>
			<xsl:when test="$titleValue = 'Manager'">
			   <chkry:title>02</chkry:title>
			</xsl:when>	
			<xsl:when test="$titleValue = 'Architect'">
			   <chkry:title>03</chkry:title>
			</xsl:when>				
			<xsl:otherwise>
			   <chkry:title>99</chkry:title>
			</xsl:otherwise>
		</xsl:choose>
		<chkry:date>
		   <xsl:value-of select="$current" />
		</chkry:date>
	</chkry:users_create>			
   </xsl:template>
</xsl:stylesheet>