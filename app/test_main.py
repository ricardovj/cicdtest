import pytest

try:
  from app.main import add, app, hello
except ModuleNotFoundError:
  from main import add, app, hello

def test_add_positive():
  assert add(2, 3) == 5

def test_add_negative():
  assert add(-1, -1) == -2

def test_flask_hello():
  with app.test_request_context("/"):
    resp = hello()
  data = resp.get_json()
  assert data["message"].startswith("Hello")
