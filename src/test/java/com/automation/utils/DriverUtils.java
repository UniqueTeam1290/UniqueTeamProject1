package com.automation.utils;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

import java.util.Locale;
import java.util.concurrent.TimeUnit;

public class DriverUtils {

    static WebDriver driver;

    public static void createDriver() {

        String os = System.getProperty("os.name").toLowerCase();

        if (os.contains("mac")){
            System.setProperty("webdriver.chrome.driver", "src/test/resources/driver/chromedriver");
        }else {
            System.setProperty("webdriver.chrome.driver", "src/test/resources/driver/chromedriver.exe");
        }

//        System.setProperty("webdriver.chrome.driver", "src/test/resources/driver/chromedriver.exe");


        driver = new ChromeDriver();
        driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
    //    driver.get(PropertyReader.getProperty("app.url"));
       // driver.manage().window().maximize();
    }

    public static WebDriver getDriver(){

        return driver;
    }
}

