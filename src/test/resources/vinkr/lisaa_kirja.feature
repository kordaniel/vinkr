Feature: Käyttäjä voi lisätä järjestelmään kirjamuotoisen lukuvinkin, jolla on otsikko, kirjoittaja ja ISBN

    Scenario: Kirja lisätään, kun kaikki pyydetyt tiedot annetaan
        Given komento "lisaa" annetaan ohjelmalle
        When  otsikko "Clean Code: A Handbook of Agile Software Craftsmanship", kirjoittaja "Martin, Robert" ja ISBN "978-0132350884" annetaan
        Then  ohjelma vastaa tulosteella "Kirja lisätty"

    Scenario: Kirja lisätään, kun ainoastaan otsikko annetaan
        Given komento "lisaa" annetaan ohjelmalle
        When  otsikko "Clean Code: A Handbook of Agile Software Craftsmanship", kirjoittaja "" ja ISBN "" annetaan
        Then  ohjelma vastaa tulosteella "Kirja lisätty"

