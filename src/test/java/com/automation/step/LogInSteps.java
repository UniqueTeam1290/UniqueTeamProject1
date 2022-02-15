package com.automation.step;

import com.automation.pages.LogInPage;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class LogInSteps {

    LogInPage logInPage = new LogInPage();

    @Then("verify user is on the Login page")
    public void verifyUserIsOnTheLoginPage() {
        logInPage.verifyLogInPage();
    }

    @When("user logs in")
    public void userLogsIn() {
        logInPage.doLogin();
    }


    @Given("user open website")
    public void userOpenWebsite() {
        logInPage.openWebSite();
    }
}
