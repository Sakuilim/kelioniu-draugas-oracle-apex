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
    
    //Click on create order
    cy.get('[id="B6995565920356230632"]').click()

    //Input all order information
    cy.get('#P28_CLIENT_ID').select('user(email)')
    cy.get('#P28_ORDER_STATUS_ID').select('Užsakyta')
    cy.get('#P28_DISCOUNT_ID').select('10% (Naujas klientas)')
    cy.get('.oj-inputdatetime-calendar-icon').click()
    cy.get('#oj-dp-0-2-2-0-0 > .oj-enabled').click()
    cy.get('#P28_ORDER_INFO').type('Testas')
    cy.get('#P28_ORDER_RETURN_NUMBER').type('19998')

    //Click create
    cy.get('#B7053848912992470549').click()
    cy.get('[class="js-confirmBtn ui-button ui-corner-all ui-widget ui-button--hot"]').click()

    //Assert succesfull
    cy.get(':nth-child(3) > .fc-day-wed > .fc-daygrid-day-frame > .fc-daygrid-day-events > .fc-daygrid-event-harness > .fc-daygrid-event > .fc-event-main > .fc-event-title').should('have.text', 'name - user ( Užsakyta )')
   
  })
})