@automated
Feature: Credit acceptance rules


  @Priority-1 @WIP @UX
  Scenario: Transaction is done with a new customer
    # action: Sign in
    * check credit eligibility "$2000" "video"
    * search customer "john"
    * is existing customer ? "found"
    * create and print contract
    * create customer "john"
    * check prospect eligibility "Employed" "$100000"
    * signed contract ? "yes"
    * digitalize contract
    * attach contract to customer

  @Priority-1 @automated @Integration
  Scenario Outline: Transaction is done
    Complete transaction for existing customer
    # action: Sign in
    * check credit eligibility "<credit_amount>" "video"
    * search customer "John Smith"
    * is existing customer ? "found"
    * check prospect eligibility "Employed" "$100000"
    * create and print contract
    * signed contract ? "yes"
    * submit contract

    Examples:
      | credit_amount |
      | 800€ |
      | 1100€ |
      | 1250€ |
