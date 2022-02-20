package com.automation.steps;

import com.automation.pages.CheckingAccountPage;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;

public class CheckingAccountSteps {

    CheckingAccountPage checkingAccountPage = new CheckingAccountPage();

    @Then("user should be redirected to Create Checking page")
    public void userShouldBeRedirectedToCreateCheckingPage() {
        checkingAccountPage.verifyUserIsOnnewCheckingAccountPage();
    }

    @When("user is on New Checking page")
    public void userIsOnNewCheckingPage() {
        checkingAccountPage.verifyUserIsOnnewCheckingAccountPage();
    }

    @And("user should be able to see Select Checking Account Type")
    public void userShouldBeAbleToSeeSelectCheckingAccountType() {
        checkingAccountPage.verifyUserIsAbleToSeeCheckingAccountType();
    }

    @Then("Verify {string} is visible")
    public void verifyIsVisible(String arg0) {
        checkingAccountPage.verifyCheckingAccountTypeIsVisible(arg0);
    }
}
