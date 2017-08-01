<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="modifydata">

            <center>
            <table border="1" width="90%" cellpadding="3">
                <thead>
                    <tr>
                        <th colspan="4"><b>Update the Service</b></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
				<td><b>ID:</b></td>
				<td>${Service['id']}</td>
				<input type="hidden" name='ID' value="${Service['id']}" />
			</tr>
			<tr>
				<td><b>Source Inventory:</b></td>
				<td><input type="text" name='SourceInventory' value="${Service['source_inventory']}" /></td>
			</tr>
			<tr>
				<td><b>Interface Name:</b></td>
				<td><input type="text" name='InterfaceName' value="${Service['interfacename']}"/></td>
			</tr>
			<tr>
				<td><b>Description:</b></td>
				<td><input type="text" name='Description' value="${Service['description']}"/></td>
			</tr>
			<tr>
				<td><b>Interface Group/Category:</b></td>
				<td><input type="text" name='Interface_group' value="${Service['interface_category']}"/></td>
			</tr>
			<tr>
				<td><b>Business Function:</b></td>
				<td><input type="text" name='BusinessFunction' value="${Service['business_function']}"/></td>
			</tr>
			<tr>
				<td><b>Business Process:</b></td>
				<td><input type="text" name='BusinessProcess' value="${Service['business_process']}"/></td>
			</tr>
			<tr>
				<td><b>Segment:</b></td>
				<td><input type="text" name='Segment' value="${Service['segment']}"/></td>
			</tr>
			<tr>
				<td><b>LOB:</b></td>
				<td><input type="text" name='LOB' value="${Service['lob']}"/></td>
			</tr>
			<tr>
				<td><b>Entities or information Exchange:</b></td>
				<td><input type="text" name='EntitiesorinformationExchange' value="${Service['entities_exchange']}"/></td>
			</tr>
			<tr>
				<td><b>Connection Method:</b></td>
				<td><input type="text" name='ConnectionMethod' value="${Service['connection_method']}"/></td>
			</tr>
			<tr>
				<td><b>Transport:</b></td>
				<td><input type="text" name='Transport' value="${Service['transport']}"/></td>
			</tr>
			<tr>
				<td><b>Connection Frequency(Trans Type):</b></td>
				<td><input type="text" name='ConnectionFrequency(Trans_Type)' value="${Service['connection_frequency']}"/></td>
			</tr>
			<tr>
				<td><b>Data Format:</b></td>
				<td><input type="text" name='DataFormat' value="${Service['data_format']}"/></td>
			</tr>
			<tr>
				<td><b>Provider Technology:</b></td>
				<td><input type="text" name='Provider_Technology' value="${Service['provider_technology']}"/></td>
			</tr>
			<tr>
				<td><b>In Scope for R1:</b></td>
				<td><input type="text" name='scope_r1' value="${Service['scope_r1']}"/></td>
			</tr>
		<tr>
				<td><b>R1 Disposition:</b></td>
				<td><input type="text" name='R1_Disposition' value="${Service['r1_disposition']}"/></td>
			</tr>
			<tr>
				<td><b>In Scope for R2:</b></td>
				<td><input type="text" name='scope_r2' value="${Service['scope_r2']}"/></td>
    </tr>
    <tr>
				<td><b>R2 Disposition:</b></td>
				<td><input type="text" name='R2_Disposition' value="${Service['r2_disposition']}"/></td>
			</tr>
			
			<tr>
				<td><b>Asynch/Synch:</b></td>
				<td><input type="text" name='Asynch_Synch' value="${Service['asynch_synch']}"/></td>
			</tr>
			<tr>
				<td><b>Service Provider:</b></td>
				<td><input type="text" name='Service_Provider' value="${Service['service_provider']}"/></td>
			</tr>
			
				<tr>
				<td><b>Pattern:</b></td>
				<td><input type="text" name='Pattern' value="${Service['pattern']}"/></td>
			</tr>
			
				<tr>
				<td><b>Interface_Complexity:</b></td>
				<td><input type="text" name='Complexity' value="${Service['interface_complexity']}"/></td>
			</tr>
			<tr>
				<td><b>Provider Adapter Details:</b></td>
				<td><input type="text" name='ProviderDetail' value="${Service['provider_detail']}"/></td>
			</tr>
			<tr>
				<td><b>Steel Thread:</b></td>
				<td><input type="text" name='Steel_Thread' value="${Service['steel_thread']}"/></td>
			</tr>
			
			
			<tr>
				<td><b>Modified Comment:</b></td>
				<td><input type="text" name='ModifiedComment' value="${Service['modified_comment']}"/></td>
			</tr>
                </tbody>
            </table>
            </center>
             <button>submit</button>
        </form>
</body>
</html>