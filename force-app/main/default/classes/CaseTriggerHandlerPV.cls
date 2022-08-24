public with sharing class CaseTriggerHandlerPV {
    public static void createDefaultTask(List<Case> caseTriggerNew, List<Case> caseTriggerOld, Map<Id, Case> caseTriggerNewMap, Map<Id,Case> caseTriggerOldMap) {
        List<Task> taskList = new List<Task>();
        for (Case eachCase : caseTriggerNew) {
            Task newTask = new Task();
            newTask.Subject = 'Email';
            newTask.Priority = 'Normal';
            newTask.WhoId = eachCase.ContactId;
            newTask.WhatId = eachCase.Id;
            newTask.ActivityDate = date.today();
            taskList.add(newTask);
        }
        if(!taskList.isEmpty()){
            insert taskList;
        }
    }
}