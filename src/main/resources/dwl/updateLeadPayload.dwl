%dw 2.0
output application/java
---
[{
	Id : vars.leadId,
	FirstName : vars.originalPayload.firstName,
	LastName : vars.originalPayload.lastName,
	Email : vars.originalPayload.email,
	Phone : vars.originalPayload.phone,
	Company: vars.originalPayload.companyName,
	Ex_Cust_Id__c : vars.customerId	
}]