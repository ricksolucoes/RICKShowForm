# RICKShowForm

<p align="center">
  <b>RICKShowForm</b> is a Delphi library designed to open one or more forms. Using delphi's Fluent Interface.<br> 
</p>


<h2>⚙️ Install</h2>
<p>*Pre-requisites Delphi FMX</p>
<li><strong>Installation with BOSS</strong>: <br>
<pre>$ boss install https://github.com/ricksolucoes/RICKShowForm</pre>

<li><strong>Manual Installation</strong>: <br>
Add the following folders to your project, in <em>Project &gt; Options &gt; Resource Compiler &gt; Directories and Conditionals &gt; Include file search path</em></li>
<pre><code>../RICKShowForm/src</code></pre>

<h2>⚡️ How to use the project</h2>
<br>
<li><strong>How to show a form.</strong>: <br><br>

<pre><span class="pl-k">uses</span>

  RICK.ShowForm;

<span class="pl-k">implementation</span>

begin
  inherited;
  TRICKShowForm
    .New
      .Formulary(TPageView2) //Inform the form's class
      .ExecuteBefore(BeforeShow) //Procedure to be performed before show form
      .ExecuteAfter(AfterShowClose) //Procedure to be performed after show form
      .ChangeDefaultMainForm //Set the specified form as the main form
    .Show; //Open the formulary
end;</span></pre>

<li><strong>How to show two or more forms.</strong>: <br><br>

<pre><span class="pl-k">uses</span>

  RICK.ShowForm;

<span class="pl-k">implementation</span>

begin
  inherited;
  TRICKShowForm
    .New
      .Formulary(TPageView2) //Inform the form's class
      .ExecuteBefore(BeforeShow) //Procedure to be performed before show form
      .ExecuteAfter(AfterShowClose) //Procedure to be performed after show form
    .Show //Open the formulary
    .ShowOther //Prepare new form to show
      .Formulary(TPageView3) //Inform the form's class
    .Show;  //Open the formulary
end;</span></pre>
