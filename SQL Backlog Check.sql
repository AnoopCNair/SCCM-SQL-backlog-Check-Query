SELECT TOP 1000 *, casted_message_body =
CASE message_type_name WHEN 'X'
THEN CAST(message_body AS NVARCHAR(MAX))
ELSE message_body
END
FROM [CM_CAS].[sys].[transmission_queue] where to_service_name = 'ConfigMgrDRS_SitePR1'