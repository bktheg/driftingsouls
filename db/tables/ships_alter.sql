ALTER TABLE ships ADD CONSTRAINT ships_fk_users FOREIGN KEY (owner) REFERENCES users(id);
ALTER TABLE ships ADD CONSTRAINT ships_type_fk FOREIGN KEY (type) REFERENCES ship_types(id);
ALTER TABLE ships ADD CONSTRAINT ships_fk_ship_fleets FOREIGN KEY (fleet) REFERENCES ship_fleets(id);
ALTER TABLE ships ADD CONSTRAINT ships_fk_battles FOREIGN KEY (battle) REFERENCES battles(id);
ALTER TABLE ships ADD CONSTRAINT ships_fk_ship_script_data FOREIGN KEY (scriptData_id) REFERENCES ship_script_data(shipid);
