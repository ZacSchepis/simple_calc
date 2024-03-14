import pytest
import src.calculator.calculator as calc

@pytest.mark.parametrize("a, b, expected", [
    (3, 4, 5), (5, 12, 13), (8, 15, 17)
    ])
def test_hypotoneuse(a, b, expected):
    assert calc.hypotoneuse(a, b) == expected

@pytest.mark.parametrize("n, percent, expected", [
    (100, 10, 10), (30, 10, 3), (50, 5, 2.5)
    ])
def test_percent_of(n, percent, expected):
    assert calc.percent_of(n, percent) == expected


@pytest.mark.parametrize("x, n, expected", [
    (2, 3, 8), (3, 3, 27), (4, 3, 64)
])
def test_x_to_the_n(x, n, expected):
    assert calc.x_to_the_n(x, n) == expected


@pytest.mark.parametrize("n, expected", [
    (1, 1), (2, 4), (20, 400)
])
def test_square_nums(n, expected):
    assert calc.squareNums(n) == expected


@pytest.mark.parametrize("n, expected", [(1, 1), (0, 0), (9, 45)])
def test_triNums(n, expected):
    assert calc.triNums(n) == expected


@pytest.mark.parametrize("n, expected", [(2, 4), (0, 1), (9, 46)])
def test_lazyCaterer(n, expected):
    assert calc.lazyCaterer(n) == expected


@pytest.mark.parametrize("n, expected", [(1, 1), (0, 0), (9, 369)])
def test_magicSquares(n, expected):
    assert calc.magicSquares(n) == expected