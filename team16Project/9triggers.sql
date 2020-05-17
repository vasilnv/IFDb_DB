CREATE TRIGGER comments_add_time
ON Comments
AFTER INSERT, UPDATE
AS 
	UPDATE Comments
	SET time = GETDATE()
	WHERE ID IN (SELECT ID FROM inserted)

