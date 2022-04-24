
context('Unit testing APEX', () => {
    
  const loginPage  = 'https://apex.oracle.com/pls/apex/idework/r/game-shop/login?session=115330830766114'
  const pUsername   = 'admin'
  const pPassword   = 'admin'
  var   loggedInPage
  var   app_cookie
  var   pageUrl
  
  it('Visit the page', () => {
    // Arrange
    cy.viewport('macbook-16')
    cy.visit(loginPage)
    cy.get('[name^=P9999_USERNAME]').type(pUsername)
    cy.get('[name^=P9999_PASSWORD]').type(pPassword)
    cy.contains('Sign In').click()
    cy.contains('Orders').click()
    cy.contains('LinciusHerka').click()
    cy.get(':nth-child(3) > [headers="ROWID"] > a > [aria-label="Redaguoti"] > .fa').should('exist')
    cy.get(':nth-child(1) > [headers="ROWID"] > a > [aria-label="Redaguoti"] > .fa').click().wait(1000)
    cy.get(".ui-dialog").invoke("css", "height", "500px")
    //Assert
    cy.get('#ui-id-1').should('exist')//uzsakymas atidaromas
    //delete
    //cy.get('[class="t-Button t-Button--danger t-Button--simple"]').click() 
    //cy.get('.js-confirmBtn').click().should('exist') // confirm delete
    //cy.get(':nth-child(3) > [headers="ROWID"] > a > [aria-label="Redaguoti"] > .fa').should('not.exist')
  })
})
