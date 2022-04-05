context('Unit testing APEX', () => {
    const loginPage  = 'https://apex.oracle.com/pls/apex/idework/r/game-shop/prisijungimas?session=4669082354153'
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
      cy.contains('Orders').click()
      const t0 = performance.now()
      cy.contains('LinciusHerka').click()
      // - visit a web page
      cy.wrap(performance.now()).then(t1 => {   // this is now a queued command which will 
        // only run after the previous command
cy.log(`Page load took ${t1 - t0} milliseconds.`);
})
      cy.contains('Linas')
      

      
      
    })
  })
  