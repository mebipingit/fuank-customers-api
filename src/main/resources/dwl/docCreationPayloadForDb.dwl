%dw 2.0
output application/json
---
{
  "id": vars.extCustomerId,
  "customerId": vars.extCustomerId
}
++
vars.originalPayload.&addresses