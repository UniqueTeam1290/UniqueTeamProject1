package com.automation.steps;

import com.automation.pages.HomePage;
import com.automation.pages.LogInPage;
import com.automation.utils.DriverUtils;
import io.cucumber.java.After;
import io.cucumber.java.Before;

public class Hooks {
    @Before
    public void setUp(){
        DriverUtils.createDriver();

    }

    @After
    public void cleanUp(){


        try {
            HomePage homePage = new HomePage();
            homePage.doLogOut();
        } catch (Exception ignored){

        }

//        LogInPage logInPage = new LogInPage();
//            if (logInPage.listOfUserNameElements.size()==0){
//                HomePage homePage = new HomePage();
//                homePage.doLogOut();
//            }

        DriverUtils.getDriver().quit();
    }
}
