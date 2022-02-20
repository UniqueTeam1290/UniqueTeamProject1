package com.automation.pages;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class CheckingAccountPage extends BasePage{

    @FindBy(xpath = "//div/h1[contains(text(), 'Create Checking')]")
    public WebElement createCheckingTitle;

    @FindBy(xpath = "//label[@class='form-control-label']/strong[contains(text(),'Select Checking Account Type')]")
    public WebElement checkingAccountTypeLabel;

    String XPATH_CHECKING_ACCOUNT_TYPE = "//input[@id='%s']";


    public void verifyUserIsOnnewCheckingAccountPage() {
        Assert.assertTrue("Verify whether user is on CreateChecking page", createCheckingTitle.isDisplayed());
    }

    public void verifyUserIsAbleToSeeCheckingAccountType(){
        Assert.assertTrue("The Checking Account Type is missing",checkingAccountTypeLabel.isDisplayed());
    }


    public void verifyCheckingAccountTypeIsVisible(String arg0) {
        String acc = String.format(XPATH_CHECKING_ACCOUNT_TYPE,arg0);
        WebElement checkingAccType = driver.findElement(By.xpath(acc));
        checkingAccType.click();
    }
}
