ALTER SESSION SET "_ORACLE_SCRIPT"=TRUE;

-- Supprimer les autorisations accordées aux rôles
REVOKE ALL PRIVILEGES ON SCHEMA GLPI_CERGY FROM GLPI_CERGY_ADMIN;
REVOKE ALL PRIVILEGES ON SCHEMA GLPI_CERGY FROM GLPI_CERGY_DEV;
REVOKE ALL PRIVILEGES ON SCHEMA GLPI_CERGY FROM GLPI_CERGY_ANALYST;
REVOKE ALL PRIVILEGES ON SCHEMA GLPI_CERGY FROM GLPI_CERGY_OBSERVER;

-- Supprimer les rôles
DROP ROLE GLPI_CERGY_ADMIN;
DROP ROLE GLPI_CERGY_DEV;
DROP ROLE GLPI_CERGY_ANALYST;
DROP ROLE GLPI_CERGY_OBSERVER;

-- Révoquer les autorisations accordées aux rôles
REVOKE ALL PRIVILEGES ON SCHEMA GLPI_PAU FROM GLPI_PAU_ADMIN;
REVOKE ALL PRIVILEGES ON SCHEMA GLPI_PAU FROM GLPI_PAU_DEV;
REVOKE ALL PRIVILEGES ON SCHEMA GLPI_PAU FROM GLPI_PAU_ANALYST;
REVOKE ALL PRIVILEGES ON SCHEMA GLPI_PAU FROM GLPI_PAU_OBSERVER;

-- Supprimer les rôles
DROP ROLE GLPI_PAU_ADMIN;
DROP ROLE GLPI_PAU_DEV;
DROP ROLE GLPI_PAU_ANALYST;
DROP ROLE GLPI_PAU_OBSERVER;

REVOKE ALL PRIVILEGES  ON SCHEMA GLPI_PAU FROM GLPI_FULL_ADMIN;
REVOKE ALL PRIVILEGES  ON SCHEMA GLPI_CERGY FROM GLPI_FULL_ADMIN;
DROP ROLE GLPI_FULL_ADMIN;


COMMIT;
exit;
