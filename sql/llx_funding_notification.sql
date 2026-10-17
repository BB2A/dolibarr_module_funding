-- Copyright (C) 2026		Anthony Berton			<anthony.berton@bb2a.fr>
--
-- This program is free software; you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation; either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <https://www.gnu.org/licenses/>.

CREATE TABLE llx_funding_notification(
	rowid integer AUTO_INCREMENT PRIMARY KEY NOT NULL,
	entity integer DEFAULT 1 NOT NULL,
	fk_funding integer NOT NULL,
	fk_user_action integer NOT NULL,
	action varchar(128) NOT NULL,
	date_creation datetime,
	processed smallint DEFAULT 0 NOT NULL,
	date_processed datetime
)ENGINE=innodb;

ALTER TABLE llx_funding_notification ADD INDEX idx_funding_notification_fk_funding (fk_funding);
ALTER TABLE llx_funding_notification ADD INDEX idx_funding_notification_processed (processed);
ALTER TABLE llx_funding_notification ADD INDEX idx_funding_notification_date_creation (date_creation);
