const request = require('supertest');
const app = require('../IssueBot');

describe('Server status', function() {
	
	it('responds {"status":"OK"} to /', function (done){
		request(app)
		.get('/')
		.expect('Content-Type',/json/)
		.expect(200,done);

	});
});
