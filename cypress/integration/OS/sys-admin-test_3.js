
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
       cy.get('#B14119114615988462449').click()
       cy.get('#P4_NEW_DISPLAY')
       .should('have.class', 'display_only')

       cy.get('#SR_R14119112517302462428_tab > .t-Tabs-link > span')
       .should('have.text', 'Įrašymo Operacijos')

       cy.get('#SR_R14119112721477462430_tab > .t-Tabs-link > span')
       .should('have.text', 'Atnaujinimo Operacijos')

       cy.get('#SR_R14119112931935462432_tab > .t-Tabs-link > span')
       .should('have.text', 'Ištrinimo Operacijos')
    })
  })
  