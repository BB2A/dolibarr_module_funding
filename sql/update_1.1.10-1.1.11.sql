--
-- Script run to make a migration of module version 1.1.10 to module version 1.1.11
--
-- Acompte versé par le client : déduit de l'assiette du financement.
ALTER TABLE llx_funding_funding ADD COLUMN amount_deposit double DEFAULT NULL AFTER amount_maint;
