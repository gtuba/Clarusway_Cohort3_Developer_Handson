trigger preventShowDateSelection on Open_House_Show_Agent__c (before insert, before update) {
    // Get the list of show agents being updated/created
    List<Open_House_Show_Agent__c> showAgents = Trigger.new;
    // Get the list of shows booked for the selected dates
    Set<Date> selectedDates = new Set<Date>();
    for (Open_House_Show_Agent__c showAgent : showAgents) {
        selectedDates.add(showAgent.Show_Date__c);
    }
    List<Open_House_Show__c> shows = [SELECT Id, Show_Date__c FROM Open_House_Show__c WHERE Show_Date__c IN :selectedDates];
    // Create a map of show dates to booked shows
    Map<Date, Set<Id>> showDateMap = new Map<Date, Set<Id>>();
    for (Open_House_Show__c show : shows) {
        if (!showDateMap.containsKey(show.Show_Date__c)) {
            showDateMap.put(show.Show_Date__c, new Set<Id>());
        }
        showDateMap.get(show.Show_Date__c).add(show.Id);
    }
    // Check if any selected show date has a show booked
    for (Open_House_Show_Agent__c showAgent : showAgents) {
        if (showDateMap.containsKey(showAgent.Show_Date__c) && showDateMap.get(showAgent.Show_Date__c).size() > 0) {
            showAgent.addError('Another show is already booked for this date. Please select a different date.');
        }
    }
}