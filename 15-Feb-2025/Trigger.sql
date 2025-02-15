Trigger :
	Trigger is special type of procedure which execute code on particular event.
	Trigger does not support parameters.
	Tigger can not directly execute like SP. Always we can execute trigger with the table.
	Trigger can be created only for Insert / Upadate or delete.

	-- Syntax :
		For trigger :
			Create trigger tr_Name
			on tbl_name -- Table on which we want to create event
			For Insert / Update / Delete -- Mention event type on which trigger is executed.
			As
			Begin
				SQL statement
			End

		After trigger :
			Create trigger tr_Name
			on tbl_name -- Table on which we want to create event
			After Insert / Update / Delete -- Mention event type on which trigger is executed.
			As
			Begin
				SQL statement
			End