
context('Unit testing APEX', () => {
  const loginPage  = 'https://apex.oracle.com/pls/apex/idework/r/game-shop/'
  const pUsername   = 'admin'
  const pPassword   = 'admin'
  var   loggedInPage
  var   app_cookie
  var   pageUrl
 
  it('Visit the page', () => {
    cy.visit(loginPage)
    cy.get('[name^=P9999_USERNAME]').type(pUsername)
    cy.get('[name^=P9999_PASSWORD]').type(pPassword)
    cy.contains('Sign In').click()
     // Act
    cy.contains(/^Audit$/).click()
     // Assert
    cy.get('[id="R14119112517302462428_search_field"]').type('clients')
    cy.get('[id="R14119112517302462428_search_button"]').click()
    cy.get('[class="a-IRR-pagination-label"]')
    .should('have.text', '1 - 19')
  })
})
