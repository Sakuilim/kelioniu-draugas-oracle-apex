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
    cy.contains('Clients').click()
    cy.get('#R33227992996240665317_actions_button').click().wait(500)
    cy.get('#R33227992996240665317_actions_menu_12i').click()

    cy.contains('CSV').click()
    cy.get('.ui-button--hot').should('be.visible').wait(1000)

    cy.contains('HTML').click()
    cy.get('.ui-button--hot').should('be.visible').wait(1000) 
   
    cy.contains('Excel').click()
    cy.get('.ui-button--hot').should('be.visible').wait(1000)

    cy.contains('PDF').click()
    cy.get('.ui-button--hot').should('be.visible').wait(1000)
    
    //cy.readFile("cypress/downloads/Report 1.pdf").should('exist')
    cy.get('.ui-button--hot').click() //d
    
  })
})
