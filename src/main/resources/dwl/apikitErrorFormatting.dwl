%dw 2.0
output application/json
var apikitErrorMapping = {
		'APIKIT:BAD_REQUEST': {
			statusCode: '400',
			message: 'Request is malformed. ' ++ (error.description default '')
		},
		'APIKIT:NOT_FOUND': {
			statusCode: '404',
			message: 'Requested resource does not exist. ' ++ (error.description default '')
		},
		'APIKIT:METHOD_NOT_ALLOWED': {
			statusCode: '405',
			message: 'The HTTP method is not defined for the resource. ' ++ (error.description default '')
		},
		'APIKIT:NOT_ACCEPTABLE': {
			statusCode: '406',
			message: 'The response cannot be rendered in the requested format. Please make sure that the Accept header in the request is correct.'
		},
		'APIKIT:UNSUPPORTED_MEDIA_TYPE': {
			statusCode: '415',
			message: 'The resource cannot process requests in the given format. Please make sure that the Content-Type header in the request is correct.'
		},
		'APIKIT:NOT_IMPLEMENTED': {
			statusCode: '501',
			message: 'There is no implementation of the requested resource. Please make sure that you are calling the correct endpoint.'
		}
}

var errorkey = error.errorType.asString default ""
---
{
	statusCode: apikitErrorMapping[errorkey].statusCode,
	message: apikitErrorMapping[errorkey].message
}