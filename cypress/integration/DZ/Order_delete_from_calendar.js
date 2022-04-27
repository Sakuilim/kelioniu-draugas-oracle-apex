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

    // Click on order
    cy.get(':nth-child(3) > .fc-day-thu > .fc-daygrid-day-frame > .fc-daygrid-day-events > .fc-daygrid-event-harness > .fc-daygrid-event > .fc-event-main').click()

    // Delete order
    cy.get('#B7053848151090470548').click()
    cy.get('.js-confirmBtn').click()
    cy.get('#B7053847778808470548').click()

    // Assert succesfull
    cy.get(':nth-child(3) > .fc-day-thu > .fc-daygrid-day-frame > .fc-daygrid-day-events').should('have.value', '')
    
    


    // - visit a web page
   
  })
})