<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:exercise="platform:/plugin/no.hal.learning.exercise.model/model/exercise.ecore" xmlns:jdt="platform:/plugin/no.hal.learning.exercise.jdt/model/jdt-exercise.ecore" xmlns:junit="platform:/plugin/no.hal.learning.exercise.junit/model/junit-exercise.ecore" xmlns:workbench="platform:/plugin/no.hal.learning.exercise.workbench/model/workbench-exercise.ecore">
  <exercise:Exercise>
    <parts xsi:type="exercise:ExercisePart" title="Account">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the Account class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="encapsulation.Account"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the Account class, to test it."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="encapsulation.Account"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the Account class, by running the AccountTest JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="encapsulation.AccountTest"/>
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
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1517228166416" resourcePath="/ovinger/src/encapsulation/Account.java" sizeMeasure="5" className="encapsulation.Account">
          <edit xsi:type="exercise:StringEdit" storedString="package encapsulation;&#xA;&#xA;public class Account {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1517229737656" resourcePath="/ovinger/src/encapsulation/Account.java" sizeMeasure="68" errorCount="3" className="encapsulation.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;private double balance;&#xA;&#x9;private double interestRate;&#xA;&#x9;&#xA;&#x9;public Account(double initialValue, double interestRate ) {&#xA;&#x9;&#x9;checkIfNegative(initialValue);&#xA;&#x9;&#x9;checkIfNegative(interestRate);&#xA;&#x9;&#x9;this.balance = balance + initialValue;&#xA;&#x9;&#x9;this.interestRate = interestRate;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void checkIfNegative(double value) {&#xA;&#x9;&#x9;if(value &lt; 0) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Number can't be negative&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public double getBalance() {&#xA;&#x9;&#x9;return balance;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;double getInterestRate() {&#xA;&#x9;&#x9;return interestRate;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;void deposit(double amount) {&#xA;&#x9;&#x9;if (amount > 0) {&#xA;&#x9;&#x9;&#x9;balance = balance + amount;&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;void addInterest() {&#xA;&#x9;&#x9;balance += (balance*(interestRate/100));&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;void setInterestRate(double interest) {&#xA;&#x9;&#x9;interestRate = interest;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;Account account = new Account(200.0, 0.4);&#xA;&#x9;&#x9;System.out.println(account.getBalance());&#xA;&#x9;&#x9;account.deposit(100.00);&#xA;&#x9;&#x9;System.out.println(account.getBalance());&#xA;&#x9;&#x9;account.setInterestRate(0.4);&#xA;&#x9;&#x9;account.addInterest();&#xA;&#x9;&#x9;System.out.println(account.getBalance());&#xA;&#x9;&#x9;System.out.println(account.toString());&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public String toString() {&#xA;&#x9;&#x9;return Double.toString(balance);&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;public void withdraw(double) {&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;}&#xA;&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.0/@edit" start="48" end="-2"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="66" charStart="1330" charEnd="1331" severity="2" problemCategory="20" problemType="1610612968"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1517229760470" resourcePath="/ovinger/src/encapsulation/Account.java" sizeMeasure="68" errorCount="1" className="encapsulation.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="//}&#xA;&#x9;//public void withdraw(double) {&#xA;&#x9;&#x9;&#xA;&#x9;//" edit="/1/@proposals.0/@proposals.0/@attempts.1/@edit" start="1223" end="-9"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="66" charStart="1336" charEnd="1337" severity="2" problemCategory="20" problemType="1610612976"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1517229849190" resourcePath="/ovinger/src/encapsulation/Account.java" sizeMeasure="68" className="encapsulation.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="}" edit="/1/@proposals.0/@proposals.0/@attempts.2/@edit" start="1223" end="-50"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1517230282749" resourcePath="/ovinger/src/encapsulation/Account.java" sizeMeasure="72" className="encapsulation.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="checkIfNegative(amount);&#xA;&#x9;&#x9;balance = balance + amount;&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;void addInterest() {&#xA;&#x9;&#x9;balance += (balance*(interestRate/100));&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;void setInterestRate(double interest) {&#xA;&#x9;&#x9;checkIfNegative(interest);&#xA;&#x9;&#x9;interestRate = interest;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;Account account = new Account(200.0, 0.4);&#xA;&#x9;&#x9;System.out.println(account.getBalance());&#xA;&#x9;&#x9;account.deposit(100.00);&#xA;&#x9;&#x9;System.out.println(account.getBalance());&#xA;&#x9;&#x9;account.setInterestRate(0.4);&#xA;&#x9;&#x9;account.addInterest();&#xA;&#x9;&#x9;System.out.println(account.getBalance());&#xA;&#x9;&#x9;System.out.println(account.toString());&#xA;&#x9;&#x9;account.withdraw(50);&#xA;&#x9;&#x9;System.out.println(account.toString());&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public String toString() {&#xA;&#x9;&#x9;return Double.toString(balance);&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;public void withdraw(double value) {&#xA;&#x9;&#x9;checkIfNegative(value);&#xA;&#x9;&#x9;this.balance -= value;&#xA;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.3/@edit" start="597" end="-9"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1517230393605" resourcePath="/ovinger/src/encapsulation/Account.java" sizeMeasure="72" className="encapsulation.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="2" edit="/1/@proposals.0/@proposals.0/@attempts.4/@edit" start="1201" end="-222"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1517230444150" resourcePath="/ovinger/src/encapsulation/Account.java" sizeMeasure="72" className="encapsulation.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="public void withdraw(double value) {&#xA;&#x9;&#x9;checkIfNegative(value);&#xA;&#x9;&#x9;this.balance -= value;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;Account account = new Account(200.0, 0.4);&#xA;&#x9;&#x9;System.out.println(account.getBalance());&#xA;&#x9;&#x9;account.deposit(100.00);&#xA;&#x9;&#x9;System.out.println(account.getBalance());&#xA;&#x9;&#x9;account.setInterestRate(0.4);&#xA;&#x9;&#x9;account.addInterest();&#xA;&#x9;&#x9;System.out.println(account.getBalance());&#xA;&#x9;&#x9;System.out.println(account.toString());&#xA;&#x9;&#x9;account.withdraw(20);&#xA;&#x9;&#x9;System.out.println(account.toString());&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public String toString() {&#xA;&#x9;&#x9;return Double.toString(balance);&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.5/@edit" start="834" end="-8"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1517230487280" resourcePath="/ovinger/src/encapsulation/Account.java" sizeMeasure="72" className="encapsulation.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="-" edit="/1/@proposals.0/@proposals.0/@attempts.6/@edit" start="1291" end="-133"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1517230657674" resourcePath="/ovinger/src/encapsulation/Account.java" sizeMeasure="75" className="encapsulation.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="amount) {&#xA;&#x9;&#x9;checkIfNegative(amount);&#xA;&#x9;&#x9;if (amount > this.balance) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Amount can't be larger than balance&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;this.balance -= amount;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;Account account = new Account(200.0, 0.4);&#xA;&#x9;&#x9;System.out.println(account.getBalance());&#xA;&#x9;&#x9;account.deposit(100.00);&#xA;&#x9;&#x9;System.out.println(account.getBalance());&#xA;&#x9;&#x9;account.setInterestRate(0.4);&#xA;&#x9;&#x9;account.addInterest();&#xA;&#x9;&#x9;System.out.println(account.getBalance());&#xA;&#x9;&#x9;System.out.println(account.toString());&#xA;&#x9;&#x9;account.withdraw(" edit="/1/@proposals.0/@proposals.0/@attempts.7/@edit" start="862" end="-133"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1517230670635" resourcePath="/ovinger/src/encapsulation/Account.java" sizeMeasure="75" className="encapsulation.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="40" edit="/1/@proposals.0/@proposals.0/@attempts.8/@edit" start="1407" end="-132"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1517230680448" resourcePath="/ovinger/src/encapsulation/Account.java" sizeMeasure="75" className="encapsulation.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="5" edit="/1/@proposals.0/@proposals.0/@attempts.9/@edit" start="1407" end="-132"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1517231243205" resourcePath="/ovinger/src/encapsulation/Account.java" sizeMeasure="77" className="encapsulation.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="checkIfNegative(this.balance - amount);&#xA;&#x9;&#x9;//if (amount > this.balance) {&#xA;&#x9;&#x9;//&#x9;throw new IllegalArgumentException(&quot;Amount can't be larger than balance&quot;);&#xA;&#x9;&#x9;//}&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.10/@edit" start="901" end="-529"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1517231414587" resourcePath="/ovinger/src/encapsulation/Account.java" sizeMeasure="73" className="encapsulation.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="+= amount;&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;void addInterest() {&#xA;&#x9;&#x9;balance += (balance*(interestRate/100));&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;void setInterestRate(double interest) {&#xA;&#x9;&#x9;checkIfNegative(interest);&#xA;&#x9;&#x9;interestRate = interest;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void withdraw(double amount) {&#xA;&#x9;&#x9;checkIfNegative(amount);&#xA;&#x9;&#x9;checkIfNegative(this.balance - amount);" edit="/1/@proposals.0/@proposals.0/@attempts.11/@edit" start="632" end="-529"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1517233480227" resourcePath="/ovinger/src/encapsulation/Account.java" sizeMeasure="73" className="encapsulation.Account">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="public double getInterestRate() {&#xA;&#x9;&#x9;return interestRate;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;public void deposit(double amount) {&#xA;&#x9;&#x9;checkIfNegative(amount);&#xA;&#x9;&#x9;balance += amount;&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;public void addInterest() {&#xA;&#x9;&#x9;balance += (balance*(interestRate/100));&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public " edit="/1/@proposals.0/@proposals.0/@attempts.12/@edit" start="507" end="-737"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.1/@q" answer="/0/@parts.0/@tasks.1/@a">
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1517229737499" mode="run" className="encapsulation.Account">
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrValues>encapsulation.Account</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <consoleOutput>Exception in thread &quot;main&quot; java.lang.Error: Unresolved compilation problem: 
&#xD;
	at encapsulation.Account.main(Account.java:46)&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1517229760389" mode="run" className="encapsulation.Account">
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrValues>encapsulation.Account</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <consoleOutput>Exception in thread &quot;main&quot; java.lang.Error: Unresolved compilation problem: 
&#xD;
	at encapsulation.Account.main(Account.java:46)&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1517229849110" mode="run" className="encapsulation.Account">
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrValues>encapsulation.Account</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <consoleOutput>200.0&#xD;
300.0&#xD;
301.2&#xD;
301.2&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1517230282680" mode="run" className="encapsulation.Account">
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrValues>encapsulation.Account</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <consoleOutput>200.0&#xD;
300.0&#xD;
301.2&#xD;
301.2&#xD;
251.2&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1517230395361" mode="run" className="encapsulation.Account">
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrValues>encapsulation.Account</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <consoleOutput>200.0&#xD;
300.0&#xD;
301.2&#xD;
301.2&#xD;
281.2&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1517230445944" mode="run" className="encapsulation.Account">
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrValues>encapsulation.Account</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <consoleOutput>200.0&#xD;
300.0&#xD;
301.2&#xD;
301.2&#xD;
281.2&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1517230493430" mode="run" className="encapsulation.Account">
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrValues>encapsulation.Account</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <consoleOutput>200.0&#xD;
300.0&#xD;
301.2&#xD;
301.2&#xD;
Exception in thread &quot;main&quot; java.lang.IllegalArgumentException: Number can't be negative&#xD;
	at encapsulation.Account.checkIfNegative(Account.java:17)&#xD;
	at encapsulation.Account.withdraw(Account.java:46)&#xD;
	at encapsulation.Account.main(Account.java:59)&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1517230659566" mode="run" className="encapsulation.Account">
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrValues>encapsulation.Account</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <consoleOutput>200.0&#xD;
300.0&#xD;
301.2&#xD;
301.2&#xD;
281.2&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1517230672361" mode="run" className="encapsulation.Account">
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrValues>encapsulation.Account</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <consoleOutput>200.0&#xD;
300.0&#xD;
301.2&#xD;
301.2&#xD;
Exception in thread &quot;main&quot; java.lang.IllegalArgumentException: Amount can't be larger than balance&#xD;
	at encapsulation.Account.withdraw(Account.java:48)&#xD;
	at encapsulation.Account.main(Account.java:62)&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1517230682143" mode="run" className="encapsulation.Account">
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrValues>encapsulation.Account</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <consoleOutput>200.0&#xD;
300.0&#xD;
301.2&#xD;
301.2&#xD;
251.2&#xD;
</consoleOutput>
        </attempts>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.2/@q" answer="/0/@parts.0/@tasks.2/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1517230355226" completion="0.8333333333333334" testRunName="encapsulation.AccountTest" successCount="5" failureCount="1">
          <successTests>testAccount</successTests>
          <successTests>testSetInterestRate</successTests>
          <successTests>testWithdraw</successTests>
          <successTests>testDepositNegativeAmount</successTests>
          <successTests>testDeposit</successTests>
          <failureTests>testWithdrawTooLargeAmount</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1517230489268" completion="0.8333333333333334" testRunName="encapsulation.AccountTest" successCount="5" failureCount="1">
          <successTests>testAccount</successTests>
          <successTests>testSetInterestRate</successTests>
          <successTests>testWithdraw</successTests>
          <successTests>testDepositNegativeAmount</successTests>
          <successTests>testDeposit</successTests>
          <failureTests>testWithdrawTooLargeAmount</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1517230688036" completion="1.0" testRunName="encapsulation.AccountTest" successCount="6">
          <successTests>testAccount</successTests>
          <successTests>testSetInterestRate</successTests>
          <successTests>testWithdrawTooLargeAmount</successTests>
          <successTests>testWithdraw</successTests>
          <successTests>testDepositNegativeAmount</successTests>
          <successTests>testDeposit</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1517231248581" completion="1.0" testRunName="encapsulation.AccountTest" successCount="6">
          <successTests>testAccount</successTests>
          <successTests>testSetInterestRate</successTests>
          <successTests>testWithdrawTooLargeAmount</successTests>
          <successTests>testWithdraw</successTests>
          <successTests>testDepositNegativeAmount</successTests>
          <successTests>testDeposit</successTests>
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
