public with sharing class AssetTrriggerHandler {
    public static void Assethandlerupdate(List<Asset> assetTriggerNew, 
                                        List<Asset> assetTriggerOld, 
                                        Map<Id, Asset> assetTrihherNewMap, 
                                        Map<Id, Asset> assetTriggerOldMap) {
        for (Asset eachAsset : assetTriggerNew) {
            if(eachAsset.Status != 'Shipped'){
                eachAsset.Status.addError('System will only accept \'Shipped\'.');
            }
        }
    }
}
