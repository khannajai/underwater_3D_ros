import os

app_dir = os.path.dirname(os.path.abspath(__file__))

def get_absolute_path(relative_path):
    return os.path.join(app_dir, relative_path)