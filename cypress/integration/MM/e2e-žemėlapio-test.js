
context('Unit testing APEX', () => { // Vartotojo prijungimo duomenys
  const loginPage  = 'https://apex.oracle.com/pls/apex/idework/r/game-shop/prisijungimas'
  const pUsername   = 'admin'
  const pPassword   = 'admin'
  var   loggedInPage
  var   app_cookie
  var   pageUrl

  it('Visit the page', () => {
    // Arrange
    cy.visit(loginPage) // Prisijungiama prie sistemos
    cy.get('[name^=P9999_USERNAME]').type(pUsername)
    cy.get('[name^=P9999_PASSWORD]').type(pPassword)
    cy.contains('Sign In').click()
    cy.contains('Map').click()
   
    // - visit a web page
    // Act
    cy.wait(5000)
    cy.get('#B23510289232249114530 > .t-Button-label').click()
    // Assert
  })
})
