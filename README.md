[0]: https://github.com/ricksolucoes/boss "Site do BOOS"

# RICKShowForm

**RICKShowForm** is a Delphi library designed to open one or more forms. Using delphi's Fluent Interface.

## ⚙️ Pre-requisites

1. Delphi FMX
2.  If you choose to use [BOOS][0] ```https://github.com/ricksolucoes/boss or https://github.com/HashLoad/boss```  the dependency manager, you will have the facility to install all frameworks that are [Pre-requisites](#pre-requisites) for the project.
3.  
## 💻 Installation

- By using BOOS
```shell
$ boss install https://github.com/ricksolucoes/RICKShowForm
```
- Manual Installation
  - Download the RICKShowForm;
  - Add the following folders to your project, in <em>Project &gt; Options &gt; Resource Compiler &gt; Directories and Conditionals &gt; Include file search path ``` ../RICKShowForm/src ```

 ## ⚡️ How to use the project

  Example of using the **RICKShowForm**
  
- How to show a form
```delphi  
  uses
    RICK.ShowForm;
  begin
    TRICKShowForm
      .New
        .Formulary(TPageView2) //Inform the form's class
        .ExecuteBefore(BeforeShow) //Procedure to be performed before show form
        .ExecuteAfter(AfterShowClose) //Procedure to be performed after show form
        .ChangeDefaultMainForm //Set the specified form as the main form
      .Show; //Open the formulary
  end;
```
- How to show two or more forms
```delphi  
  uses
    RICK.ShowForm;
  begin
    TRICKShowForm
      .New
        .Formulary(TPageView2) //Inform the form's class
        .ExecuteBefore(BeforeShow) //Procedure to be performed before show form
        .ExecuteAfter(AfterShowClose) //Procedure to be performed after show form
      .Show //Open the formulary
      .DoNewForm //Prepare new form to show
        .Formulary(TPageView3) //Inform the form's class
      .Show;  //Open the formulary
  end;
```
