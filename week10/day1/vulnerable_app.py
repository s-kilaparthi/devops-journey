import os
import sqlite3

# BAD: Hardcoded password
password = "admin123"
api_key = "secret-api-key-12345"

# BAD: SQL Injection vulnerability
def get_user(username):
    conn = sqlite3.connect('users.db')
    cursor = conn.cursor()
    # Never do this! SQL injection!
    query = "SELECT * FROM users WHERE username = '" + username + "'"
    cursor.execute(query)
    return cursor.fetchall()

# BAD: Using os.system (command injection risk)
def run_command(cmd):
    os.system(cmd)

# BAD: Weak random number
import random
def generate_token():
    return random.randint(1000, 9999)

print("App running...")
