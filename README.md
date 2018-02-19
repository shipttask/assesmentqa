# 1.
Navigate to www.shipt.com and perform 'Get started' feature forms, fields and links validation.
1. Steps written into GetStartedFormsValidation.txt


# 2.
Found 2 bugs with iOS web application and iOS native application.
1. iOS Safari: Get Started Email filed edition issue (iOS_safari_email_field_issue.MP4)

Steps to reproduce:
 * 1. Navigate to www.shipt.com in Safari browser for iOS
 * 2. Scroll down to 'Enter zip to see stores in your area' field.
 * 3. Enter '12345' to Zip filed and click 'Get Started' button
 * 4. Srart typing email address and click 'Submit' button.
 
Expected behavior:

Entering/Edition email address should be without issues. After an email submission, a notification message about successfull action should appear. Submit button and email field should have rounded edges.

Actual behavior:

While typing an email address, a cursor appears under the email field, but not in the filed as expected. No notification message appears afted email sumbission. Submit button and Email field do not have rounded edges in contrast to all buttons and fields whithin the app.

2. iOS Native app: Select Store navigation issue (iOS_app_navigation_issue.MP4)

Steps to reproduce:
  * 1. Login to the App
  * 2. Select on of the stores available
  * 3. Scroll down to the middle of Categories
  * 4. Select 'Change Store' menu
  * 5. Select any other store
  
 Expected behavior:

New Store selected. All catagories are alligned from the  top.
 
 Actual behavior:

Store is selected, but Categories are not alligned from the top. They are in the middle position as it was in previos Store.
 
# 3.
1st bug - priority is 4. 2nd bug priority is 4. Both bugs are UI and ussability issues. 


# 4.
Customers table relates to Orders table like '1 to many'. Shoppers table relates to Orders table like '1 to many'. (tables_relations.pdf)
SQL query to select ID and Store tied to a specific Customer and Shopper in 'IDandSTORE.sql' script. Visualisation in 'sql_select.PNG'.


# 5.
Run GetStarted forms verificaion automation.
1. Download Sahi framework from http://sahipro.com/
or the direct link http://sahipro.com/static/builds/pro/install_sahi_pro_v750_20171222.jar
2. Istall Sahi Test Framework, after first run install the license  (license.data).
3. Put the file shipt_trial.sah into /sahi_pro/userdata/scripts folder
4. Start testrunner.sh with these parameters:
./testrunner.sh shipt_trial.sah https://google.com firefox  (trial_testrunner.gif)
5. After the test scipt finishes, navigate to Sahi Logs to verify results.

# 6.
I selected Sahi Test framework because it is a straightforward testing tool to maintain, develop, run and debug test scripts. Sahi is written on Java and can be run on all platforms. Sahi supports recording steps and provides plenty of predefined slectors, so it is easy to write test scripts on a fly. Sahi uses modified JavaScript and supports REST API. Sahi and generates usefull reports, i.e., in case of found issue, Sahi conveniently makes screenshots. No need to define wait statements for AJAX, it's done in the framework itself. All scripts can be run in parallel which reduces time spent on running.
