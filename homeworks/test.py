# Create a sample collection
users = {'Hans': 'active', 'Éléonore': 'inactive', '景太郎': 'active'}

# Strategy:  Iterate over a copy
active_users = {}
for user, status in users.items():
    if status == 'active':
        active_users[user] = status

print(active_users)