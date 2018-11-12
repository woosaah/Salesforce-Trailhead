public with sharing class AccountController {
@AuraEnabled

public static List<Account> findAll() {
    return [SELECT Id, Name, Location__Latitude__s, Location__Longitude__s from Account where Location__Latitude__s != NULL AND Location__Longitude__s != NULL Limit 50];
}
}
