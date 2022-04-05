
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
      cy.get('#R33227992996240665317_actions_button').click()
      cy.get('#R33227992996240665317_actions_menu_12i').click()
      cy.get('.ui-button--hot')
      
    })
  })
  