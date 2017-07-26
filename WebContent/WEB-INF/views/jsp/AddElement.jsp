<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="resources/css/styles.css">
<title>Insert title here</title>
</head>
<script type="text/javascript">

	function validateForm()
	{
	var id=document.forms["addForm"]["ID"].value;
	var sourceInventory=document.forms["addForm"]["SourceInventory"].value;
	var interfaceName=document.forms["addForm"]["InterfaceName"].value;
	var description=document.forms["addForm"]["Description"].value;
	var interfaceGroup=document.forms["addForm"]["Interface_group"].value;
	var businessFunction=document.forms["addForm"]["BusinessFunction"].value;
	var businessProcess=document.forms["addForm"]["BusinessProcess"].value;
	var segment=document.forms["addForm"]["Segment"].value;
	var LOB=document.forms["addForm"]["LOB"].value;
	var entities=document.forms["addForm"]["EntitiesorinformationExchange"].value;
	var connectionMethod=document.forms["addForm"]["ConnectionMethod"].value;
	var transport=document.forms["addForm"]["Transport"].value;
	var connectionFrequency=document.forms["addForm"]["ConnectionFrequency(Trans_Type)"].value;
	var dataFormat=document.forms["addForm"]["DataFormat"].value;
	var providerTechnology=document.forms["addForm"]["Provider_Technology"].value;
	var scoper1=document.forms["addForm"]["scope_r1"].value;
	var r1disposition=document.forms["addForm"]["R1_Disposition"].value;
	var scoper2=document.forms["addForm"]["scope_r2"].value;
	var r2disposition=document.forms["addForm"]["R2_Disposition"].value;
	var asynch_synch=document.forms["addForm"]["Asynch_Synch"].value;
	var service_provider=document.forms["addForm"]["Service_Provider"].value;
	var pattern=document.forms["addForm"]["Pattern"].value;
	var interfaceComplexity=document.forms["addForm"]["Complexity"].value;
	var providerAdapterDetail=document.forms["addForm"]["ProviderDetail"].value;
	var steelThread=document.forms["addForm"]["Steel_Thread"].value;
	var lastModificationOn=document.forms["addForm"]["LastModificationOn"].value;
	var modifiedComment=document.forms["addForm"]["ModifiedComment"].value;
	if (id==null || id=="" )
	  {
	  alert("Please provide id");
	  return false;
	  }
	if(!id.match(/^\d+/))
    {
    alert("Please enter only numeric characters  for your Id! (Allowed input:0-9)");
    }

	
	if (sourceInventory==null || sourceInventory=="")
	  {
	  alert("Please provide sourceInventory");
	  return false;
	  }
	if (interfaceName==null || interfaceName=="")
	  {
	  alert("Please provide interfaceName");
	  return false;
	  }
	if (description==null || description=="")
	  {
	  alert("Please provide description");
	  return false;
	  }
	if (interfaceGroup==null || interfaceGroup=="")
	  {
	  alert("Please confirm interfaceGroup");
	  return false;	
	  }
	if (businessFunction==null || businessFunction=="")
	  {
	  alert("Please provide businessFunction");
	  return false;
	  }
	if (businessProcess==null || businessProcess=="")
	  {
	  alert("Please provide businessProcess");
	  return false;
	  }
	if (segment==null || segment=="")
	  {
	  alert("Please provide segment");
	  return false;
	  }
	if (LOB==null || LOB=="")
	  {
	  alert("Please provide LOB");
	  return false;
	  }
	if (entities==null || entities=="")
	  {
	  alert("Please provide entities");
	  return false;
	  }
	if (connectionMethod==null || connectionMethod=="")
	  {
	  alert("Please provide connectionMethod");
	  return false;
	  }
	if (transport==null || transport=="")
	  {
	  alert("Please provide transport");
	  return false;
	  }
	if (connectionFrequency==null || connectionFrequency=="")
	  {
	  alert("Please provide connectionFrequency");
	  return false;
	  }
	if (dataFormat==null || dataFormat=="")
	  {
	  alert("Please provide dataFormat");
	  return false;
	  }
	if (providerTechnology==null || providerTechnology=="")
	  {
	  alert("Please provide providerTechnology");
	  return false;
	  }
	if (r1disposition==null || r1disposition=="")
	  {
	  alert("Please provide r1disposition");
	  return false;
	  }
	if (r2disposition==null || r2disposition=="")
	  {
	  alert("Please provide r2disposition");
	  return false;
	  }
	if (asynch_synch==null || asynch_synch=="")
	  {
	  alert("Please provide asynch_synch");
	  return false;
	  }
	if (service_provider==null || service_provider=="")
	  {
	  alert("Please provide service_provider");
	  return false;
	  }
	if (pattern==null || pattern=="")
	  {
	  alert("Please provide pattern");
	  return false;
	  }
	if (interfaceComplexity==null || interfaceComplexity=="")
	  {
	  alert("Please provide interfaceComplexity");
	  return false;
	  }
	if (providerAdapterDetail==null || providerAdapterDetail=="")
	  {
	  alert("Please provide providerAdapterDetail");
	  return false;
	  }
	if (steelThread==null || steelThread=="")
	  {
	  alert("Please provide steelThread");
	  return false;
	  }
	if (lastModificationOn==null || lastModificationOn=="")
	  {
	  alert("Please provide lastModificationOn");
	  return false;
	  }
	if (modifiedComment==null || modifiedComment=="")
	  {
	  alert("Please provide modifiedComment");
	  return false;
	  }
	
	
	
}
	
</script>

<body style="background-image: url('resources/images_wel.jpg');">
<form method="get" action="AddEl" name="addForm" onsubmit="return validateForm()">
            <center>
            <table border="1" width="90%" cellpadding="3">
                <thead>
                    <tr>
                        <th colspan="4"><b>Add New Service</b></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
				<td><b>ID:</b></td>
				<td><input type='text' name='ID'></td>
			</tr>
			<tr>
				<td><b>Source Inventory:</b></td>
				<td><input type="text" name='SourceInventory' /></td>
			</tr>
			<tr>
				<td><b>Interface Name:</b></td>
				<td><input type="text" name='InterfaceName' /></td>
			</tr>
			<tr>
				<td><b>Description:</b></td>
				<td><input type="text" name='Description' /></td>
			</tr>
			<tr>
				<td><b>Interface Group/Category:</b></td>
				<td><input type="text" name='Interface_group' /></td>
			</tr>
			<tr>
				<td><b>Business Function:</b></td>
				<td><input type="text" name='BusinessFunction' /></td>
			</tr>
			<tr>
				<td><b>Business Process:</b></td>
				<td><input type="text" name='BusinessProcess' /></td>
			</tr>
			<tr>
				<td><b>Segment:</b></td>
				<td><input type="text" name='Segment' /></td>
			</tr>
			<tr>
				<td><b>LOB:</b></td>
				<td><input type="text" name='LOB' /></td>
			</tr>
			<tr>
				<td><b>Entities or information Exchange:</b></td>
				<td><input type="text" name='EntitiesorinformationExchange' /></td>
			</tr>
			<tr>
				<td><b>Connection Method:</b></td>
				<td><input type="text" name='ConnectionMethod' /></td>
			</tr>
			<tr>
				<td><b>Transport:</b></td>
				<td><input type="text" name='Transport' /></td>
			</tr>
			<tr>
				<td><b>Connection Frequency(Trans Type):</b></td>
				<td><input type="text" name='ConnectionFrequency(Trans_Type)'/></td>
			</tr>
			<tr>
				<td><b>Data Format:</b></td>
				<td><input type="text" name='DataFormat' /></td>
			</tr>
			<tr>
				<td><b>Provider Technology:</b></td>
				<td><input type="text" name='Provider_Technology' /></td>
			</tr>
			<tr>
				<td><b>In Scope for R1:</b></td>
				<td><select id="scope_r1">
     <option value="true">true</option>
     <option value="false">false</option>
    </select></td>
			</tr>
		<tr>
				<td><b>R1 Disposition:</b></td>
				<td><input type="text" name='R1_Disposition' /></td>
			</tr>
			<tr>
				<td><b>In Scope for R2:</b></td>
				<td><select name="category" id="scope_r2">
     <option>true</option>
     <option>false</option>
    </select></td>
    </tr>
    <tr>
				<td><b>R2 Disposition:</b></td>
				<td><input type="text" name='R2_Disposition' /></td>
			</tr>
			
			<tr>
				<td><b>Asynch/Synch:</b></td>
				<td><input type="text" name='Asynch_Synch' /></td>
			</tr>
			<tr>
				<td><b>Service Provider:</b></td>
				<td><input type="text" name='Service_Provider' /></td>
			</tr>
			
				<tr>
				<td><b>Pattern:</b></td>
				<td><input type="text" name='Pattern' /></td>
			</tr>
			
				<tr>
				<td><b>Interface_Complexity:</b></td>
				<td><input type="text" name='Complexity' /></td>
			</tr>
			<tr>
				<td><b>Provider Adapter Details:</b></td>
				<td><input type="text" name='ProviderDetail' /></td>
			</tr>
			<tr>
				<td><b>Steel Thread:</b></td>
				<td><input type="text" name='Steel_Thread' /></td>
			</tr>
			
			<tr>
				<td><b>Modified Comment:</b></td>
				<td><input type="text" name='ModifiedComment' /></td>
			</tr>
                </tbody>
            </table>
            </center>
             <button>submit</button>
        </form>
</body>
</html>