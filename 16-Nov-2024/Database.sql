Database :
	Database can store data and SQL statements inside it.
	Database have defined structure like tables, Store Procedures, Views etc.
	Database name can not be duplicate in the same server.
	Space is not allowed in DB name.
	Starting with special char is not allowed.
	We can use underscore (_) instead of space if required.
		Ex : SchoolDB -> School_DB			

	Database name : database_Name_DB

	-- Syntax :
		-- Create new Database
		create database database_name

		-- Delete existing DB
		Drop database database_name

		-- Rename database
		exec sp_rename 'old_DB_name','new_DB_name','database'

	-- Example :
		Create database Student_DB

		-- Delete existing DB
		drop database Student_DB

		-- Rename Database from "Student_DB" to "Students_DB"
		exec sp_rename 'Student_DB','Students_DB','database'