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
VALUES	('FEATURE_SUK_NGORONGORO_CRATER',	'YIELD_FOOD',			2),
		('FEATURE_SUK_NGORONGORO_CRATER',	'YIELD_SCIENCE',		2);
---------------------------------------------------------------------------------------------------------------
-- Adjacent tiles with Charming Appeal or better receive +1 Gold, +1 Science while unimproved, and +1 Culture when improved.
---------------------------------------------------------------------------------------------------------------
-- GameModifiers
-------------------------------------
INSERT INTO GameModifiers
		(ModifierId)
VALUES	('SUK_NGORONGORO_CRATER_SCIENCE'),
		('SUK_NGORONGORO_CRATER_GOLD'),
		('SUK_NGORONGORO_CRATER_CULTURE');
-------------------------------------
-- Modifiers
-------------------------------------
INSERT INTO Modifiers
	(
		ModifierId,
		ModifierType,
		SubjectRequirementSetId,
		OwnerRequirementSetId
	)
VALUES
	(
		'SUK_NGORONGORO_CRATER_SCIENCE',
		'MODIFIER_GAME_ADJUST_PLOT_YIELD',
		'SUK_NGORONGORO_CRATER_IS_ADJACENT_CHARMING_UNIMPROVED',
		'SUK_NGORONGORO_CRATER_REQUIREMENTS'
	),
	(
		'SUK_NGORONGORO_CRATER_GOLD',
		'MODIFIER_GAME_ADJUST_PLOT_YIELD',
		'SUK_NGORONGORO_CRATER_IS_ADJACENT_CHARMING_UNIMPROVED',
		'SUK_NGORONGORO_CRATER_REQUIREMENTS'
	),

	(
		'SUK_NGORONGORO_CRATER_CULTURE',
		'MODIFIER_GAME_ADJUST_PLOT_YIELD',
		'SUK_NGORONGORO_CRATER_IS_ADJACENT_CHARMING_IMPROVED',
		'SUK_NGORONGORO_CRATER_REQUIREMENTS'
	);
-------------------------------------
-- ModifierArguments
-------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,									Name,					Value)
VALUES	('SUK_NGORONGORO_CRATER_SCIENCE',				'YieldType',			'YIELD_SCIENCE'),
		('SUK_NGORONGORO_CRATER_SCIENCE',				'Amount',				1),

		('SUK_NGORONGORO_CRATER_GOLD',					'YieldType',			'YIELD_GOLD'),
		('SUK_NGORONGORO_CRATER_GOLD',					'Amount',				1),

		('SUK_NGORONGORO_CRATER_CULTURE',				'YieldType',			'YIELD_CULTURE'),
		('SUK_NGORONGORO_CRATER_CULTURE',				'Amount',				1);
----------------------------------------------------------------------------------------------------------------------------
-- Requirements
----------------------------------------------------------------------------------------------------------------------------
-- RequirementSets
-------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,												RequirementSetType)
VALUES	('SUK_NGORONGORO_CRATER_REQUIREMENTS',							'REQUIREMENTSET_TEST_ALL'),
		('SUK_NGORONGORO_CRATER_IS_ADJACENT_CHARMING_UNIMPROVED',		'REQUIREMENTSET_TEST_ALL'),
		('SUK_NGORONGORO_CRATER_IS_ADJACENT_CHARMING_IMPROVED',			'REQUIREMENTSET_TEST_ALL');
-------------------------------------
-- RequirementSetRequirements
-------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,												RequirementId)
VALUES	('SUK_NGORONGORO_CRATER_REQUIREMENTS',							'REQUIREMENT_MAP_HAS_SUK_NGORONGORO_CRATER'),

		('SUK_NGORONGORO_CRATER_IS_ADJACENT_CHARMING_UNIMPROVED',		'REQUIRES_PLOT_IS_NOT_SUK_NGORONGORO_CRATER'),
		('SUK_NGORONGORO_CRATER_IS_ADJACENT_CHARMING_UNIMPROVED',		'REQUIRES_SUK_NGORONGORO_CRATER_IS_ADJACENT'),
		('SUK_NGORONGORO_CRATER_IS_ADJACENT_CHARMING_UNIMPROVED',		'REQUIRES_PLOT_CHARMING_APPEAL'),
		('SUK_NGORONGORO_CRATER_IS_ADJACENT_CHARMING_UNIMPROVED',		'REQUIRES_SUK_NGORONGORO_CRATER_IS_UNIMPROVED'),

		('SUK_NGORONGORO_CRATER_IS_ADJACENT_CHARMING_IMPROVED',			'REQUIRES_PLOT_IS_NOT_SUK_NGORONGORO_CRATER'),
		('SUK_NGORONGORO_CRATER_IS_ADJACENT_CHARMING_IMPROVED',			'REQUIRES_SUK_NGORONGORO_CRATER_IS_ADJACENT'),
		('SUK_NGORONGORO_CRATER_IS_ADJACENT_CHARMING_IMPROVED',			'REQUIRES_PLOT_CHARMING_APPEAL'),
		('SUK_NGORONGORO_CRATER_IS_ADJACENT_CHARMING_IMPROVED',			'REQUIRES_SUK_NGORONGORO_CRATER_IS_IMPROVED');
-------------------------------------
-- Requirements
-------------------------------------
INSERT INTO Requirements
		(RequirementId, 										RequirementType,										Inverse)
VALUES	('REQUIREMENT_MAP_HAS_SUK_NGORONGORO_CRATER',			'REQUIREMENT_MAP_HAS_FEATURE',							0),

		('REQUIRES_PLOT_IS_NOT_SUK_NGORONGORO_CRATER',			'REQUIREMENT_PLOT_FEATURE_TYPE_MATCHES',				1),
		('REQUIRES_SUK_NGORONGORO_CRATER_IS_ADJACENT',			'REQUIREMENT_PLOT_ADJACENT_FEATURE_TYPE_MATCHES',		0),
		('REQUIRES_SUK_NGORONGORO_CRATER_IS_IMPROVED',			'REQUIREMENT_PLOT_HAS_ANY_IMPROVEMENT',					0),
		('REQUIRES_SUK_NGORONGORO_CRATER_IS_UNIMPROVED',		'REQUIREMENT_PLOT_HAS_ANY_IMPROVEMENT',					1);
-------------------------------------
-- RequirementArguments
-------------------------------------
INSERT INTO RequirementArguments
		(RequirementId, 												Name,						Value)
VALUES	('REQUIREMENT_MAP_HAS_SUK_NGORONGORO_CRATER', 					'FeatureType',				'FEATURE_SUK_NGORONGORO_CRATER'),

		('REQUIRES_PLOT_IS_NOT_SUK_NGORONGORO_CRATER', 					'FeatureType',				'FEATURE_SUK_NGORONGORO_CRATER'),

		('REQUIRES_SUK_NGORONGORO_CRATER_IS_ADJACENT', 					'FeatureType',				'FEATURE_SUK_NGORONGORO_CRATER'),
		('REQUIRES_SUK_NGORONGORO_CRATER_IS_ADJACENT', 					'MinRange',				1),
		('REQUIRES_SUK_NGORONGORO_CRATER_IS_ADJACENT', 					'MaxRange',				1);
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