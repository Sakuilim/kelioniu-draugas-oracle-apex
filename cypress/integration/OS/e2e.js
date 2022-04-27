context("Unit testing APEX", () => {
  const loginPage =
    "https://apex.oracle.com/pls/apex/idework/r/game-shop/login?session=115330830766114";
  const pUsername = "admin";
  const pPassword = "admin";

  it("Visit the page", () => {
    //login
    cy.visit(loginPage);
    cy.get("[name^=P9999_USERNAME]").type(pUsername);
    cy.get("[name^=P9999_PASSWORD]").type(pPassword);
    cy.contains("Sign In").click();

    //go to audit page
    cy.get(".is-active > .t-NavTabs-link").click();
    cy.get(":nth-child(6) > .t-NavTabs-link").click();

    // //serach
    cy.get("#R14119112517302462428_search_field").type("orders");
    cy.get("#R14119112517302462428_search_button").click();

    //filter
    cy.get("#R14119112517302462428_actions_button").click();
    cy.wait(1000);
    cy.get(
      "#R14119112517302462428_actions_menu_2 > .a-Menu-inner > .a-Menu-labelContainer"
    ).click();
    cy.get("#R14119112517302462428_column_name").select("Įrašo Sukūrimo Data");
    cy.wait(500);
    cy.get("#R14119112517302462428_DATE_OPT").select("<=");
    cy.wait(500);
    cy.get('[style=""] > .ui-datepicker-trigger > .a-Icon').click();
    cy.get(".ui-datepicker-prev > .ui-icon").click();
    cy.wait(500);
    cy.get(":nth-child(3) > :nth-child(2) > .ui-state-default").click();
    cy.wait(500);
    cy.get(".ui-button--hot").click();
    cy.wait(1000);

    //download
    cy.get("#R14119112517302462428_actions_button").click();
    cy.get(
      "#R14119112517302462428_actions_menu_12 > .a-Menu-inner > .a-Menu-labelContainer"
    ).click();
    cy.wait(500);

    cy.get('[data-value="HTML"]').click();
    cy.get('[data-value="XLSX"]').click();
    cy.get(".ui-dialog-buttonset > :nth-child(1)").click();
    cy.wait(500);

    // cy.get(".ui-button--hot").click();
    // cy.wait(500);
    // cy.get('.ui-dialog-titlebar > .ui-button').click();

    cy.get(
      ".a-IRR-controls-item--filter > .a-IRR-controls-cell--remove > .a-Button > .a-Icon"
    ).click();
    cy.get("#B15685049267460448003").click();
    cy.wait(500);
    cy.get(".ui-button").click();
    cy.get("#B15685049192163448002").click();
    cy.wait(500);
    cy.get(".ui-button").click();
    // cy.wait(500);
    // cy.get("#SR_R14119112721477462430_tab > .t-Tabs-link").click();
    cy.wait(500);
    //highlight
    cy.get("#R14119112517302462428_actions_button").click();
    cy.wait(500);
    cy.get(
      "#R14119112517302462428_actions_menu_4 > :nth-child(1) > .a-Menu-accelContainer > .a-Menu-subMenuCol"
    ).click();
    cy.wait(500);
    cy.get(
      "#R14119112517302462428_actions_menu_4_1 > .a-Menu-inner > .a-Menu-labelContainer"
    ).click();
    cy.wait(500);
    cy.get('#R14119112517302462428_highlight_name').type("Test highlight");
    cy.get('#R14119112517302462428_bg_color').type("#77FCF3");
    cy.get('#R14119112517302462428_font_color').type("#6A0F49");
    cy.get('#R14119112517302462428_column_name').select("Objekto Pavadinimas");
    cy.get('#R14119112517302462428_expression').type("orders");
    cy.get('.ui-button--hot').click();
    cy.wait(500);
    cy.get('.a-IRR-controls-cell--remove > .a-Button > .a-Icon').click();
    cy.get('#B14119114615988462449').click();
    cy.get('#SR_R14119112931935462432_tab > .t-Tabs-link').click();
    cy.wait(1000);
    cy.get('#L32171320749107349283').click();
    cy.get('#menu_L32171320749107349283_1 > .a-Menu-inner').click();
  });
});