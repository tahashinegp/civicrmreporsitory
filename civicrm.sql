SELECT i2.id AS contactid,AT.label AS STATUS,i2.contact_type,
i2.display_name,i2.organization_name FROM civicrm_contact  i2 INNER JOIN (
SELECT i3.id,i3.activity_id,i3.contact_id,IJ2.optionid,IJ2.label FROM civicrm_activity_contact i3 INNER JOIN (
SELECT ca.id AS activityid,IJ1.optionvalueid AS optionid,IJ1.label FROM civicrm_activity ca INNER JOIN (
SELECT cov.id AS optionvalueid,cov.label FROM civicrm_option_value cov WHERE cov.label='ongoing') IJ1 ON ca.status_id=IJ1.optionvalueid
)IJ2 ON IJ2.optionid=i3.activity_id )AT ON AT.contact_id=i2.id