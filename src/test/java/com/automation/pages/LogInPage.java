package com.automation.pages;

import com.automation.utils.PropertyReader;
import org.junit.Assert;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

import java.util.ArrayList;
import java.util.List;

public class LogInPage extends BasePage{

    @FindBy (id = "username")
    public WebElement username;

    @FindBy(id ="password")
    WebElement password;

    @FindBy(id = "remember-me")
    WebElement rememberMeButton;

    @FindBy(id = "submit")
    WebElement submitButton;

    @FindBy (id = "username")
    public List<WebElement> listOfUserNameElements;


    public void doLogin() {
        username.sendKeys(PropertyReader.getProperty("login.username"));
        password.sendKeys(PropertyReader.getProperty("login.password"));
        submitButton.click();
    }

    public void openWebSite(){
        driver.get(PropertyReader.getProperty("app.url"));
    }

    public void verifyLogInPage(){
        Assert.assertTrue("Sign in button is not displayed", submitButton.isDisplayed());
    }
}


