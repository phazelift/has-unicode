{ notString }	= require 'types.js'
MessageEvents	= require 'message-events'


message = new MessageEvents

message.format 'error', (text) ->
	sender	: 'has-unicode'
	type		: 'error'
	text		: text



hasUnicode = (string) ->
	if notString(string) then message.error 'requires a string type argument'
	else for ch, pos in string
		return true if string.charCodeAt(pos) > 127
	return false


hasUnicode.onError = (handler) -> message.on 'error', handler



module.exports = hasUnicode