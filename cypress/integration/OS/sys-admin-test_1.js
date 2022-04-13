context("Unit testing APEX", () => {
  const loginPage = "https://apex.oracle.com/pls/apex/idework/r/game-shop/";
  const pUsername = "admin";
  const pPassword = "admin";
  var loggedInPage;
  var app_cookie;
  var pageUrl;

  function searchTest(str){
    cy.get('#R14119112517302462428_search_field').type(str);
    cy.get('[id="R14119112517302462428_search_button"]').click();
     // cy.get('.a-IRR-controls-cell--remove > .a-Button > .a-Icon').click()
    cy.get(':nth-child(2) > [headers="C14119113254974462435"]').should(
      "have.text",
      str
    );
  }
  it("Visit the page", () => {
    cy.visit(loginPage);
    cy.get("[name^=P9999_USERNAME]").type(pUsername);
    cy.get("[name^=P9999_PASSWORD]").type(pPassword);
    cy.contains("Sign In").click();
    // Act
    cy.contains(/^Audit$/).click();
    // Assert
    // var values= ["orders", "discounts", "clients"]
    // values.forEach(element => {
    //   searchTest(element);
    //   // cy.get('.a-IRR-controls-cell--remove > .a-Button > .a-Icon').click()
    //   cy.get('.a-IRR-controls-cell--remove > .a-Button').click()
      
    // });
    var value1 = 'discounts'
    var value2 = 'clients'
    var value3 = 'orders'

    cy.get('#R14119112517302462428_search_field').type(value1);
    cy.get('[id="R14119112517302462428_search_button"]').click();
    cy.get(':nth-child(2) > [headers="C14119113254974462435"]').should(
      "have.text",
      value1
    );
    cy.get('.a-IRR-controls-cell--remove > .a-Button > .a-Icon').click()
    cy.get('#R14119112517302462428_search_field').type(value2);
    cy.get('[id="R14119112517302462428_search_button"]').click();
    cy.get(':nth-child(2) > [headers="C14119113254974462435"]').should(
      "have.text",
      value2
    );
    cy.get('.a-IRR-controls-cell--remove > .a-Button > .a-Icon').click()
    cy.get('#R14119112517302462428_search_field').type(value3);
    cy.get('[id="R14119112517302462428_search_button"]').click();
    cy.get('[id="R14119112517302462428_search_button"]').click();
    cy.get(':nth-child(2) > [headers="C14119113254974462435"]').should(
      "have.text",
      value3
    );
    cy.get('#SR_R14119112721477462430_tab > .t-Tabs-link > span')

  });
});
