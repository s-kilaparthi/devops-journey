import os
import sqlite3
import secrets  # ← secure random!
import subprocess

# GOOD: Use environment variables instead!
password = os.getenv("APP_PASSWORD")
api_key = os.getenv("API_KEY")

# GOOD: Parameterized query (no SQL injection!)
def get_user(username):
    conn = sqlite3.connect('users.db')
    cursor = conn.cursor()
    # Safe! Parameters handled separately
    query = "SELECT * FROM users WHERE username = ?"
    cursor.execute(query, (username,))
    return cursor.fetchall()

# GOOD: Use subprocess with list (no shell injection!)
def run_command(cmd):
    subprocess.run(["ls", cmd], shell=False)

# GOOD: Cryptographically secure random!
def generate_token():
    return secrets.token_hex(16)

print("Secure app running...")
