var Validator = require('jsonschema').Validator;
var v = new Validator();

var guestSchema = {
    "id": "/guest",
    "type": "object",
    "properties": {
        "eid": {"type": "integer"},
        "pid": {"type": "integer"},
        "attended": {"type": "bolean"},
        "registered": {"type": "bolean"},
        "approved": {"type": "bolean"}
    },
};

var Validator = require('jsonschema').Validator;
var v = new Validator();

var eventSchema = {
    "id": "/event",
    "type": "object",
    "properties": {
        "name": {"type": "string"},
        "description": {"type": "string"},
        "type": {"type": "string"},
        "venue": {"type": "string"},
        "city": {"type": "string"},
        "country": {"type": "integer"},
        "start_date": {"type": "string"},
        "end_date": {"type": "string"}
    },
};

   	var returnValidation = v.validate(obj, eventSchema);
    if (returnValidation.errors.length === 0){	
	    var q = conn.query(sql, [obj.name, obj.description, obj.type, obj.venue, obj.city, obj.country, obj.start_date, obj.end_date, eid], function(error, result){
	        res.json({ eid: eid });
	    });
	}
    else {
        var returnArray = [];
        var errors = returnValidation.errors;
        errors.forEach(function(error){
        	returnArray.push(error["stack"]);
        })
        res.send(returnArray);
    }

    var personSchema = {
    "id": "/event",
    "type": "object",
    "properties": {
        "first_name": {"type": "string"},
        "last_name": {"type": "string"},
        "email": {"type": "string"},
        "company": {"type": "string"},
        "sfdc_id": {"type": "integer"},
        "job_title": {"type": "string"},
        "role_level": {"type": "string"},
        "bu": {"type": "string"},
        "url": {"type": "string"},
        "revenue_tier": {"type": "string"}
    },
};
v.addSchema(personSchema, '/event');
