--==========================================================================================================================
-- IconTextureAtlases
--==========================================================================================================================
INSERT INTO IconTextureAtlases 
			(Name, 											IconSize, 	Filename, 									IconsPerRow, 	IconsPerColumn)
VALUES		('ICON_ATLAS_SUK_NGORONGORO_CRATER', 			256, 		'Suk_Ngorongoro_Crater_Atlas_256',			1, 				1),
			('ICON_ATLAS_SUK_NGORONGORO_CRATER', 			64, 		'Suk_Ngorongoro_Crater_Atlas_64',			1, 				1),
			('ICON_ATLAS_SUK_NGORONGORO_CRATER', 			50, 		'Suk_Ngorongoro_Crater_Atlas_50',			1, 				1);
--==========================================================================================================================
-- IconDefinitions
--==========================================================================================================================
INSERT INTO IconDefinitions 
			(Name, 										Atlas, 											'Index')
VALUES		('ICON_FEATURE_SUK_NGORONGORO_CRATER', 		'ICON_ATLAS_SUK_NGORONGORO_CRATER', 			0);
--==========================================================================================================================
--==========================================================================================================================
