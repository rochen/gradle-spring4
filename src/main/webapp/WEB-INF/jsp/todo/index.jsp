<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en" data-framework="backbonejs">
	<head>
		<meta charset="utf-8">
		<title>Backbone.js • TodoMVC</title>
		<link rel="stylesheet" href="bower_components/todomvc-common/base.css">
	</head>
	<body>
		<section id="todoapp">
			<header id="header">
				<h1>todos</h1>
				<input id="new-todo" placeholder="What needs to be done?" autofocus>
			</header>
			<section id="main">
				<input id="toggle-all" type="checkbox">
				<label for="toggle-all">Mark all as complete</label>
				<ul id="todo-list"></ul>
			</section>
			<footer id="footer"></footer>
		</section>
		<footer id="info">
			<p>Double-click to edit a todo</p>
			<p>Written by <a href="https://github.com/rochen">Aru Chen</a></p>
			<p>Part of <a href="http://todomvc.com">TodoMVC</a></p>
		</footer>
		<script type="text/template" id="item-template">
			<div class="view">
				<input class="toggle" type="checkbox" {{#completed}}checked{{/completed}} >
				<label>{{ title }}</label>
				<button class="destroy"></button>
			</div>
			<input class="edit" value="{{ title }}">
		</script>
		<script type="text/template" id="stats-template">
			<span id="todo-count"><strong>{{ remaining }}</strong> item{{#compare remaining ">" 1}}s{{/compare}} left</span>
			<ul id="filters">
				<li>
					<a class="selected" href="#/">All</a>
				</li>
				<li>
					<a href="#/active">Active</a>
				</li>
				<li>
					<a href="#/completed">Completed</a>
				</li>
			</ul>
			
			{{#if completed}}
			<button id="clear-completed">Clear completed ({{ completed }})</button>
			{{/if}}
		</script>

		
		<script src="bower_components/jquery/dist/jquery.js"></script>
		<script src="bower_components/underscore/underscore.js"></script>
		<script src="bower_components/backbone/backbone.js"></script>
		<script src="bower_components/handlebars/handlebars.js"></script>
		<script src="js/utils/handlebars-helpers.js"></script>
		<script src="js/models/todo.js"></script>
		<script src="js/collections/todos.js"></script>
		<script src="js/views/todo-view.js"></script>
		<script src="js/views/app-view.js"></script>
		<script src="js/routers/router.js"></script>
		<script src="js/app.js"></script>
	</body>
</html>
