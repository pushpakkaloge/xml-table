<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <head>
    <title>XSL</title>

    <style>
    table{
        width:90%;
        text-align:center;
        border:1px solid black;
    }

    table th{
        background-color:pink;
    }
    table td{
        
    }
    </style>
    </head>
    <body>
        <table>
            <tr>
                <th>ID</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>city</th>
            </tr>
            <xsl:for-each select="userdata/user">
            <tr>
                <td><xsl:value-of select="@id" /></td>
                <td><xsl:value-of select="fname" /></td>
                <td><xsl:value-of select="lname" /></td>
                <td><xsl:value-of select="city" /></td>
            </tr>
            </xsl:for-each>
            
        </table>
    </body>
    </html>
</xsl:template>

</xsl:stylesheet>
