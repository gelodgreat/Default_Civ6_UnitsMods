INSERT INTO Types (Type, Kind) VALUES ('PROMOTION_CLASS_HUNTER','KIND_PROMOTION_CLASS');

INSERT INTO Types (Type, Kind)
SELECT UnitPromotionType || '_HUNTER','KIND_PROMOTION'
FROM UnitPromotions
WHERE PromotionClass = 'PROMOTION_CLASS_RANGED';

INSERT INTO UnitPromotionClasses (PromotionClassType, Name)
VALUES ('PROMOTION_CLASS_HUNTER', 'Hunter');

INSERT INTO UnitPromotions(UnitPromotionType, Name, Description, Level, Column, PromotionClass)
SELECT UnitPromotionType || '_HUNTER', Name, Description, Level, Column, 'PROMOTION_CLASS_HUNTER'
FROM UnitPromotions
WHERE PromotionClass = 'PROMOTION_CLASS_RANGED';

INSERT INTO UnitPromotionPrereqs(UnitPromotion, PrereqUnitPromotion)
SELECT UnitPromotion || '_HUNTER',  PrereqUnitPromotion || '_HUNTER'
FROM UnitPromotionPrereqs
WHERE UnitPromotion IN (SELECT UnitPromotionType FROM UnitPromotions WHERE PromotionClass =  'PROMOTION_CLASS_RANGED')
OR PrereqUnitPromotion IN (SELECT UnitPromotionType FROM UnitPromotions WHERE PromotionClass =  'PROMOTION_CLASS_RANGED');

INSERT INTO UnitPromotionModifiers(UnitPromotionType, ModifierId)
SELECT UnitPromotionType || '_HUNTER',  ModifierId
FROM   UnitPromotionModifiers
WHERE UnitPromotionType IN (SELECT UnitPromotionType FROM UnitPromotions WHERE PromotionClass =  'PROMOTION_CLASS_RANGED');

UPDATE UnitPromotions SET Name = 'LOC_PROMOTION_HUNTER_NAME', Description = 'LOC_PROMOTION_HUNTER_DESCRIPTION' WHERE UnitPromotionType = 'PROMOTION_VOLLEY_HUNTER';