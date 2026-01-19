# Event Comparison Report: journout (new) vs Update (old)

Generated: Mon Jan 19 09:03:27 UTC 2026

## Summary

- **Completely new events**: 49
- **Events with new variables**: 33
- **Unchanged events**: 51

---

## Completely New Events

These events exist in journout but NOT in Update (need to be added):

- Event Backpack.cs
- Event BackpackChange.cs
- Event BookDropship.cs
- Event Bounty.cs
- Event CargoTransfer.cs
- Event CarrierBankTransfer.cs
- Event CarrierBuy.cs
- Event CarrierCrewServices.cs
- Event CarrierDecommission.cs
- Event CarrierDepositFuel.cs
- Event CarrierDockingPermission.cs
- Event CarrierFinance.cs
- Event CarrierJump.cs
- Event CarrierJumpRequest.cs
- Event CarrierLocation.cs
- Event CarrierStats.cs
- Event CarrierTradeOrder.cs
- Event Commander.cs
- Event CommitCrime.cs
- Event CommunityGoal.cs
- Event CommunityGoalJoin.cs
- Event CommunityGoalReward.cs
- Event CrewLaunchFighter.cs
- Event CrimeVictim.cs
- Event Disembark.cs
- Event Docked.cs
- Event DropshipDeploy.cs
- Event Embark.cs
- Event FSDJump.cs
- Event FSSAllBodiesFound.cs
- Event FSSDiscoveryScan.cs
- Event LoadGame.cs
- Event Loadout.cs
- Event LoadoutEquipModule.cs
- Event Location.cs
- Event NavRoute.cs
- Event NavRouteClear.cs
- Event PayFines.cs
- Event ReceiveText.cs
- Event Scan.cs
- Event ScanBaryCentre.cs
- Event ShipLocker.cs
- Event ShipyardBankDeposit.cs
- Event StartJump.cs
- Event SuitLoadout.cs
- Event SupercruiseDestinationDrop.cs
- Event SupercruiseEntry.cs
- Event SupercruiseExit.cs
- Event UseConsumable.cs

---

## Events with New Variables

These events exist in both directories but have new properties in journout that need to be merged:

### Event ApproachSettlement.cs

New properties to merge:
- `BodyID`
- `BodyName`
- `StationAllegiance`
- `StationEconomies`
- `StationEconomy`
- `StationEconomy_Localised`
- `StationFaction`
- `StationGovernment`
- `StationGovernment_Localised`
- `StationServices`

### Event Cargo.cs

New properties to merge:
- `Inventory`

### Event DockSRV.cs

New properties to merge:
- `ID`
- `SRVType`
- `SRVType_Localised`

### Event DockingRequested.cs

New properties to merge:
- `LandingPads`

### Event EngineerCraft.cs

New properties to merge:
- `Ingredients`
- `Modifiers`

### Event EngineerProgress.cs

New properties to merge:
- `Engineers`

### Event FSDTarget.cs

New properties to merge:
- `RemainingJumpsInRoute`
- `StarClass`

### Event FSSSignalDiscovered.cs

New properties to merge:
- `SignalType`

### Event FighterDestroyed.cs

New properties to merge:
- `ID`

### Event FighterRebuilt.cs

New properties to merge:
- `ID`

### Event Fileheader.cs

New properties to merge:
- `Odyssey`

### Event LaunchSRV.cs

New properties to merge:
- `ID`
- `SRVType`
- `SRVType_Localised`

### Event Liftoff.cs

New properties to merge:
- `Body`
- `BodyID`
- `Multicrew`
- `NearestDestination`
- `OnPlanet`
- `OnStation`
- `StarSystem`
- `SystemAddress`
- `Taxi`

### Event Market.cs

New properties to merge:
- `CarrierDockingAccess`
- `StationType`

### Event Materials.cs

New properties to merge:
- `Encoded`
- `Manufactured`
- `Raw`

### Event MissionCompleted.cs

New properties to merge:
- `FactionEffects`
- `LocalisedName`
- `MaterialsReward`

### Event MissionRedirected.cs

New properties to merge:
- `LocalisedName`

### Event Missions.cs

New properties to merge:
- `Active`
- `Complete`
- `Failed`

### Event MultiSellExplorationData.cs

New properties to merge:
- `Discovered`

### Event Progress.cs

New properties to merge:
- `Exobiologist`
- `Soldier`

### Event Rank.cs

New properties to merge:
- `Exobiologist`
- `Soldier`

### Event RedeemVoucher.cs

New properties to merge:
- `Factions`

### Event Repair.cs

New properties to merge:
- `Items`

### Event RestockVehicle.cs

New properties to merge:
- `ID`
- `Type_Localised`

### Event SendText.cs

New properties to merge:
- `Sent`

### Event SquadronStartup.cs

New properties to merge:
- `CurrentRankName`
- `CurrentRankName_Localised`
- `SquadronID`

### Event Statistics.cs

New properties to merge:
- `Exobiology`
- `FLEETCARRIER`
- `Squadron`

### Event StoredModules.cs

New properties to merge:
- `Items`

### Event StoredShips.cs

New properties to merge:
- `ShipsHere`
- `ShipsRemote`

### Event Synthesis.cs

New properties to merge:
- `Materials`

### Event Touchdown.cs

New properties to merge:
- `Body`
- `BodyID`
- `Multicrew`
- `NearestDestination`
- `OnPlanet`
- `OnStation`
- `StarSystem`
- `SystemAddress`
- `Taxi`

### Event Undocked.cs

New properties to merge:
- `Multicrew`
- `Taxi`

### Event WingJoin.cs

New properties to merge:
- `Others`


---

## Notes

- **journout** = New/updated files
- **Update** = Old files
- Properties were extracted using regex pattern matching for public C# properties
