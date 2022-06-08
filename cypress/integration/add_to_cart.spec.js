describe('example to-do app', () => {
  beforeEach(() => {
       cy.visit('/')
  })
  it("navigates to the product detail page and adds to card", () => {
    cy.get(".products article")
    .first()
    .click()
    cy.get('.price')
    cy.contains("Add").click()
    cy.get('nav .nav-item').last()
    .should('include.text', '1')
  });
});

