$(function () {
	console.log("index.js loaded ...");
})


const asdf = 'Salad'

function getTeachers() {
	$.ajax({
		url: 'http://127.0.0.1:3000/teachers',
		method: 'get',
		dataType: 'json'
	}).done(function (response) {

		console.log("response: ", response);

		// loop through the response array
		// create an instance of Teacher
		// call custom function to create html for that Teacher instance

		let myTeacher = new Teacher(response[0])
		let myTeacherHTML = myTeacher.teacherHTML()
		$('div#ajax-teachers-list').html(myTeacherHTML)
		// debugger;
	})
}
// 0: {id: 1, name: "Yoda", user_id: 1, user: {…}, teachings: Array(0)}
class Teacher {
	constructor(obj) {
		this.id = obj.id
		this.name = obj.name
		this.user_id = obj.user_id
		this.user = obj.user
		this.teachings = obj.teachings
	}
}

Teacher.prototype.teacherHTML = function () {
	return (`
		<div>${this.name}</div>
	`)
}

Teacher.prototype.newTeachingForm = function () {
	return (`
		<form>new teacher form</form>
	`)
}

function showNewTeachingForm() {
	$.ajax({
		url: 'http://127.0.0.1:3000/teachings/new',
		method: 'get',
		dataType: 'html'
	}).done(function (response) {

		console.log("response: ", response);

		debugger
	})
}

// function createTeaching() {
// 	$.ajax({
// 		url: 'http://127.0.0.1:3000/teachings',
// 		method: 'post',
// 		dataType: 'json'
// 	}).done(function (response) {
// 	})
// }


