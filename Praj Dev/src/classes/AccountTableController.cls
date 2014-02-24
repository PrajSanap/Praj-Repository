public class AccountTableController 
{
	public static List<Account> lstAccount {get;set;}
	
	public AccountTableController()
	{
		lstAccount = [select Id, Name from Account];
		system.debug('-----lstAccount------'+lstAccount);	
	}
	
	public void displayGoals()
	{
		List<Goal__c> lstAccGoal = new List<Goal__c>();
		List<Goal__c> lstGoal = [Select Id, Name, Goal_Amount__c 
							  from Goal__c where Account__c IN: lstAccount];
		system.debug('-------lstGoal----------'+lstGoal);							  
	}
	
}