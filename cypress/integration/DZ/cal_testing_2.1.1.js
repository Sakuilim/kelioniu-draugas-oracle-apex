context('Unit testing APEX', () => {
  const loginPage  = 'https://apex.oracle.com/pls/apex/idework/r/game-shop/login?session=115330830766114'
  const pUsername   = 'admin'
  const pPassword   = 'admin'
  var   loggedInPage
  var   app_cookie
  var   pageUrl
 
  it('Visit the page', () => {
    // Arrange
    cy.visit(loginPage)
    cy.get('[name^=P9999_USERNAME]').type(pUsername)
    cy.get('[name^=P9999_PASSWORD]').type(pPassword)
    cy.contains('Sign In').click()
    cy.contains('Calendar').click()

    cy.get('[class="fc-toolbar-title"]').should('have.text', '2022 m. balandis')
    cy.get('[class="fc-col-header-cell-cushion "]')
    .first()
    .should('have.text', 'pr')
    // - visit a web page
   
    
  })
})