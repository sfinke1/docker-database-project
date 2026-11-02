TO START SERVER:

docker compose up

TO VIEW TABLES:

docker exec -it my_project_db psql -U student -d projectdb

\dt
SELECT * FROM users;
SELECT * FROM orders;