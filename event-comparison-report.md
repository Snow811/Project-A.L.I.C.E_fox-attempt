# ALICE Event Comparison Report
Generated: Mon Jan 19 08:57:41 UTC 2026

## Summary
- Total events in Update folder: 184
- Total events in journout folder: 133
- Completely new events: 51
- Events with new variables: 29

## Completely New Events
These events exist in Update folder but not in journout:

- Event AfmuRepairs.cs
- Event AsteroidCracked.cs
- Event BuyDrones.cs
- Event BuyExplorationData.cs
- Event BuyTradeData.cs
- Event ChangeCrewRole.cs
- Event ClearSaveGame.cs
- Event CockpitBreached.cs
- Event CodexEntry.cs
- Event DataScanned.cs
- Event DatalinkScan.cs
- Event DatalinkVoucher.cs
- Event Died.cs
- Event DockFighter.cs
- Event EjectCargo.cs
- Event EngineerContribution.cs
- Event LaunchDrone.cs
- Event LaunchFighter.cs
- Event MassModuleStore.cs
- Event MaterialDiscovered.cs
- Event MiningRefined.cs
- Event MissionAbandoned.cs
- Event MissionFailed.cs
- Event ModuleSwap.cs
- Event NpcCrewRank.cs
- Event PayBounties.cs
- Event Powerplay.cs
- Event PowerplayCollect.cs
- Event PowerplayDefect.cs
- Event PowerplayDeliver.cs
- Event PowerplayFastTrack.cs
- Event PowerplayJoin.cs
- Event PowerplayLeave.cs
- Event PowerplaySalary.cs
- Event PowerplayVote.cs
- Event QuitACrew.cs
- Event RebootRepair.cs
- Event RepairDrone.cs
- Event SAAScanComplete.cs
- Event SRVDestroyed.cs
- Event ScientificResearch.cs
- Event Screenshot.cs
- Event SearchAndRescue.cs
- Event SelfDestruct.cs
- Event SellDrones.cs
- Event SellExplorationData.cs
- Event SetUserShipName.cs
- Event SystemsShutdown.cs
- Event TechnologyBroker.cs
- Event VehicleSwitch.cs
- Event WingInvite.cs

## Events with New Variables
These events exist in both folders but have new variables in Update that need to be merged:

### Event ApproachSettlement.cs
New variables:
- `Name_Localised` (type: `string`)

### Event Cargo.cs
New variables:
- `Name` (type: `string`)
- `Name_Localised` (type: `string`)
- `Stolen` (type: `decimal`)

### Event CargoDepot.cs
New variables:
- `CargoType_Localised` (type: `string`)

### Event EngineerCraft.cs
New variables:
- `ApplyExperimentalEffect` (type: `string`)
- `Count` (type: `decimal`)
- `ExperimentalEffect` (type: `string`)
- `ExperimentalEffect_Localised` (type: `string`)
- `Label` (type: `string`)
- `LessIsGood` (type: `bool`)
- `Name` (type: `string`)
- `Name_Localised` (type: `string`)
- `OriginalValue` (type: `decimal`)
- `Value` (type: `decimal`)
- `ValueStr` (type: `string`)
- `ValueStr_Localised` (type: `string`)

### Event EngineerProgress.cs
New variables:
- `Engineer` (type: `string`)
- `EngineerID` (type: `decimal`)
- `Progress` (type: `string`)
- `Rank` (type: `decimal`)
- `RankProgress` (type: `decimal`)

### Event EscapeInterdiction.cs
New variables:
- `Interdictor_Localised` (type: `string`)

### Event FSSSignalDiscovered.cs
New variables:
- `IsStation` (type: `bool`)
- `SpawningFaction_Localised` (type: `string`)

### Event FactionKillBond.cs
New variables:
- `AwardingFaction_Localised` (type: `string`)
- `VictimFaction_Localised` (type: `string`)

### Event Interdicted.cs
New variables:
- `CombatRank` (type: `decimal`)
- `Interdictor_Localised` (type: `string`)

### Event MaterialTrade.cs
New variables:
- `Category` (type: `string`)
- `Category_Localised` (type: `string`)
- `Material` (type: `string`)
- `Material_Localised` (type: `string`)
- `Quantity` (type: `decimal`)

### Event Materials.cs
New variables:
- `Count` (type: `decimal`)
- `Name` (type: `string`)
- `Name_Localised` (type: `string`)

### Event MissionAccepted.cs
New variables:
- `Commodity` (type: `string`)
- `Commodity_Localised` (type: `string`)
- `Count` (type: `decimal`)
- `Donation` (type: `decimal`)
- `Target` (type: `string`)
- `Target_Localised` (type: `string`)

### Event MissionCompleted.cs
New variables:
- `Category` (type: `string`)
- `Category_Localised` (type: `string`)
- `Commodity` (type: `string`)
- `CommodityReward` (type: `List<MatReward>`)
- `Commodity_Localised` (type: `string`)
- `Count` (type: `decimal`)
- `Donation` (type: `decimal`)
- `Effect` (type: `string`)
- `Effect_Localised` (type: `string`)
- `Effects` (type: `List<FactionEffect>`)
- `Influence` (type: `List<FactionInfluence>`)
- `Name_Localised` (type: `string`)
- `Reputation` (type: `string`)
- `SystemAddress` (type: `decimal`)
- `Target` (type: `string`)
- `Target_Localised` (type: `string`)
- `Trend` (type: `string`)

### Event Missions.cs
New variables:
- `Expires` (type: `decimal`)
- `MissionID` (type: `decimal`)
- `Name` (type: `string`)
- `PassengerMission` (type: `bool`)

### Event ModuleBuy.cs
New variables:
- `StoredItem` (type: `string`)
- `StoredItem_Localised` (type: `string`)

### Event ModuleRetrieve.cs
New variables:
- `EngineerModifications` (type: `string`)
- `Level` (type: `decimal`)
- `Quality` (type: `decimal`)

### Event MultiSellExplorationData.cs
New variables:
- `NumBodies` (type: `decimal`)
- `SystemName` (type: `string`)

### Event Music.cs
New variables:
- `NumBodies` (type: `decimal`)
- `SystemName` (type: `string`)

### Event Outfitting.cs
New variables:
- `BuyPrice` (type: `decimal`)
- `Horizons` (type: `bool`)
- `Items` (type: `List<OutfittingItem>`)
- `Name` (type: `string`)
- `id` (type: `decimal`)

### Event Promotion.cs
New variables:
- `Alliance` (type: `decimal`)
- `Combat` (type: `decimal`)
- `Empire` (type: `decimal`)
- `Independent` (type: `decimal`)
- `Trade` (type: `decimal`)

### Event RedeemVoucher.cs
New variables:
- `BrokerPercentage` (type: `decimal`)
- `Faction` (type: `string`)

### Event Repair.cs
New variables:
- `Item` (type: `string`)
- `Item_Localised` (type: `string`)

### Event ShipTargeted.cs
New variables:
- `Subsystem` (type: `string`)
- `SubsystemHealth` (type: `decimal`)
- `Subsystem_Localised` (type: `string`)

### Event Shipyard.cs
New variables:
- `AllowCobraMkIV` (type: `bool`)
- `Horizons` (type: `bool`)
- `PriceList` (type: `List<Prices>`)
- `ShipPrice` (type: `decimal`)
- `ShipType` (type: `string`)
- `ShipType_Localised` (type: `string`)
- `id` (type: `decimal`)

### Event ShipyardBuy.cs
New variables:
- `SellOldShip` (type: `string`)
- `SellPrice` (type: `decimal`)
- `SellShipID` (type: `decimal`)

### Event Statistics.cs
New variables:
- `Assassination_Profits` (type: `decimal`)
- `Assassinations` (type: `decimal`)
- `Average_Profit` (type: `decimal`)
- `Black_Markets_Profits` (type: `decimal`)
- `Black_Markets_Traded_With` (type: `decimal`)
- `Bounties_Claimed` (type: `decimal`)
- `Bounties_Received` (type: `decimal`)
- `Bounty_Hunting_Profit` (type: `decimal`)
- `CQC_Credits_Earned` (type: `decimal`)
- `CQC_KD` (type: `decimal`)
- `CQC_Kills` (type: `decimal`)
- `CQC_Time_Played` (type: `decimal`)
- `CQC_WL` (type: `decimal`)
- `Combat_Bond_Profits` (type: `decimal`)
- `Combat_Bonds` (type: `decimal`)
- `Count_Of_Used_Engineers` (type: `decimal`)
- `Current_Wealth` (type: `decimal`)
- `Efficient_Scans` (type: `decimal`)
- `Encoded_Materials_Traded` (type: `decimal`)
- `Exploration_Profits` (type: `decimal`)
- `Fines` (type: `decimal`)
- `Grade_1_Materials_Traded` (type: `decimal`)
- `Grade_2_Materials_Traded` (type: `decimal`)
- `Grade_3_Materials_Traded` (type: `decimal`)
- `Grade_4_Materials_Traded` (type: `decimal`)
- `Grade_5_Materials_Traded` (type: `decimal`)
- `Greatest_Distance_From_Start` (type: `decimal`)
- `Highest_Bounty` (type: `decimal`)
- `Highest_Payout` (type: `decimal`)
- `Highest_Single_Reward` (type: `decimal`)
- `Highest_Single_Transaction` (type: `decimal`)
- `Insurance_Claims` (type: `decimal`)
- `Market_Profits` (type: `decimal`)
- `Markets_Traded_With` (type: `decimal`)
- `Materials_Collected` (type: `decimal`)
- `Materials_Traded` (type: `decimal`)
- `Mining_Profits` (type: `decimal`)
- `Multicrew_Credits_Total` (type: `decimal`)
- `Multicrew_Fighter_Time_Total` (type: `decimal`)
- `Multicrew_Fines_Total` (type: `decimal`)
- `Multicrew_Gunner_Time_Total` (type: `decimal`)
- `Multicrew_Time_Total` (type: `decimal`)
- `Notoriety` (type: `decimal`)
- `NpcCrew_Died` (type: `decimal`)
- `NpcCrew_Fired` (type: `decimal`)
- `NpcCrew_Hired` (type: `decimal`)
- `NpcCrew_TotalWages` (type: `decimal`)
- `Owned_Ship_Count` (type: `decimal`)
- `Passengers_Missions_Accepted` (type: `decimal`)
- `Passengers_Missions_Bulk` (type: `decimal`)
- `Passengers_Missions_Delivered` (type: `decimal`)
- `Passengers_Missions_Disgruntled` (type: `decimal`)
- `Passengers_Missions_Ejected` (type: `decimal`)
- `Passengers_Missions_VIP` (type: `decimal`)
- `Planets_Scanned_To_Level_2` (type: `decimal`)
- `Planets_Scanned_To_Level_3` (type: `decimal`)
- `Quantity_Mined` (type: `decimal`)
- `Raw_Materials_Traded` (type: `decimal`)
- `Recipes_Generated` (type: `decimal`)
- `Recipes_Generated_Rank_1` (type: `decimal`)
- `Recipes_Generated_Rank_2` (type: `decimal`)
- `Recipes_Generated_Rank_3` (type: `decimal`)
- `Recipes_Generated_Rank_4` (type: `decimal`)
- `Recipes_Generated_Rank_5` (type: `decimal`)
- `Resources_Smuggled` (type: `decimal`)
- `Resources_Traded` (type: `decimal`)
- `SearchRescue_Count` (type: `decimal`)
- `SearchRescue_Profit` (type: `decimal`)
- `SearchRescue_Traded` (type: `decimal`)
- `Skimmers_Killed` (type: `decimal`)
- `Spent_On_Ammo_Consumables` (type: `decimal`)
- `Spent_On_Fuel` (type: `decimal`)
- `Spent_On_Insurance` (type: `decimal`)
- `Spent_On_Outfitting` (type: `decimal`)
- `Spent_On_Repairs` (type: `decimal`)
- `Spent_On_Ships` (type: `decimal`)
- `Systems_Visited` (type: `decimal`)
- `TG_ENCOUNTERS` (type: `TG_Encounters`)
- `TG_ENCOUNTER_IMPRINT` (type: `decimal`)
- `TG_ENCOUNTER_TOTAL` (type: `decimal`)
- `TG_ENCOUNTER_TOTAL_LAST_SHIP` (type: `string`)
- `TG_ENCOUNTER_TOTAL_LAST_SYSTEM` (type: `string`)
- `TG_ENCOUNTER_TOTAL_LAST_TIMESTAMP` (type: `DateTime`)
- `TG_SCOUT_COUNT` (type: `decimal`)
- `Time_Played` (type: `decimal`)
- `Total_Bounties` (type: `decimal`)
- `Total_Fines` (type: `decimal`)
- `Total_Hyperspace_Distance` (type: `decimal`)
- `Total_Hyperspace_Jumps` (type: `decimal`)
- `Trades_Completed` (type: `decimal`)

### Event StoredModules.cs
New variables:
- `BuyPrice` (type: `decimal`)
- `EngineerModifications` (type: `string`)
- `Hot` (type: `bool`)
- `InTransit` (type: `bool`)
- `Level` (type: `decimal`)
- `Name` (type: `string`)
- `Name_Localised` (type: `string`)
- `Quality` (type: `decimal`)
- `StorageSlot` (type: `decimal`)
- `TransferCost` (type: `decimal`)
- `TransferTime` (type: `decimal`)

### Event StoredShips.cs
New variables:
- `BuyPrice` (type: `decimal`)
- `EngineerModifications` (type: `string`)
- `Hot` (type: `bool`)
- `InTransit` (type: `bool`)
- `Level` (type: `decimal`)
- `Name` (type: `string`)
- `Name_Localised` (type: `string`)
- `Quality` (type: `decimal`)
- `ShipID` (type: `decimal`)
- `ShipMarketID` (type: `decimal`)
- `ShipType` (type: `string`)
- `ShipType_Localised` (type: `string`)
- `StorageSlot` (type: `decimal`)
- `TransferCost` (type: `decimal`)
- `TransferPrice` (type: `decimal`)
- `TransferTime` (type: `decimal`)
- `Value` (type: `decimal`)

### Event Synthesis.cs
New variables:
- `Count` (type: `decimal`)

