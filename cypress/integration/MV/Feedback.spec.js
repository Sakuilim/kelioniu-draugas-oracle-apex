
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
      cy.get('[class="t-Icon fa fa-comment-o"]').click()
      cy.get('#apex_dialog_1')
      
      cy.get('[class="ui-button-icon ui-icon ui-icon-closethick"]').click()

      
      
    })
  })
  