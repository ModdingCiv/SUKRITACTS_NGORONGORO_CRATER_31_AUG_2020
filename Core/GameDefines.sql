--==========================================================================================================================
-- Features
--==========================================================================================================================
-- Types
-------------------------------------
INSERT INTO Types
		(Type,							Kind)
VALUES	('FEATURE_SUK_NGORONGORO_CRATER',		'KIND_FEATURE');
-------------------------------------
-- Features
-------------------------------------
INSERT INTO Features
		(
			FeatureType,
			Name,
			Description,
			Quote,

			Tiles,
			NaturalWonder,
			FollowRulesInWB,
			Settlement,
			Impassable,

			MinDistanceNW,

			AddsFreshWater,
			Appeal,
			NoRiver,
			NoCoast
		)
VALUES	(
			'FEATURE_SUK_NGORONGORO_CRATER',
			'LOC_FEATURE_SUK_NGORONGORO_CRATER_NAME',
			'LOC_FEATURE_SUK_NGORONGORO_CRATER_DESCRIPTION',
			'LOC_FEATURE_SUK_NGORONGORO_CRATER_QUOTE',

			3,
			1,
			0,
			0,
			0,

			8,

			0,
			2,
			1,
			1
		);
-------------------------------------
	-- Feature_ValidTerrains
-------------------------------------
INSERT INTO Feature_ValidTerrains
		(FeatureType, 							TerrainType)
VALUES	('FEATURE_SUK_NGORONGORO_CRATER',		'TERRAIN_PLAINS'),
		('FEATURE_SUK_NGORONGORO_CRATER',		'TERRAIN_GRASS'),
		('FEATURE_SUK_NGORONGORO_CRATER',		'TERRAIN_PLAINS_HILLS'),
		('FEATURE_SUK_NGORONGORO_CRATER',		'TERRAIN_GRASS_HILLS');
-------------------------------------
	-- Feature_NotAdjacentTerrains
-------------------------------------
INSERT INTO Feature_NotAdjacentTerrains
		(FeatureType, 							TerrainType)
VALUES	('FEATURE_SUK_NGORONGORO_CRATER',		'TERRAIN_TUNDRA'),
		('FEATURE_SUK_NGORONGORO_CRATER',		'TERRAIN_DESERT'),
		('FEATURE_SUK_NGORONGORO_CRATER',		'TERRAIN_TUNDRA_HILLS'),
		('FEATURE_SUK_NGORONGORO_CRATER',		'TERRAIN_DESERT_HILLS');
-------------------------------------
	-- Feature_YieldChanges
-------------------------------------
INSERT INTO Feature_YieldChanges
		(FeatureType, 						YieldType,				YieldChange)
VALUES	('FEATURE_SUK_NGORONGORO_CRATER',	'YIELD_FOOD',			3),
		('FEATURE_SUK_NGORONGORO_CRATER',	'YIELD_PRODUCTION',		1),
		('FEATURE_SUK_NGORONGORO_CRATER',	'YIELD_SCIENCE',		2);
-------------------------------------
-- Mod Support
-------------------------------------
CREATE TABLE IF NOT EXISTS NaturalWonderPosition
	(
		MapName TEXT NOT NULL,
		FeatureType TEXT NOT NULL,
		TerrainType TEXT,
		X INT default 0,
		Y INT default 0
	);

INSERT INTO NaturalWonderPosition
		(MapName, 				FeatureType,						TerrainType,		X,		Y)
VALUES	('GiantEarth', 			'FEATURE_SUK_NGORONGORO_CRATER',	'TERRAIN_GRASS',	31,		28),
		('GiantEarth', 			'FEATURE_SUK_NGORONGORO_CRATER',	'TERRAIN_GRASS',	31,		27),
		('GiantEarth', 			'FEATURE_SUK_NGORONGORO_CRATER',	'TERRAIN_GRASS',	30,		27),
		('GreatestEarthMap', 	'FEATURE_SUK_NGORONGORO_CRATER',	'TERRAIN_GRASS',	60,		17),
		('GreatestEarthMap', 	'FEATURE_SUK_NGORONGORO_CRATER',	'TERRAIN_GRASS',	60,		16),
		('GreatestEarthMap', 	'FEATURE_SUK_NGORONGORO_CRATER',	'TERRAIN_GRASS',	61,		16);
--==========================================================================================================================
--==========================================================================================================================