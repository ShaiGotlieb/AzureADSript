Assignment : Use PowerShell to develop a script that does the following:

•	Creates 20 Azure Active Directory User accounts with the name of “Test User Counter”.
  
•	Creates an Azure Active Directory Security group with the name of “Varonis Assignment2 Group”.

•	Adds each of the user accounts created in the previous step to the “Varonis Assignment2 Group”, the accounts should be added 	    separately, and not as a bulk.
All the users must be added successfully at the end of the script execution and errors should be handled efficiently. – what if a user is already exist 
  
•	The script should generate a customized log that includes the following details for each attempt to add the user account to the security group:

  o	User Name

  o	Timestep of the attempt to add the user to the group.

  o	Result of the attempt (success\failure)

Simulation Video:
https://youtu.be/1i-PWE9I2-I

<!--[if IE]><meta http-equiv="X-UA-Compatible" content="IE=5,IE=9" ><![endif]-->
<!DOCTYPE html>
<html>
<head>
<title>Varonis</title>
<meta charset="utf-8"/>
</head>
<body><div class="mxgraph" style="max-width:100%;border:1px solid transparent;" data-mxgraph="{&quot;highlight&quot;:&quot;#0000ff&quot;,&quot;nav&quot;:true,&quot;resize&quot;:true,&quot;toolbar&quot;:&quot;zoom layers lightbox&quot;,&quot;edit&quot;:&quot;_blank&quot;,&quot;xml&quot;:&quot;&lt;mxfile modified=\&quot;2019-07-02T21:01:10.723Z\&quot; host=\&quot;www.draw.io\&quot; agent=\&quot;Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36\&quot; etag=\&quot;pm14zfndvcXO6cLsf_70\&quot; version=\&quot;10.8.7\&quot; type=\&quot;google\&quot;&gt;&lt;diagram id=\&quot;0vsvZE9D7Ikj8lxg579r\&quot; name=\&quot;Page-1\&quot;&gt;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&lt;/diagram&gt;&lt;/mxfile&gt;&quot;}"></div>
<script type="text/javascript" src="https://www.draw.io/js/viewer.min.js"></script>
</body>
</html>
