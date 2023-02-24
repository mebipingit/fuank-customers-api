%dw 2.0
output application/json
---
{
  "id": vars.customerId,
  "customerId": vars.customerId
}
++
vars.originalPayload.&addresses