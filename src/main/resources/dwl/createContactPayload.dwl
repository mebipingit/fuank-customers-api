%dw 2.0
output application/java
---
[{
	FirstName : payload.firstName,
	LastName : payload.lastName,
	Email : payload.email,
	Phone : payload.phone,
	Company: payload.companyName,
	Ex_Cust_Id__c : vars.extCustomerId	
}]