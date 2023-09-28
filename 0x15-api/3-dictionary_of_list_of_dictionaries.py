#!/usr/bin/python3
"""Using what we did in the task #0,
    we extend our Python script to export data in the JSON format
"""
import json
import requests


if __name__ == '__main__':
    url_users = 'https://jsonplaceholder.typicode.com/users'
    url_todos = 'https://jsonplaceholder.typicode.com/todos'

    users = requests.get(url_users).json()

    all_employees = {}
    for user in users:
        tasks_list = []
        tasks = requests.get(url_todos, params={'userId': user['id']}).json()
        for task in tasks:
            task_dict = {
                'task': task['title'],
                'completed': task['completed'],
                'username': user['username']
            }
            tasks_list.append(task_dict)
        all_employees[user['id']] = tasks_list

    with open('todo_all_employees.json', mode='w') as file:
        json.dump(all_employees, file)
