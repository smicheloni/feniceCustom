INSTRUCTIONS TO REPRODUCE CONTAINER FUNCTIONALITY ON ZECA PRODUCTION

CHANGES ON DATABASE

1.- Log in with role SystemAdministrator
    Execute the 11 packins in the same alphanumeric order as their names.

    On Zeca test server, I have created the followinw folders to execute the packout:

    Folder
        /home/ADempiere/migration/01-packin/20191125_Packin_Container/20191124_Container_without_Smart_Browser/packOut

    Path 
        So, for the file 01_DD_FreightNewOhneWFOhneFenster.zip, the path should be
    /home/ADempiere/migration/01-packin/20191125_Packin_Container/20191124_Container_without_Smart_Browser/packOut/01_DD_FreightNewOhneWFOhneFenster.zip


    Packin folder:
    /home/ADempiere/Temp


    Packin Path on Zeca production server
    On Zeca production server, you should also have a folder to copy the zip files and another one to unzip the packins.


2.- Then you should run the SQL files
    Make sure there is none error.
    

3.- Log in as user "Admin"
    Create manually the Document Type "Freight Order" (subtype=Freight Order).
    This is the document type to be used for Freight Orders.


4.- Run the process "Role Access Update" for the role you want the window "Freight Order" etc. to be updated.


5.- Log in with role SystemAdministrator
    Make sure that
    a) A new window "Freight Order" has been created on the menu.
       (You can place the window in the different trees, as you please)
    b) This window has a button to create from Purchase Order.
    c) There is a process for this button and a parameter which has a validation for completed Material Receipts.
    d) The window "Material Receipt" must have a button to create from Freight Order.
    e) The button must refer to a process with a parameter which has a validation for completed Freight Orders.


6.- Log in as user "Admin"
    Make sure that
    a) For the roles wished, the window "Freight Order" is allowed.
    b) In the trees of every role, the window "Freight Order" is allowed on the place you want.


7.- Define "Reference Key" for button columns
    It is possible that a "Reference Key"for the buttons have to be defined.
    I haven't defined them yet, only dynamic validations.
        

CHANGES ON PROGRAM

1.- Processes
    The processes are in package SHW_ContainerManagement_Java18.jar 

2.- Installation 
    The package must be installed in Adempiere.
    Usually it should go into $ADEMPIERE_HOME/packages/PACKAGE_NAME/lib.
    "PACKAGE_NAME" is a name you want.

    As the installation of Zeca differs from the standard how Adempiere is installed, the classes of the package should be somehow brought into the installation.
