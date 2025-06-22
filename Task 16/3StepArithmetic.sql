
UPDATE SwapTest
SET A = A + B
WHERE ID = 1;

UPDATE SwapTest
SET B = A - B
WHERE ID = 1;

UPDATE SwapTest
SET A = A - B
WHERE ID = 1;
