--
-- Script run to make a migration of module version 1.1.7 to module version 1.1.8
--
ALTER TABLE llx_funding_funding MODIFY COLUMN tms timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;
