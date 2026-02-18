from app.main import add

def test_add():
    assert add(1, 2) == 3

def test_add_float():
    assert add(1.5, 2.5) == 4.0
