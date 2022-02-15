package com.automation.utils;

import java.io.FileReader;
import java.io.IOException;
import java.util.Properties;

public class PropertyReader {

    public static String getProperty(String key) {

        Properties prop = new Properties();

        try {
            prop.load(new FileReader("src/test/resources/config/config.properties"));
        } catch (IOException e) {
            System.out.println("Error");
        } return prop.getProperty(key);
    }
}
