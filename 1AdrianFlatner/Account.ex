<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:exercise="platform:/plugin/no.hal.learning.exercise.model/model/exercise.ecore" xmlns:jdt="platform:/plugin/no.hal.learning.exercise.jdt/model/jdt-exercise.ecore" xmlns:junit="platform:/plugin/no.hal.learning.exercise.junit/model/junit-exercise.ecore" xmlns:workbench="platform:/plugin/no.hal.learning.exercise.workbench/model/workbench-exercise.ecore">
  <exercise:Exercise>
    <parts xsi:type="exercise:ExercisePart" title="Account">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the Account class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="stateandbehavior.Account"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the Account class, to test it."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="stateandbehavior.Account"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the Account class, by running the AccountTest JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="stateandbehavior.AccountTest"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="Using Eclipse">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use breakpoints to debug code."/>
        <a xsi:type="workbench:DebugEventAnswer" action="suspend.breakpoint"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use the debug command Step Over"/>
        <a xsi:type="workbench:CommandExecutionAnswer" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use the debug command Step Into"/>
        <a xsi:type="workbench:CommandExecutionAnswer" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use the Variables view"/>
        <a xsi:type="workbench:PartTaskAnswer" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
      </tasks>
    </parts>
  </exercise:Exercise>
  <exercise:ExerciseProposals exercise="/0">
    <proposals exercisePart="/0/@parts.0">
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.0/@q" answer="/0/@parts.0/@tasks.0/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1516717919043" resourcePath="/ovinger/src/stateandbehavior/Account.java" sizeMeasure="49" className="stateandbehavior.Account">
          <edit xsi:type="exercise:StringEdit" storedString="package stateandbehavior;&#xA;&#xA;public class Account {&#xA;&#xA;&#x9;double balance;&#xA;&#x9;double interestRate;&#xA;&#x9;&#xA;&#x9;double getBalance() {&#xA;&#x9;&#x9;return balance;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;double getInterestRate() {&#xA;&#x9;&#x9;return interestRate;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;void deposit(double amount) {&#xA;&#x9;&#x9;if (amount > 0) {&#xA;&#x9;&#x9;&#x9;balance = balance + amount;&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;void addInterest() {&#xA;&#x9;&#x9;balance += (balance*interestRate);&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;void setInterestRate(double interest) {&#xA;&#x9;&#x9;interestRate = interest;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;Account account = new Account();&#xA;&#x9;&#x9;System.out.println(account.getBalance());&#xA;&#x9;&#x9;account.deposit(100.00);&#xA;&#x9;&#x9;System.out.println(account.getBalance());&#xA;&#x9;&#x9;account.setInterestRate(0);&#xA;&#x9;&#x9;account.addInterest();&#xA;&#x9;&#x9;System.out.println(account.getBalance());&#xA;&#x9;&#x9;System.out.println(account.toString());&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public String toString() {&#xA;&#x9;&#x9;return Double.toString(balance);&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1516718018330" resourcePath="/ovinger/src/stateandbehavior/Account.java" sizeMeasure="49" className="stateandbehavior.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=".4" edit="/1/@proposals.0/@proposals.0/@attempts.0/@edit" start="648" end="-194"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1516718244842" resourcePath="/ovinger/src/stateandbehavior/Account.java" sizeMeasure="49" className="stateandbehavior.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="5.12" edit="/1/@proposals.0/@proposals.0/@attempts.1/@edit" start="647" end="-194"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1516718260507" resourcePath="/ovinger/src/stateandbehavior/Account.java" sizeMeasure="49" className="stateandbehavior.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="0.4" edit="/1/@proposals.0/@proposals.0/@attempts.2/@edit" start="647" end="-194"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1516718341979" resourcePath="/ovinger/src/stateandbehavior/Account.java" sizeMeasure="49" className="stateandbehavior.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="(interestRate/100)" edit="/1/@proposals.0/@proposals.0/@attempts.3/@edit" start="329" end="-503"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.1/@q" answer="/0/@parts.0/@tasks.1/@a">
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1516717428483" mode="run" className="stateandbehavior.Account">
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrValues>stateandbehavior.Account</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <consoleOutput>0.0&#xD;
100.0&#xD;
140.0&#xD;
140.0&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1516717442027" mode="run" className="stateandbehavior.Account">
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrValues>stateandbehavior.Account</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <consoleOutput>0.0&#xD;
100.0&#xD;
140.0&#xD;
140.0&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1516717676614" mode="run" className="stateandbehavior.Account">
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrValues>stateandbehavior.Account</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <consoleOutput>0.0&#xD;
100.0&#xD;
140.0&#xD;
140.0&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1516717929418" mode="run" className="stateandbehavior.Account">
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrValues>stateandbehavior.Account</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <consoleOutput>0.0&#xD;
100.0&#xD;
100.0&#xD;
100.0&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1516717974384" mode="run" className="stateandbehavior.Account">
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrValues>stateandbehavior.Account</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <consoleOutput>0.0&#xD;
100.0&#xD;
100.0&#xD;
100.0&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1516718018280" mode="run" className="stateandbehavior.Account">
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrValues>stateandbehavior.Account</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <consoleOutput>0.0&#xD;
100.0&#xD;
140.0&#xD;
140.0&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1516718248424" mode="run" className="stateandbehavior.Account">
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrValues>stateandbehavior.Account</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <consoleOutput>0.0&#xD;
100.0&#xD;
612.0&#xD;
612.0&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1516718343805" mode="run" className="stateandbehavior.Account">
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrValues>stateandbehavior.Account</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <consoleOutput>0.0&#xD;
100.0&#xD;
100.4&#xD;
100.4&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1516718691384" mode="run" className="stateandbehavior.Account">
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrValues>stateandbehavior.Account</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <consoleOutput>0.0&#xD;
100.0&#xD;
100.4&#xD;
100.4&#xD;
</consoleOutput>
        </attempts>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.2/@q" answer="/0/@parts.0/@tasks.2/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1516717595080" completion="0.75" testRunName="stateandbehavior.AccountTest" successCount="3" failureCount="1">
          <successTests>testDeposit</successTests>
          <successTests>testDepositNegative</successTests>
          <successTests>testConstructor</successTests>
          <failureTests>testAddInterest</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1516717656133" completion="0.75" testRunName="stateandbehavior.AccountTest" successCount="3" failureCount="1">
          <successTests>testDeposit</successTests>
          <successTests>testDepositNegative</successTests>
          <successTests>testConstructor</successTests>
          <failureTests>testAddInterest</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1516717840601" completion="0.75" testRunName="stateandbehavior.AccountTest" successCount="3" failureCount="1">
          <successTests>testDeposit</successTests>
          <successTests>testDepositNegative</successTests>
          <successTests>testConstructor</successTests>
          <failureTests>testAddInterest</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1516717921284" completion="0.75" testRunName="stateandbehavior.AccountTest" successCount="3" failureCount="1">
          <successTests>testDeposit</successTests>
          <successTests>testDepositNegative</successTests>
          <successTests>testConstructor</successTests>
          <failureTests>testAddInterest</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1516718139129" completion="0.75" testRunName="stateandbehavior.AccountTest" successCount="3" failureCount="1">
          <successTests>testDeposit</successTests>
          <successTests>testDepositNegative</successTests>
          <successTests>testConstructor</successTests>
          <failureTests>testAddInterest</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1516718351379" completion="1.0" testRunName="stateandbehavior.AccountTest" successCount="4">
          <successTests>testAddInterest</successTests>
          <successTests>testDeposit</successTests>
          <successTests>testDepositNegative</successTests>
          <successTests>testConstructor</successTests>
        </attempts>
      </proposals>
    </proposals>
    <proposals exercisePart="/0/@parts.1">
      <proposals xsi:type="workbench:DebugEventProposal" question="/0/@parts.1/@tasks.0/@q" answer="/0/@parts.1/@tasks.0/@a"/>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.1/@tasks.1/@q" answer="/0/@parts.1/@tasks.1/@a"/>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.1/@tasks.2/@q" answer="/0/@parts.1/@tasks.2/@a"/>
      <proposals xsi:type="workbench:PartTaskProposal" question="/0/@parts.1/@tasks.3/@q" answer="/0/@parts.1/@tasks.3/@a">
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1516717733282" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
      </proposals>
    </proposals>
  </exercise:ExerciseProposals>
</xmi:XMI>
