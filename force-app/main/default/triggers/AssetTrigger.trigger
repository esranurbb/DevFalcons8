trigger AssetTrigger on Asset (before insert, before update) {
    if(Trigger.isBefore){
        AssetTrriggerHandler.Assethandlerupdate(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
}