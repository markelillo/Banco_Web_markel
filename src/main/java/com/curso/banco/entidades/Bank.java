package com.curso.banco.entidades;

public class Bank {
  private static Customer[] customers;
  private static int        numberOfCustomers;

  static {
    customers = new Customer[3];
    numberOfCustomers = 0;
    
    //añadi 2 clienes con sus cuenas Bancarias
    
    addCustomer("Luis", "Ramos");
    Customer customer = Bank.getCustomer(0);
    customer.addAccount(new SavingsAccount(500.00, 0.05));
    customer.addAccount(new CheckingAccount(200.00, 500.00));   
    addCustomer("Carlos", "De la fuente");
    customer = Bank.getCustomer(1);
    customer.addAccount(new SavingsAccount(200.00, 0.03));
    addCustomer("juanma", "Rodriguez");
    customer = Bank.getCustomer(2);
    customer.addAccount(new SavingsAccount(200.00, 200.23));
    

    
    
  }

  public Bank() {
    // this constructor should never be called
  }

  public static void addCustomer(String f, String l) {
    int i = numberOfCustomers++;
    customers[i] = new Customer(f, l);
  }
  public static int getNumOfCustomers() {
    return numberOfCustomers;
  }
  public static Customer getCustomer(int customer_index) {
    return customers[customer_index];
  }
  public static  Customer[] getCustomers() {
	    return customers;
	  }
}
