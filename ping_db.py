import subprocess

result = subprocess.run(
    [["pg_isready", "-h", "db", "-p", "5432"]],
    capture_output=True,
    text=True,
    timeout=10,
)

if result.returncode == 0:
    print("DB is reachable.")
else:
    print("Ping failed!")