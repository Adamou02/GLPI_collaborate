-- Inserts pour REF_priority
INSERT INTO GLPI_PAU.REF_priority (priority_id, "priority") VALUES (1, 'Emergency');
INSERT INTO GLPI_PAU.REF_priority (priority_id, "priority") VALUES (2, 'Urgent');
INSERT INTO GLPI_PAU.REF_priority (priority_id, "priority") VALUES (3, 'Normal');
INSERT INTO GLPI_PAU.REF_priority (priority_id, "priority") VALUES (4, 'Low');
INSERT INTO GLPI_PAU.REF_priority (priority_id, "priority") VALUES (5, 'Infos');

-- Inserts pour REF_status
INSERT INTO GLPI_PAU.REF_status (status_id, status) VALUES (1, 'To do');
INSERT INTO GLPI_PAU.REF_status (status_id, status) VALUES (2, 'In Progress');
INSERT INTO GLPI_PAU.REF_status (status_id, status) VALUES (3, 'Done');

-- Inserts pour REF_category
INSERT INTO GLPI_PAU.REF_category (category_id, "category") VALUES (1, 'Software');
INSERT INTO GLPI_PAU.REF_category (category_id, "category") VALUES (2, 'Network');
INSERT INTO GLPI_PAU.REF_category (category_id, "category") VALUES (3, 'Security');

-- Inserts pour REF_type
INSERT INTO GLPI_PAU.REF_type (type_id, "type") VALUES (1, 'Incident');
INSERT INTO GLPI_PAU.REF_type (type_id, "type") VALUES (2, 'Change');

-- Inserts pour REF_role
INSERT INTO GLPI_PAU.REF_role (role_id, "role") VALUES (1, 'Manager');
INSERT INTO GLPI_PAU.REF_role (role_id, "role") VALUES (2, 'Technician');
INSERT INTO GLPI_PAU.REF_role (role_id, "role") VALUES (3, 'Customer');

-- Inserts pour REF_group
INSERT INTO GLPI_PAU.REF_group ("group_id", "group") VALUES (1, 'Development Team');
INSERT INTO GLPI_PAU.REF_group ("group_id", "group") VALUES (2, 'Quality Assurance Team');
INSERT INTO GLPI_PAU.REF_group ("group_id", "group") VALUES (3, 'Sales Department');

-- Inserts pour LOCATIONS
INSERT INTO GLPI_PAU.LOCATIONS (location_id, "location", "site", city) VALUES (1, '', '', 'Pau');

-- Inserts pour HARDWARES
INSERT INTO GLPI_PAU.HARDWARES (hardware_id, "name", "model", brand) VALUES (1, 'Laptop 2','HP 6','HP');
INSERT INTO GLPI_PAU.HARDWARES (hardware_id, "name", "model", brand) VALUES (2, 'Server 2','Cisco 2', 'Cisco');
INSERT INTO GLPI_PAU.HARDWARES (hardware_id, "name", "model", brand) VALUES (3, 'Switch 2','Cisco Switch 1', 'Cisco');

-- Inserts pour USERS
EXECUTE GLPI_PAU.NEW_USER('Customer', 3, 'Password1234???', 'william_de_pau@gmail.com', 'Williams de Pau', 'Emily', '123 Industries', '');
EXECUTE GLPI_PAU.NEW_USER('Technician', 2, 'Password1234???', 'brown_de_pau@gmail.com', 'Brown de Pau', 'Michael', '456 Corporation', '');
EXECUTE GLPI_PAU.NEW_USER('Manager', 2, 'Password1234???', 'jones_de_pau@gmail.com', 'Jones de Pau', 'Jessica', '789 Enterprises', '');
EXECUTE GLPI_PAU.NEW_USER('Technician', 1, 'Password1234???', 'davis_de_pau@gmail.com', 'Davis de Pau', 'Matthew', 'ABC Corp', '');
EXECUTE GLPI_PAU.NEW_USER('Customer', 1, 'Password1234???', 'taylor_de_pau@gmail.com', 'Taylor de Pau', 'Daniel', 'XYZ Ltd', '');

-- Inserts pour RESSOURCES
INSERT INTO GLPI_PAU.RESSOURCES (ressource_id, ressource) VALUES (1, 'H:/TEST/test.txt');
INSERT INTO GLPI_PAU.RESSOURCES (ressource_id, ressource) VALUES (2, 'H:/TEST/ui.g');
INSERT INTO GLPI_PAU.RESSOURCES (ressource_id, ressource) VALUES (3, 'H:/ahah.bis');
INSERT INTO GLPI_PAU.RESSOURCES (ressource_id, ressource) VALUES (4, 'H:/ahfe.bis');
INSERT INTO GLPI_PAU.RESSOURCES (ressource_id, ressource) VALUES (5, 'H:/afefefeh.bis');


-- Inserts pour TICKETS
EXECUTE GLPI_PAU.NEW_TICKET(1, 'Incident', 'Emergency', 'Software', 1, 'Requesting update for Adobe Acrobat Reader.', 'Software Update Request', '', 1, 1);
EXECUTE GLPI_PAU.NEW_TICKET(1, 'Incident', 'Urgent', 'Network', 2, 'Change needed in network configuration for new branch office.', 'Network Configuration Change', '', 1, 1);
EXECUTE GLPI_PAU.NEW_TICKET(2, 'Change', 'Normal', 'Security', 3, 'Requesting security training for new employees.', 'Security Training Request', '', NULL, 2);
EXECUTE GLPI_PAU.NEW_TICKET(2, 'Change', 'Normal', 'Software', 2, 'Unable to access sales report on server.', 'Sales Report Access Issue', '', 2, 3);
EXECUTE GLPI_PAU.NEW_TICKET(1, 'Incident', 'Emergency', 'Software', 1, 'Seeking information regarding product pricing.', 'General Inquiry', '', NULL, NULL);

-- Inserts pour COMMENTS
EXECUTE GLPI_PAU.NEW_COMMENT(1, 1, 2, 'Request Details', 'Please ensure that the latest version of Adobe Acrobat Reader is installed.', 1);
EXECUTE GLPI_PAU.NEW_COMMENT(1, 1, 3, 'Change Request Details', 'The new branch office is located in downtown area.', 2);
EXECUTE GLPI_PAU.NEW_COMMENT(1, 2, 2, 'Training Details', 'The security training should cover basic awareness and best practices.', 1);
EXECUTE GLPI_PAU.NEW_COMMENT(2, 2, 3, 'Access Issue Details', 'Error message indicates permission denied.', 3);
EXECUTE GLPI_PAU.NEW_COMMENT(3, 2, 1, 'Inquiry Details', 'Interested in bulk purchasing options.', 3);

-- Inserts pour TICKET_RESSOURCES 
INSERT INTO GLPI_PAU.TICKET_RESSOURCES (fk_ressource, fk_ticket) VALUES (1, 4); 

-- Inserts pour COMMENT_RESSOURCES
INSERT INTO GLPI_PAU.COMMENT_RESSOURCES (fk_ressource, fk_comment) VALUES (4, 1);
INSERT INTO GLPI_PAU.COMMENT_RESSOURCES (fk_ressource, fk_comment) VALUES (4, 2);

-- Inserts pour OBSERVERS
EXECUTE GLPI_PAU.ADD_REMOVE_OBSERVER_OF_TICKET(2, 1);
EXECUTE GLPI_PAU.ADD_REMOVE_OBSERVER_OF_TICKET(3, 1);
EXECUTE GLPI_PAU.ADD_REMOVE_OBSERVER_OF_TICKET(4, 2);
EXECUTE GLPI_PAU.ADD_REMOVE_OBSERVER_OF_TICKET(5, 2);

-- Inserts pour ASSIGNED_TO
EXECUTE GLPI_PAU.ASSIGN_TICKET_TO_USER(2, 1);
EXECUTE GLPI_PAU.ASSIGN_TICKET_TO_USER(2, 2);
EXECUTE GLPI_PAU.ASSIGN_TICKET_TO_USER(3, 1);
EXECUTE GLPI_PAU.ASSIGN_TICKET_TO_USER(4, 1);
EXECUTE GLPI_PAU.ASSIGN_TICKET_TO_USER(5, 2);

COMMIT;
exit;
