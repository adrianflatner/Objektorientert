<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:exercise="platform:/plugin/no.hal.learning.exercise.model/model/exercise.ecore" xmlns:jdt="platform:/plugin/no.hal.learning.exercise.jdt/model/jdt-exercise.ecore" xmlns:junit="platform:/plugin/no.hal.learning.exercise.junit/model/junit-exercise.ecore" xmlns:workbench="platform:/plugin/no.hal.learning.exercise.workbench/model/workbench-exercise.ecore">
  <exercise:Exercise>
    <parts xsi:type="exercise:ExercisePart" title="Digit">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the Digit class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="stateandbehavior.Digit"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the Digit class, to test it."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="stateandbehavior.Digit"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the Digit class, by running the DigitTest JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="stateandbehavior.DigitTest"/>
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
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1516719118568" resourcePath="/ovinger/src/stateandbehavior/Digit.java" sizeMeasure="43" className="stateandbehavior.Digit">
          <edit xsi:type="exercise:StringEdit" storedString="package stateandbehavior;&#xA;&#xA;public class Digit {&#xA;&#xA;&#x9;int value = 0;&#xA;&#x9;int numberSystem;&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;Digit(int numberSys) {&#xA;&#x9;&#x9;numberSystem = numberSys;&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;int getValue() {&#xA;&#x9;&#x9;return value;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;boolean increment() {&#xA;&#x9;&#x9;value += 1;&#xA;&#x9;&#x9;if (value==numberSystem) {&#xA;&#x9;&#x9;&#x9;value = 0;&#xA;&#x9;&#x9;&#x9;return true;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;return false;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;int getBase() {&#xA;&#x9;&#x9;return numberSystem;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;Digit digit = new Digit(10);&#xA;&#x9;&#x9;System.out.println(digit.increment());&#xA;&#x9;&#x9;System.out.println(&quot;Number system: &quot; + digit.getBase());&#xA;&#x9;&#x9;System.out.println(&quot;Value: &quot; + digit.getValue());&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1516719159536" resourcePath="/ovinger/src/stateandbehavior/Digit.java" sizeMeasure="43" className="stateandbehavior.Digit">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="9" edit="/1/@proposals.0/@proposals.0/@attempts.0/@edit" start="62" end="-548"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1516719466743" resourcePath="/ovinger/src/stateandbehavior/Digit.java" sizeMeasure="49" className="stateandbehavior.Digit">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="0;&#xA;&#x9;int numberSystem;&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;Digit(int numberSys) {&#xA;&#x9;&#x9;numberSystem = numberSys;&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;int getValue() {&#xA;&#x9;&#x9;return value;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;boolean increment() {&#xA;&#x9;&#x9;value += 1;&#xA;&#x9;&#x9;if (value==numberSystem) {&#xA;&#x9;&#x9;&#x9;value = 0;&#xA;&#x9;&#x9;&#x9;return true;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;return false;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;int getBase() {&#xA;&#x9;&#x9;return numberSystem;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public String toString() {&#xA;&#x9;&#x9;return Double.toString(value);&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;Digit digit = new Digit(10);&#xA;&#x9;&#x9;System.out.println(digit.increment());&#xA;&#x9;&#x9;System.out.println(&quot;Number system: &quot; + digit.getBase());&#xA;&#x9;&#x9;System.out.println(&quot;Value: &quot; + digit.getValue());&#xA;&#x9;&#x9;System.out.println(digit.toString" edit="/1/@proposals.0/@proposals.0/@attempts.1/@edit" start="62" end="-20"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1516720346459" resourcePath="/ovinger/src/stateandbehavior/Digit.java" sizeMeasure="70" className="stateandbehavior.Digit">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if (value == 10) {&#xA;&#x9;&#x9;&#x9;return (&quot;A&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else if (value == 11) {&#xA;&#x9;&#x9;&#x9;return(&quot;B&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else if (value == 12) {&#xA;&#x9;&#x9;&#x9;return (&quot;c&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else if (value == 13) {&#xA;&#x9;&#x9;&#x9;return (&quot;D&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else if (value == 14) {&#xA;&#x9;&#x9;&#x9;return (&quot;E&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else if (value == 15) {&#xA;&#x9;&#x9;&#x9;return (&quot;F&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;return Integer.toString(value);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.2/@edit" start="401" end="-289"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1516720363662" resourcePath="/ovinger/src/stateandbehavior/Digit.java" sizeMeasure="70" className="stateandbehavior.Digit">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="9" edit="/1/@proposals.0/@proposals.0/@attempts.3/@edit" start="62" end="-951"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1516720379850" resourcePath="/ovinger/src/stateandbehavior/Digit.java" sizeMeasure="70" className="stateandbehavior.Digit">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="6" edit="/1/@proposals.0/@proposals.0/@attempts.4/@edit" start="803" end="-210"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1516720437155" resourcePath="/ovinger/src/stateandbehavior/Digit.java" sizeMeasure="70" className="stateandbehavior.Digit">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="0" edit="/1/@proposals.0/@proposals.0/@attempts.5/@edit" start="62" end="-951"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.1/@q" answer="/0/@parts.0/@tasks.1/@a">
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1516718043709" mode="run" className="stateandbehavior.Digit">
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrValues>stateandbehavior.Digit</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <consoleOutput>false&#xD;
Number system: 10&#xD;
Value: 1&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1516718916244" mode="run" className="stateandbehavior.Digit">
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrValues>stateandbehavior.Digit</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <consoleOutput>false&#xD;
Number system: 10&#xD;
Value: 1&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1516719118504" mode="run" className="stateandbehavior.Digit">
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrValues>stateandbehavior.Digit</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <consoleOutput>false&#xD;
Number system: 10&#xD;
Value: 1&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1516719159462" mode="run" className="stateandbehavior.Digit">
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrValues>stateandbehavior.Digit</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <consoleOutput>true&#xD;
Number system: 10&#xD;
Value: 0&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1516719469182" mode="run" className="stateandbehavior.Digit">
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrValues>stateandbehavior.Digit</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <consoleOutput>false&#xD;
Number system: 10&#xD;
Value: 1&#xD;
1.0&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1516720352106" mode="run" className="stateandbehavior.Digit">
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrValues>stateandbehavior.Digit</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <consoleOutput>false&#xD;
Number system: 10&#xD;
Value: 1&#xD;
1&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1516720365706" mode="run" className="stateandbehavior.Digit">
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrValues>stateandbehavior.Digit</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <consoleOutput>true&#xD;
Number system: 10&#xD;
Value: 0&#xD;
0&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1516720379773" mode="run" className="stateandbehavior.Digit">
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrValues>stateandbehavior.Digit</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <consoleOutput>false&#xD;
Number system: 16&#xD;
Value: 10&#xD;
A&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1516720439291" mode="run" className="stateandbehavior.Digit">
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrValues>stateandbehavior.Digit</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <consoleOutput>false&#xD;
Number system: 16&#xD;
Value: 1&#xD;
1&#xD;
</consoleOutput>
        </attempts>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.2/@q" answer="/0/@parts.0/@tasks.2/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1516718057482" completion="0.0" testRunName="stateandbehavior.DigitTest" errorCount="3">
          <errorTests>testDigit</errorTests>
          <errorTests>testToString</errorTests>
          <errorTests>testIncrement</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1516719182115" completion="0.0" testRunName="stateandbehavior.DigitTest" failureCount="3">
          <failureTests>testDigit</failureTests>
          <failureTests>testToString</failureTests>
          <failureTests>testIncrement</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1516720395941" completion="0.0" testRunName="stateandbehavior.DigitTest" failureCount="3">
          <failureTests>testDigit</failureTests>
          <failureTests>testToString</failureTests>
          <failureTests>testIncrement</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1516720446383" completion="1.0" testRunName="stateandbehavior.DigitTest" successCount="3">
          <successTests>testDigit</successTests>
          <successTests>testToString</successTests>
          <successTests>testIncrement</successTests>
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
