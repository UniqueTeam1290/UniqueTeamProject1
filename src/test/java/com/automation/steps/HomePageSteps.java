package com.automation.steps;

import com.automation.pages.HomePage;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import org.junit.Assert;

public class HomePageSteps {
    HomePage homePage = new HomePage();

    @Then("verify welcome message displayed on right top header")
    public void verifyWelcomeMessageDisplayedOnRightTopHeader() {
        homePage.verifyWelcomeMessage();
    }

    @Then("verify user is navigated to Home Page")
    public void verifyUserIsNavigatedToHomePage() {
        homePage.verifyHomePage();
    }

    @Then("user should see home title displayed")
    public void userShouldSeeHomeTitleDisplayed() {
        Assert.assertTrue("Please check whether Home title is displayed.", homePage.homeTitle.isDisplayed());
    }


    @Then("user should see Checking category on Home page")
    public void userShouldSeeCheckingCategoryOnHomePage() {
        Assert.assertTrue("Please check whether Checking category is displayed", homePage.checkingCategory.isDisplayed());
    }


    @Then("user should see Savings category on Home page")
    public void userShouldSeeSavingsCategoryOnHomePage() {
        Assert.assertTrue("Please check whether Savings category is displayed", homePage.savingsCategory.isDisplayed());
    }

    @Then("user should see External category on Home page")
    public void userShouldSeeExternalCategoryOnHomePage() {
        Assert.assertTrue("Please check whether External category is displayed", homePage.externalCategory.isDisplayed());
    }

    @Then("user should see TRANSACTIONS title on Home page")
    public void userShouldSeeTRANSACTIONSTRANSFERSTitleOnHomePage() {
        Assert.assertTrue("Please check whether Transactions/Transfers title is displayed", homePage.transactionsTransfersTitle.isDisplayed());
    }

    @And("user should see Deposit category")
    public void userShouldSeeDepositCategory() {
        Assert.assertTrue("Please check whether Deposit category is displayed)", homePage.depositCategory.isDisplayed());
    }

    @And("user should see Withdraw category")
    public void userShouldSeeWithdrawCategory() {
        Assert.assertTrue("Please check whether Withdraw category is displayed", homePage.withdrawCategory.isDisplayed());
    }

    @And("user should see Transfer Between Accounts category")
    public void userShouldSeeTransferBetweenAccountsCategory() {
        Assert.assertTrue("Please check whether Transfer Between Accounts is displayed", homePage.transferBetweenAccountsCategory.isDisplayed());
    }

    @And("user should  see VISA Direct Transfer category")
    public void userShouldSeeVISADirectTransferCategory() {
        Assert.assertTrue("Please check whether VISA Direct Transfer is displayed", homePage.visaDirectTransferCategory.isDisplayed());
    }
}
