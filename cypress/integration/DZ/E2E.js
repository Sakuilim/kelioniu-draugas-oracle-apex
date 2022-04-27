context('Unit testing APEX', () => {
  const loginPage  = 'https://apex.oracle.com/pls/apex/idework/r/game-shop/login?session=115330830766114'
  const pUsername   = 'admin'
  const pPassword   = 'admin'
 
  it('Visit the page', () => {
    // Arrange
    cy.visit(loginPage)
    // Log in
    cy.get('[name^=P9999_USERNAME]').type(pUsername)
    cy.get('[name^=P9999_PASSWORD]').type(pPassword)
    cy.contains('Sign In').click()

    // Go to calendar
    cy.contains('Calendar').click()
    
    cy.get('.fc-next-button').click().wait(500) // Next month
    cy.get('.fc-toolbar-title').should('have.text', '2022 m. gegužė')
    cy.get('.fc-prev-button').dblclick().wait(500) // Previous month
    cy.get('.fc-toolbar-title').should('have.text', '2022 m. kovas')
    cy.get('.fc-today-button').click().wait(500) // Today
    cy.get('.fc-toolbar-title').should('have.text', '2022 m. balandis')

    cy.get('#B6995565920356230632').click() //Order creation

    // Input data
    cy.get('#P28_CLIENT_ID').select('user(email)')
    cy.get('#P28_ORDER_STATUS_ID').select('Užsakyta')
    cy.get('#P28_DISCOUNT_ID').select('10% (Naujas klientas)')
    cy.get('.oj-inputdatetime-calendar-icon').click()
    cy.get('#oj-dp-0-4-3-0-0 > .oj-enabled').click()
    cy.get('#P28_ORDER_INFO').type('E2E testas')
    cy.get('#P28_ORDER_RETURN_NUMBER').type('4445')
    cy.get('#B7053848912992470549').click() // Create order
    cy.get('.js-confirmBtn').click()

    // Assertion correct
    cy.get('.fc-day-thu > .fc-daygrid-day-frame > .fc-daygrid-day-events > .fc-daygrid-event-harness > .fc-daygrid-event > .fc-event-main > .fc-event-title').should('have.text', 'name - user ( Užsakyta )')    

    cy.get('.fc-apexListButton-button').click() // Click 'darbotvarke'
    cy.get('.fc-dayGridMonth-button').click()

    cy.get('.fc-day-thu > .fc-daygrid-day-frame > .fc-daygrid-day-events > .fc-daygrid-event-harness > .fc-daygrid-event > .fc-event-main').click() // Click on order

    // Update data
    cy.get('#P28_CLIENT_ID').select('vartotojas(info@vardas.lt)')
    cy.get('#P28_ORDER_STATUS_ID').select('Užsakyta')
    cy.get('#P28_DISCOUNT_ID').select('50% (Black Friday)')
    cy.get('.oj-inputdatetime-calendar-icon').click()
    cy.get('#oj-dp-0-4-2-0-0 > .oj-enabled').click()
    cy.get('#P28_ORDER_INFO').clear().type('update')
    cy.get('#P28_ORDER_RETURN_NUMBER').clear().type('4411')
    cy.get('#B7053848544673470549').click() // Update order
    cy.get('.js-confirmBtn').click()
    cy.get(':nth-child(5) > .fc-day-wed > .fc-daygrid-day-frame > .fc-daygrid-day-events > .fc-daygrid-event-harness > .fc-daygrid-event > .fc-event-main').should('have.text', 'vardas - vartotojas ( Užsakyta )')

    cy.get(':nth-child(5) > .fc-day-wed > .fc-daygrid-day-frame > .fc-daygrid-day-events > .fc-daygrid-event-harness > .fc-daygrid-event').click() //Click on updated order
    // Delete order from calendar
    cy.get('#B7053848151090470548').click()
    cy.get('.js-confirmBtn').click()
    cy.get('#B7053847778808470548').click()

    cy.get(':nth-child(5) > .fc-day-wed > .fc-daygrid-day-frame > .fc-daygrid-day-events').should('have.value', '')
    
    cy.window().document().then(function (doc) {
      doc.addEventListener('click', () => {
        setTimeout(function () { doc.location.reload() }, 1000)
      })
      cy.contains('CSV').click()
      cy.readFile("cypress/downloads/calendar_2022_m._balandis.csv").should('exist')
    })
    cy.window().document().then(function (doc) {
      doc.addEventListener('click', () => {
        setTimeout(function () { doc.location.reload() }, 1000)
      })
      cy.contains('iCal').click().reload()
      cy.readFile("cypress/downloads/calendar_2022_m._balandis.ics").should('exist')
    })
    cy.window().document().then(function (doc) {
      doc.addEventListener('click', () => {
        setTimeout(function () { doc.location.reload() }, 1000)
      })
      cy.contains('XML').click()
      cy.readFile("cypress/downloads/calendar_2022_m._balandis.xml").should('exist')
    })
  
    // - visit a web page
   
  })
})