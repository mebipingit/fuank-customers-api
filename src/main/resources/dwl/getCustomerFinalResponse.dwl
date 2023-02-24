%dw 2.0
output application/json

var sfdcResponse = payload[0].payload[0]
var DbResponse = payload[1].payload
---

{
    customerId : sfdcResponse.Ex_Cust_Id__c,
    firstName : sfdcResponse.FirstName,  
    lastName : sfdcResponse.LastName,
    companyName : sfdcResponse.Company,
    phone : sfdcResponse.Phone,
    email : sfdcResponse.Email,
    (DbResponse.&addresses)
}