package com.automation.step;

import com.automation.pages.HomePage;
import com.automation.pages.LogInPage;
import com.automation.utils.DriverUtils;
import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.Scenario;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.WebElement;

import java.util.ArrayList;
import java.util.List;

public class Hooks {
    @Before
    public void setUp(){
        DriverUtils.createDriver();

    }

    @After
    public void cleanUp(){

          LogInPage logInPage = new LogInPage();
//        try {
//            if (!logInPage.username.isDisplayed()) { //home page
//            }
//        } catch (NoSuchElementException e){
//            HomePage homePage = new HomePage();
//            homePage.doLogOut();
//        }
            if (logInPage.listOfUserNameElements.size()==0){
                HomePage homePage = new HomePage();
                homePage.doLogOut();
            }

        DriverUtils.getDriver().quit();
    }
}
