-- Unit Upgrades Changes
UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_INFANTRY' 			WHERE Unit = 'UNIT_ENGLISH_REDCOAT';
UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_INFANTRY' 			WHERE Unit = 'UNIT_FRENCH_GARDE_IMPERIALE';
UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_MOTORISED_INFANTRY' WHERE Unit = 'UNIT_INFANTRY';
UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_COMPOSITE_BOWMAN'	WHERE Unit = 'UNIT_ARCHER';
UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_COMPOSITE_BOWMAN'	WHERE Unit = 'UNIT_PELTAST';
UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_COMPOSITE_BOWMAN'	WHERE Unit = 'UNIT_HYKSOS_BOWMAN';
UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_CULVERIN'			WHERE Unit = 'UNIT_CROSSBOWMAN';
UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_CULVERIN'			WHERE Unit = 'UNIT_CHINESE_CROUCHING_TIGER';
UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_CULVERIN'			WHERE Unit = 'UNIT_CHOKONU';
UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_CULVERIN'			WHERE Unit = 'UNIT_CAMEL_ARCHER';
UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_CULVERIN'			WHERE Unit = 'UNIT_LONGBOWMAN';
UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_FIELD_GUN'			WHERE Unit = 'UNIT_FIELD_CANNON';
UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_HEAVY_INFANTRY'		WHERE Unit = 'UNIT_SPEARMAN';
UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_HEAVY_INFANTRY'		WHERE Unit = 'UNIT_PHALANX';
UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_PIKE_AND_SHOT'		WHERE Unit = 'UNIT_PIKEMAN';
UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_PIKE_AND_SHOT'		WHERE Unit = 'UNIT_LANDSKNECHT';
UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_TANK_DESTROYER'		WHERE Unit = 'UNIT_AT_CREW';
UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_LANCER'				WHERE Unit = 'UNIT_MEDIEVAL_HORSEMAN';
UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_LANCER'				WHERE Unit = 'UNIT_JINETE';
UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_LANCER'				WHERE Unit = 'UNIT_DRUZHINA';
UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_ARMORED_CAR'		WHERE Unit = 'UNIT_CAVALRY';
UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_ARMORED_CAR'		WHERE Unit = 'UNIT_RUSSIAN_COSSACK';
UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_ARMORED_HORSEMAN'	WHERE Unit = 'UNIT_HEAVY_CHARIOT';
UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_ARMORED_HORSEMAN'	WHERE Unit = 'UNIT_SUMERIAN_WAR_CART';
UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_REITER'				WHERE Unit = 'UNIT_KNIGHT';
UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_REITER'				WHERE Unit = 'UNIT_ARABIAN_MAMLUK';
UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_REITER'				WHERE Unit = 'UNIT_MUGHAL_SOWAR';
UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_REITER'				WHERE Unit = 'UNIT_AMAZON';
UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_REITER'				WHERE Unit = 'UNIT_GENDARME';
UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_LANDSHIP'			WHERE Unit = 'UNIT_CUIRASSIER';
UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_LANDSHIP'			WHERE Unit = 'UNIT_AMERICAN_ROUGH_RIDER';
UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_LANDSHIP'			WHERE Unit = 'UNIT_ENGLISH_IRONSIDE';
UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_LANDSHIP'			WHERE Unit = 'UNIT_POLISH_HUSSAR' AND EXISTS (SELECT UnitType FROM Units WHERE UnitType = 'UNIT_POLISH_HUSSAR');
UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_ARMORED_CAR'		WHERE Unit = 'UNIT_UHLAN' AND EXISTS (SELECT UnitType FROM Units WHERE UnitType = 'UNIT_UHLAN');
UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_MOTORISED_INFANTRY'	WHERE Unit = 'UNIT_DIGGER' AND EXISTS (SELECT UnitType FROM Units WHERE UnitType = 'UNIT_DIGGER');
UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_CORVETTE'			WHERE Unit = 'UNIT_CARAVEL';
UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_GALLEASS'			WHERE Unit = 'UNIT_QUADRIREME';
UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_ARMORED_CRUISER'	WHERE Unit = 'UNIT_FRIGATE';

-- Units Changes
UPDATE Units SET Combat = 39 WHERE UnitType = 'UNIT_ROMAN_LEGION';
UPDATE Units SET Combat = 48 WHERE UnitType = 'UNIT_JAPANESE_SAMURAI';
UPDATE Units SET Combat = 68 WHERE UnitType = 'UNIT_ENGLISH_REDCOAT';
UPDATE Units SET Combat = 68 WHERE UnitType = 'UNIT_FRENCH_GARDE_IMPERIALE';
UPDATE Units SET BaseMoves = 4 WHERE UnitType = 'UNIT_MECHANIZED_INFANTRY';
UPDATE Units SET MandatoryObsoleteTech = 'TECH_IRON_WORKING' WHERE UnitType = 'UNIT_SLINGER';
UPDATE Units SET MandatoryObsoleteTech = 'TECH_BALLISTICS' WHERE UnitType = 'UNIT_CROSSBOWMAN';
UPDATE Units SET MandatoryObsoleteTech = 'TECH_BALLISTICS' WHERE UnitType = 'UNIT_CHINESE_CROUCHING_TIGER';
UPDATE Units SET MandatoryObsoleteTech = 'TECH_ADVANCED_BALLISTICS' WHERE UnitType = 'UNIT_FIELD_CANNON';
UPDATE Units SET RangedCombat = 70, Cost = 400, PrereqTech = 'TECH_REPLACEABLE_PARTS' WHERE UnitType = 'UNIT_MACHINE_GUN';
UPDATE Units SET MandatoryObsoleteTech = 'TECH_MILITARY_TACTICS' WHERE UnitType = 'UNIT_SPEARMAN';
UPDATE Units SET MandatoryObsoleteTech = 'TECH_MILITARY_TACTICS' WHERE UnitType = 'UNIT_GREEK_HOPLITE';
UPDATE Units SET MandatoryObsoleteTech = 'TECH_SCIENTIFIC_THEORY' WHERE UnitType = 'UNIT_PIKEMAN';
UPDATE Units SET PrereqTech = 'TECH_REPLACEABLE_PARTS', MandatoryObsoleteTech = 'TECH_COMPOSITES' WHERE UnitType = 'UNIT_AT_CREW';
UPDATE Units SET BaseMoves = 4, AntiAirCombat = 50 WHERE UnitType = 'UNIT_MODERN_AT';
UPDATE Units SET Combat = 54, PrereqTech = 'TECH_MASS_PRODUCTION', MandatoryObsoleteTech = 'TECH_SCIENTIFIC_THEORY' WHERE UnitType = 'UNIT_TERCIO';
UPDATE Units SET MandatoryObsoleteTech = 'TECH_METAL_CASTING' WHERE UnitType = 'UNIT_HORSEMAN';
UPDATE Units SET MandatoryObsoleteTech = 'TECH_PLASTICS' WHERE UnitType = 'UNIT_CAVALRY';
UPDATE Units SET PrereqTech = 'TECH_LASERS', StrategicResource = 'RESOURCE_OIL' WHERE UnitType = 'UNIT_HELICOPTER';
UPDATE Units SET PrereqTech = 'TECH_LASERS', StrategicResource = 'RESOURCE_OIL' WHERE UnitType = 'UNIT_AMERICAN_AH64_APACHE';
UPDATE Units SET BaseMoves = 3, StrategicResource= 'RESOURCE_HORSES' WHERE UnitType = 'UNIT_HEAVY_CHARIOT';
UPDATE Units SET Combat = 44 WHERE UnitType = 'UNIT_CATAPHRACT' AND EXISTS (SELECT UnitType FROM Units WHERE UnitType = 'UNIT_CATAPHRACT');
UPDATE Units SET BaseMoves = 4 WHERE UnitType = 'UNIT_AMERICAN_ROUGH_RIDER';
UPDATE Units SET PrereqTech = 'TECH_COMBINED_ARMS', MandatoryObsoleteTech = 'TECH_COMPOSITES' WHERE UnitType = 'UNIT_TANK';
UPDATE Units SET PrereqTech = 'TECH_COMBINED_ARMS', MandatoryObsoleteTech = 'TECH_COMPOSITES' WHERE UnitType = 'UNIT_PANZER';
UPDATE Units SET PrereqTech = 'TECH_COMBINED_ARMS', MandatoryObsoleteTech = 'TECH_COMPOSITES' WHERE UnitType = 'UNIT_T34';
UPDATE Units SET BaseMoves = 5, Range = 5 WHERE UnitType = 'UNIT_BIPLANE';
UPDATE Units SET BaseMoves = 8, Range = 8 WHERE UnitType = 'UNIT_FIGHTER';
UPDATE Units SET BaseMoves = 8, Range = 8 WHERE UnitType = 'UNIT_AMERICAN_P51';
UPDATE Units SET BaseMoves = 10, Range = 10 WHERE UnitType = 'UNIT_JET_FIGHTER';
UPDATE Units SET Combat = 40, Cost = 220, PrereqTech = 'TECH_MILITARY_TACTICS', MandatoryObsoleteTech = 'TECH_CARTOGRAPHY' WHERE UnitType = 'UNIT_CARAVEL';
UPDATE Units SET BaseMoves = 5, PrereqTech = 'TECH_RADIO', MandatoryObsoleteTech = 'TECH_TELECOMMUNICATIONS' WHERE UnitType = 'UNIT_DESTROYER';
UPDATE Units SET BaseMoves = 4, AirSlots = 3 WHERE UnitType = 'UNIT_AIRCRAFT_CARRIER';
UPDATE Units SET Maintenance = 4 WHERE UnitType = 'UNIT_FRIGATE';
UPDATE Units SET BaseMoves = 5 WHERE UnitType = 'UNIT_MISSILE_CRUISER';
UPDATE Units SET BaseMoves = 4, Cost = 600, Combat = 80, Bombard = 85, RangedCombat = 0, StrategicResource = null WHERE UnitType = 'UNIT_BATTLESHIP';
UPDATE Units SET BaseMoves = 4, Cost = 600, Combat = 85, Bombard = 90 WHERE UnitType = 'UNIT_BRAZILIAN_MINAS_GERAES';
UPDATE Units SET BaseMoves = 4, Cost = 600, Combat = 85, Bombard = 90 WHERE UnitType = 'UNIT_YAMATO';

-- Unit Replaces Changes
UPDATE 	UnitReplaces SET ReplacesUnitType = 'UNIT_MACEMAN'		  WHERE CivUniqueUnitType = 'UNIT_NORWEGIAN_BERSERKER';
UPDATE 	UnitReplaces SET ReplacesUnitType = 'UNIT_RIFLEMAN'		  WHERE CivUniqueUnitType = 'UNIT_ENGLISH_REDCOAT';
UPDATE 	UnitReplaces SET ReplacesUnitType = 'UNIT_RIFLEMAN'		  WHERE CivUniqueUnitType = 'UNIT_FRENCH_GARDE_IMPERIALE';

-- Tech Boost Changes
UPDATE Boosts SET TechnologyType = 'TECH_CONSTRUCTION'	WHERE Unit1Type = 'UNIT_ARCHER';

-- Unit Promotions
UPDATE UnitPromotions SET PromotionClass = 'PROMOTION_CLASS_AIR_ATTACK' WHERE UnitPromotionType = 'PROMOTION_CLOSE_AIR_SUPPORT';
UPDATE UnitPromotions SET PromotionClass = 'PROMOTION_CLASS_AIR_ATTACK' WHERE UnitPromotionType = 'PROMOTION_TORPEDO_BOMBER';
UPDATE UnitPromotions SET PromotionClass = 'PROMOTION_CLASS_AIR_ATTACK' WHERE UnitPromotionType = 'PROMOTION_TANK_BUSTER';