login.feature



TASK-2:  Creating a test Scenario for Login




Feature: Testing the User login functionality

As a Registered user of your website

I want to be able to login

So that I can find the information I am looking for


Scenario Outline: Positive Login test

Given I browse to http://the-internet.herokuapp.com/login

When I enter my login details <username> and <password>

And I click the Login button

Then I should be taken to the Homepage


Examples: 

| username | password    |

| tomsmith | Password123 |






Scenario Outline: Negative Login test

Given I browse to http://the-internet.herokuapp.com/login

When I enter my login details <username> and <password>

And I click the Login button

Then an error <message> should be displayed


Examples: 

| username | password   | message |

| tomsmith | SuperSecretPassword!|Your username is invalid! |









Task 2.3 Automation framework 


package pages;

import org.openqa.selenium.By;
import util.DriverUtil;

public class LoginPage extends DriverUtil {
    By UsernameTextField = By.id("username");
    By PasswordTextField = By.id("password");
    By LoginButton = By.className("fa fa-2x fa-sign-in");


    String BaseUrl = "http://the-internet.herokuapp.com/login";

    public void launchurl() throws InterruptedException {
        driver.get(BaseUrl);
        Thread.sleep(5000);
    }

    public void username(){
        driver.findElement(UsernameTextField).sendKeys("tomsmith");
    }

    public void password(){
        driver.findElement(PasswordTextField).sendKeys("SuperSecretPassword!");
    }
    public void loginbutton(){
        driver.findElement(LoginButton).click();
    }
}

