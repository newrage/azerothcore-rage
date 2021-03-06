-- DB update 2020_12_18_01 -> 2020_12_18_02
DROP PROCEDURE IF EXISTS `updateDb`;
DELIMITER //
CREATE PROCEDURE updateDb ()
proc:BEGIN DECLARE OK VARCHAR(100) DEFAULT 'FALSE';
SELECT COUNT(*) INTO @COLEXISTS
FROM information_schema.COLUMNS
WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'version_db_world' AND COLUMN_NAME = '2020_12_18_01';
IF @COLEXISTS = 0 THEN LEAVE proc; END IF;
START TRANSACTION;
ALTER TABLE version_db_world CHANGE COLUMN 2020_12_18_01 2020_12_18_02 bit;
SELECT sql_rev INTO OK FROM version_db_world WHERE sql_rev = '1607114956534301900'; IF OK <> 'FALSE' THEN LEAVE proc; END IF;
--
-- START UPDATING QUERIES
--

INSERT INTO `version_db_world` (`sql_rev`) VALUES ('1607114956534301900');

-- Freka Bloodaxe - Horde
DELETE FROM `npc_vendor` WHERE `entry` = 33553;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(33553, 1, 44973, 0, 0, 2599, 0),
(33553, 2, 45014, 0, 0, 2597, 0),
(33553, 3, 45203, 0, 0, 2601, 0),
(33553, 4, 45204, 0, 0, 2601, 0),
(33553, 5, 45205, 0, 0, 2601, 0),
(33553, 6, 45206, 0, 0, 2602, 0),
(33553, 7, 45207, 0, 0, 2602, 0),
(33553, 8, 45208, 0, 0, 2601, 0),
(33553, 9, 45209, 0, 0, 2602, 0),
(33553, 10, 45210, 0, 0, 2601, 0),
(33553, 11, 45211, 0, 0, 2602, 0),
(33553, 12, 45212, 0, 0, 2601, 0),
(33553, 13, 45213, 0, 0, 2602, 0),
(33553, 14, 45214, 0, 0, 2601, 0),
(33553, 15, 45215, 0, 0, 2602, 0),
(33553, 16, 45216, 0, 0, 2602, 0),
(33553, 17, 45217, 0, 0, 2602, 0),
(33553, 18, 45218, 0, 0, 2602, 0),
(33553, 19, 45219, 0, 0, 2602, 0),
(33553, 20, 45220, 0, 0, 2602, 0),
(33553, 21, 45221, 0, 0, 2602, 0),
(33553, 22, 45222, 0, 0, 2601, 0),
(33553, 23, 45223, 0, 0, 2602, 0),
(33553, 24, 45581, 0, 0, 2598, 0),
(33553, 25, 45595, 0, 0, 2600, 0),
(33553, 26, 45719, 0, 0, 2639, 0),
(33553, 27, 45725, 0, 0, 2603, 0),
(33553, 28, 46749, 0, 0, 2671, 0);
-- Delete duplicated item (33553, 29, 46757, 0, 0, 2671, 0);

-- Samamba - Horde (Sequence fixed)
DELETE FROM `npc_vendor` WHERE `entry` = 33554;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(33554, 1, 45606, 0, 0, 2599, 0),
(33554, 2, 45015, 0, 0, 2597, 0),
(33554, 3, 45203, 0, 0, 2601, 0),
(33554, 4, 45204, 0, 0, 2601, 0),
(33554, 5, 45205, 0, 0, 2601, 0),
(33554, 6, 45206, 0, 0, 2602, 0),
(33554, 7, 45207, 0, 0, 2602, 0),
(33554, 8, 45208, 0, 0, 2601, 0),
(33554, 9, 45209, 0, 0, 2602, 0),
(33554, 10, 45210, 0, 0, 2601, 0),
(33554, 11, 45211, 0, 0, 2602, 0),
(33554, 12, 45212, 0, 0, 2601, 0),
(33554, 13, 45213, 0, 0, 2602, 0),
(33554, 14, 45214, 0, 0, 2601, 0),
(33554, 15, 45215, 0, 0, 2602, 0),
(33554, 16, 45216, 0, 0, 2602, 0),
(33554, 17, 45217, 0, 0, 2602, 0),
(33554, 18, 45218, 0, 0, 2602, 0),
(33554, 19, 45219, 0, 0, 2602, 0),
(33554, 20, 45220, 0, 0, 2602, 0),
(33554, 21, 45221, 0, 0, 2602, 0),
(33554, 22, 45222, 0, 0, 2601, 0),
(33554, 23, 45223, 0, 0, 2602, 0),
(33554, 24, 45582, 0, 0, 2598, 0),
(33554, 25, 45593, 0, 0, 2600, 0),
(33554, 26, 45720, 0, 0, 2639, 0),
(33554, 27, 45725, 0, 0, 2603, 0),
(33554, 28, 46743, 0, 0, 2671, 0),
(33554, 29, 46760, 0, 0, 2671, 0);

-- Eliza Killian - Horde
DELETE FROM `npc_vendor` WHERE `entry` = 33555;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(33555, 1, 44971, 0, 0, 2599, 0),
(33555, 2, 45016, 0, 0, 2597, 0),
(33555, 3, 45203, 0, 0, 2601, 0),
(33555, 4, 45204, 0, 0, 2601, 0),
(33555, 5, 45205, 0, 0, 2601, 0),
(33555, 6, 45206, 0, 0, 2602, 0),
(33555, 7, 45207, 0, 0, 2602, 0),
(33555, 8, 45208, 0, 0, 2601, 0),
(33555, 9, 45209, 0, 0, 2602, 0),
(33555, 10, 45210, 0, 0, 2601, 0),
(33555, 11, 45211, 0, 0, 2602, 0),
(33555, 12, 45212, 0, 0, 2601, 0),
(33555, 13, 45213, 0, 0, 2602, 0),
(33555, 14, 45214, 0, 0, 2601, 0),
(33555, 15, 45215, 0, 0, 2602, 0),
(33555, 16, 45216, 0, 0, 2602, 0),
(33555, 17, 45217, 0, 0, 2602, 0),
(33555, 18, 45218, 0, 0, 2602, 0),
(33555, 19, 45219, 0, 0, 2602, 0),
(33555, 20, 45220, 0, 0, 2602, 0),
(33555, 21, 45221, 0, 0, 2602, 0),
(33555, 22, 45222, 0, 0, 2601, 0),
(33555, 23, 45223, 0, 0, 2602, 0),
(33555, 24, 45583, 0, 0, 2598, 0),
(33555, 25, 45597, 0, 0, 2600, 0),
(33555, 26, 45723, 0, 0, 2639, 0),
(33555, 27, 45725, 0, 0, 2603, 0),
(33555, 28, 46746, 0, 0, 2671, 0),
(33555, 29, 46764, 0, 0, 2671, 0);

-- Doru Thunderhorn - Horde
DELETE FROM `npc_vendor` WHERE `entry` = 33556;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(33556, 1, 44980, 0, 0, 2599, 0),
(33556, 2, 45013, 0, 0, 2597, 0),
(33556, 3, 45203, 0, 0, 2601, 0),
(33556, 4, 45204, 0, 0, 2601, 0),
(33556, 5, 45205, 0, 0, 2601, 0),
(33556, 6, 45206, 0, 0, 2602, 0),
(33556, 7, 45207, 0, 0, 2602, 0),
(33556, 8, 45208, 0, 0, 2601, 0),
(33556, 9, 45209, 0, 0, 2602, 0),
(33556, 10, 45210, 0, 0, 2601, 0),
(33556, 11, 45211, 0, 0, 2602, 0),
(33556, 12, 45212, 0, 0, 2601, 0),
(33556, 13, 45213, 0, 0, 2602, 0),
(33556, 14, 45214, 0, 0, 2601, 0),
(33556, 15, 45215, 0, 0, 2602, 0),
(33556, 16, 45216, 0, 0, 2602, 0),
(33556, 17, 45217, 0, 0, 2602, 0),
(33556, 18, 45218, 0, 0, 2602, 0),
(33556, 19, 45219, 0, 0, 2602, 0),
(33556, 20, 45220, 0, 0, 2602, 0),
(33556, 21, 45221, 0, 0, 2602, 0),
(33556, 22, 45222, 0, 0, 2601, 0),
(33556, 23, 45223, 0, 0, 2602, 0),
(33556, 24, 45584, 0, 0, 2598, 0),
(33556, 25, 45592, 0, 0, 2600, 0),
(33556, 26, 45722, 0, 0, 2639, 0),
(33556, 27, 45725, 0, 0, 2603, 0),
(33556, 28, 46750, 0, 0, 2671, 0),
(33556, 29, 46755, 0, 0, 2671, 0);

-- Trellis Morningsun - Horde
DELETE FROM `npc_vendor` WHERE `entry` = 33557;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(33557, 1, 44982, 0, 0, 2599, 0),
(33557, 2, 45017, 0, 0, 2597, 0),
(33557, 3, 45203, 0, 0, 2601, 0),
(33557, 4, 45204, 0, 0, 2601, 0),
(33557, 5, 45205, 0, 0, 2601, 0),
(33557, 6, 45206, 0, 0, 2602, 0),
(33557, 7, 45207, 0, 0, 2602, 0),
(33557, 8, 45208, 0, 0, 2601, 0),
(33557, 9, 45209, 0, 0, 2602, 0),
(33557, 10, 45210, 0, 0, 2601, 0),
(33557, 11, 45211, 0, 0, 2602, 0),
(33557, 12, 45212, 0, 0, 2601, 0),
(33557, 13, 45213, 0, 0, 2602, 0),
(33557, 14, 45214, 0, 0, 2601, 0),
(33557, 15, 45215, 0, 0, 2602, 0),
(33557, 16, 45216, 0, 0, 2602, 0),
(33557, 17, 45217, 0, 0, 2602, 0),
(33557, 18, 45218, 0, 0, 2602, 0),
(33557, 19, 45219, 0, 0, 2602, 0),
(33557, 20, 45220, 0, 0, 2602, 0),
(33557, 21, 45221, 0, 0, 2602, 0),
(33557, 22, 45222, 0, 0, 2601, 0),
(33557, 23, 45223, 0, 0, 2602, 0),
(33557, 24, 45585, 0, 0, 2598, 0),
(33557, 25, 45596, 0, 0, 2600, 0),
(33557, 26, 45721, 0, 0, 2639, 0),
(33557, 27, 45725, 0, 0, 2603, 0),
(33557, 28, 46751, 0, 0, 2671, 0),
(33557, 29, 46761, 0, 0, 2671, 0);

-- Corporal Arthur Flew - Alliance (Sequence fixed)
DELETE FROM `npc_vendor` WHERE `entry` = 33307;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(33307, 1, 44974, 0, 0, 2599, 0),
(33307, 2, 45011, 0, 0, 2597, 0),
(33307, 3, 45074, 0, 0, 2601, 0),
(33307, 4, 45075, 0, 0, 2601, 0),
(33307, 5, 45076, 0, 0, 2601, 0),
(33307, 6, 45077, 0, 0, 2601, 0),
(33307, 7, 45078, 0, 0, 2601, 0),
(33307, 8, 45128, 0, 0, 2601, 0),
(33307, 9, 45129, 0, 0, 2601, 0),
(33307, 10, 45130, 0, 0, 2601, 0),
(33307, 11, 45131, 0, 0, 2602, 0),
(33307, 12, 45152, 0, 0, 2602, 0),
(33307, 13, 45153, 0, 0, 2602, 0),
(33307, 14, 45154, 0, 0, 2602, 0),
(33307, 15, 45155, 0, 0, 2602, 0),
(33307, 16, 45156, 0, 0, 2602, 0),
(33307, 17, 45159, 0, 0, 2602, 0),
(33307, 18, 45160, 0, 0, 2602, 0),
(33307, 19, 45163, 0, 0, 2602, 0),
(33307, 20, 45181, 0, 0, 2602, 0),
(33307, 21, 45182, 0, 0, 2602, 0),
(33307, 22, 45183, 0, 0, 2602, 0),
(33307, 23, 45184, 0, 0, 2602, 0),
(33307, 24, 45574, 0, 0, 2598, 0),
(33307, 25, 45125, 0, 0, 2600, 0),
(33307, 26, 45718, 0, 0, 2639, 0),
(33307, 27, 45725, 0, 0, 2603, 0),
(33307, 28, 46752, 0, 0, 2671, 0),
(33307, 29, 46758, 0, 0, 2671, 0);

-- Derrick Brindlebeard - Alliance 
DELETE FROM `npc_vendor` WHERE `entry` = 33310;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(33310, 1, 44970, 0, 0, 2599, 0),
(33310, 2, 45018, 0, 0, 2597, 0),
(33310, 3, 45074, 0, 0, 2601, 0),
(33310, 4, 45075, 0, 0, 2601, 0),
(33310, 5, 45076, 0, 0, 2601, 0),
(33310, 6, 45077, 0, 0, 2601, 0),
(33310, 7, 45078, 0, 0, 2601, 0),
(33310, 8, 45128, 0, 0, 2601, 0),
(33310, 9, 45129, 0, 0, 2601, 0),
(33310, 10, 45130, 0, 0, 2601, 0),
(33310, 11, 45131, 0, 0, 2602, 0),
(33310, 12, 45152, 0, 0, 2602, 0),
(33310, 13, 45153, 0, 0, 2602, 0),
(33310, 14, 45154, 0, 0, 2602, 0),
(33310, 15, 45155, 0, 0, 2602, 0),
(33310, 16, 45156, 0, 0, 2602, 0),
(33310, 17, 45159, 0, 0, 2602, 0),
(33310, 18, 45160, 0, 0, 2602, 0),
(33310, 19, 45163, 0, 0, 2602, 0),
(33310, 20, 45181, 0, 0, 2602, 0),
(33310, 21, 45182, 0, 0, 2602, 0),
(33310, 22, 45183, 0, 0, 2602, 0),
(33310, 23, 45184, 0, 0, 2602, 0),
(33310, 24, 45577, 0, 0, 2598, 0),
(33310, 25, 45586, 0, 0, 2600, 0),
(33310, 26, 45717, 0, 0, 2639, 0),
(33310, 27, 45725, 0, 0, 2603, 0),
(33310, 28, 46748, 0, 0, 2671, 0),
(33310, 29, 46762, 0, 0, 2671, 0);

-- Rillie Spindlenut - Alliance
DELETE FROM `npc_vendor` WHERE `entry` = 33650;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(33650, 1, 45002, 0, 0, 2599, 0),
(33650, 2, 45019, 0, 0, 2597, 0),
(33650, 3, 45074, 0, 0, 2601, 0),
(33650, 4, 45075, 0, 0, 2601, 0),
(33650, 5, 45076, 0, 0, 2601, 0),
(33650, 6, 45077, 0, 0, 2601, 0),
(33650, 7, 45078, 0, 0, 2601, 0),
(33650, 8, 45128, 0, 0, 2601, 0),
(33650, 9, 45129, 0, 0, 2601, 0),
(33650, 10, 45130, 0, 0, 2601, 0),
(33650, 11, 45131, 0, 0, 2602, 0),
(33650, 12, 45152, 0, 0, 2602, 0),
(33650, 13, 45153, 0, 0, 2602, 0),
(33650, 14, 45154, 0, 0, 2602, 0),
(33650, 15, 45155, 0, 0, 2602, 0),
(33650, 16, 45156, 0, 0, 2602, 0),
(33650, 17, 45159, 0, 0, 2602, 0),
(33650, 18, 45160, 0, 0, 2602, 0),
(33650, 19, 45163, 0, 0, 2602, 0),
(33650, 20, 45181, 0, 0, 2602, 0),
(33650, 21, 45182, 0, 0, 2602, 0),
(33650, 22, 45183, 0, 0, 2602, 0),
(33650, 23, 45184, 0, 0, 2602, 0),
(33650, 24, 45578, 0, 0, 2598, 0),
(33650, 25, 45589, 0, 0, 2600, 0),
(33650, 26, 45716, 0, 0, 2639, 0),
(33650, 27, 45725, 0, 0, 2603, 0),
(33650, 28, 46747, 0, 0, 2671, 0),
(33650, 29, 46763, 0, 0, 2671, 0);

-- Rook Hawkfist - Alliance
DELETE FROM `npc_vendor` WHERE `entry` = 33653;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(33653, 1, 44965, 0, 0, 2599, 0),
(33653, 2, 45021, 0, 0, 2597, 0),
(33653, 3, 45074, 0, 0, 2601, 0),
(33653, 4, 45075, 0, 0, 2601, 0),
(33653, 5, 45076, 0, 0, 2601, 0),
(33653, 6, 45077, 0, 0, 2601, 0),
(33653, 7, 45078, 0, 0, 2601, 0),
(33653, 8, 45128, 0, 0, 2601, 0),
(33653, 9, 45129, 0, 0, 2601, 0),
(33653, 10, 45130, 0, 0, 2601, 0),
(33653, 11, 45131, 0, 0, 2602, 0),
(33653, 12, 45152, 0, 0, 2602, 0),
(33653, 13, 45153, 0, 0, 2602, 0),
(33653, 14, 45154, 0, 0, 2602, 0),
(33653, 15, 45155, 0, 0, 2602, 0),
(33653, 16, 45156, 0, 0, 2602, 0),
(33653, 17, 45159, 0, 0, 2602, 0),
(33653, 18, 45160, 0, 0, 2602, 0),
(33653, 19, 45163, 0, 0, 2602, 0),
(33653, 20, 45181, 0, 0, 2602, 0),
(33653, 21, 45182, 0, 0, 2602, 0),
(33653, 22, 45183, 0, 0, 2602, 0),
(33653, 23, 45184, 0, 0, 2602, 0),
(33653, 24, 45579, 0, 0, 2598, 0),
(33653, 25, 45591, 0, 0, 2600, 0),
(33653, 26, 45714, 0, 0, 2639, 0),
(33653, 27, 45725, 0, 0, 2603, 0),
(33653, 28, 46744, 0, 0, 2671, 0),
(33653, 29, 46759, 0, 0, 2671, 0);

-- Irisee - Alliance
DELETE FROM `npc_vendor` WHERE `entry` = 33657;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(33657, 1, 44984, 0, 0, 2599, 0),
(33657, 2, 45020, 0, 0, 2597, 0),
(33657, 3, 45074, 0, 0, 2601, 0),
(33657, 4, 45075, 0, 0, 2601, 0),
(33657, 5, 45076, 0, 0, 2601, 0),
(33657, 6, 45077, 0, 0, 2601, 0),
(33657, 7, 45078, 0, 0, 2601, 0),
(33657, 8, 45128, 0, 0, 2601, 0),
(33657, 9, 45129, 0, 0, 2601, 0),
(33657, 10, 45130, 0, 0, 2601, 0),
(33657, 11, 45131, 0, 0, 2602, 0),
(33657, 12, 45152, 0, 0, 2602, 0),
(33657, 13, 45153, 0, 0, 2602, 0),
(33657, 14, 45154, 0, 0, 2602, 0),
(33657, 15, 45155, 0, 0, 2602, 0),
(33657, 16, 45156, 0, 0, 2602, 0),
(33657, 17, 45159, 0, 0, 2602, 0),
(33657, 18, 45160, 0, 0, 2602, 0),
(33657, 19, 45163, 0, 0, 2602, 0),
(33657, 20, 45181, 0, 0, 2602, 0),
(33657, 21, 45182, 0, 0, 2602, 0),
(33657, 22, 45183, 0, 0, 2602, 0),
(33657, 23, 45184, 0, 0, 2602, 0),
(33657, 24, 45580, 0, 0, 2598, 0),
(33657, 25, 45590, 0, 0, 2600, 0),
(33657, 26, 45715, 0, 0, 2639, 0),
(33657, 27, 45725, 0, 0, 2603, 0),
(33657, 28, 46745, 0, 0, 2671, 0),
(33657, 29, 46756, 0, 0, 2671, 0);


--
-- END UPDATING QUERIES
--
COMMIT;
END //
DELIMITER ;
CALL updateDb();
DROP PROCEDURE IF EXISTS `updateDb`;
