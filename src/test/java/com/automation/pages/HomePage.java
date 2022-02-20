package com.automation.pages;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class HomePage extends BasePage {

    @FindBy(xpath = "//div/h1[@id = 'page-title']")
    public WebElement dashboardTitle;

    @FindBy(xpath = "//div[@class = 'col-sm-8']/div/div/ol/li[contains(text(), 'Welcome')]")
    public WebElement welcomeMessage;

    @FindBy(id = "home-menu-item")
    public WebElement homeTitle;

    @FindBy(id = "checking-menu")
    public WebElement checkingCategory;

    @FindBy(id = "savings-menu")
    public WebElement savingsCategory;

    @FindBy(id = "external-accounts-menu")
    public  WebElement externalCategory;

    @FindBy(className = "menu-title")
    public WebElement transactionsTransfersTitle;

    @FindBy (id = "deposit-menu-item")
    public  WebElement depositCategory;

    @FindBy(id = "withdraw-menu-item")
    public WebElement withdrawCategory;

    @FindBy(id = "transfer-menu-item")
    public WebElement transferBetweenAccountsCategory;

    @FindBy(id = "visa-transfer-menu-item")
    public WebElement visaDirectTransferCategory;

    @FindBy(xpath = "//a/img[@class = 'user-avatar rounded-circle']")
    public WebElement userIcon;

    @FindBy(xpath = "//i[@class = 'fa fa-power -off']/..")
    public  WebElement logOutBtn;



    String XPATH_CHECKING_DROPDOWN = "//a[@id='%s-menu']";
    String XPATH_VIEW_CHECKING = "//a[@id='%s-menu-item']";



    public void verifyHomePage() {
        Assert.assertTrue("Please check whether you are on the home page.", dashboardTitle.isDisplayed());
    }

    public void verifyWelcomeMessage() {
        Assert.assertTrue("Check on welcome message", welcomeMessage.isDisplayed());
    }

//    public void verifyHomeTitle() {
//        Assert.assertTrue("Please check whether Home title is displayed.", homeTitle.isDisplayed());
//    }

    public void doLogOut(){
        userIcon.click();
        logOutBtn.click();
    }


    public void verifyUserClickOnDropDownButton(String arg0) {
        String dropDown = String.format(XPATH_CHECKING_DROPDOWN, arg0);
        WebElement clickOnDropDown = driver.findElement(By.xpath(dropDown));
        clickOnDropDown.click();
    }

    public void viewCheckingIsVisible(String arg0) {
        String view = String.format(XPATH_VIEW_CHECKING,arg0);
        WebElement viewChecking = driver.findElement(By.xpath(view));
        viewChecking.click();
    }


    public void userSelectNewChecking(String arg0) {
        String view = String.format(XPATH_VIEW_CHECKING,arg0);
        WebElement newChecking = driver.findElement(By.xpath(view));
        newChecking.click();
    }
}

