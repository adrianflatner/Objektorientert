<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:exercise="platform:/plugin/no.hal.learning.exercise.model/model/exercise.ecore" xmlns:jdt="platform:/plugin/no.hal.learning.exercise.jdt/model/jdt-exercise.ecore" xmlns:junit="platform:/plugin/no.hal.learning.exercise.junit/model/junit-exercise.ecore" xmlns:workbench="platform:/plugin/no.hal.learning.exercise.workbench/model/workbench-exercise.ecore">
  <exercise:Exercise>
    <parts xsi:type="exercise:ExercisePart" title="Location">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the Location class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="stateandbehavior.Location"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the Location class, to test it."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="stateandbehavior.Location"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the Location class, by running the LocationTest JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="stateandbehavior.LocationTest"/>
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
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1516717820595" resourcePath="/ovinger/src/stateandbehavior/Location.java" sizeMeasure="48" className="stateandbehavior.Location">
          <edit xsi:type="exercise:StringEdit" storedString="package stateandbehavior;&#xA;&#xA;public class Location {&#xA;&#xA;&#x9;&#xA;&#x9;int xPos = 0;&#xA;&#x9;int yPos = 0;&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;void up() {&#xA;&#x9;&#x9;yPos -= 1;&#xA;&#x9;}&#xA;&#x9;void down() {&#xA;&#x9;&#x9;yPos += 1;&#xA;&#x9;}&#xA;&#x9;void right() {&#xA;&#x9;&#x9;xPos += 1;&#xA;&#x9;}&#xA;&#x9;void left() {&#xA;&#x9;&#x9;xPos -= 1;&#xA;&#x9;}&#xA;&#x9;int getX() {&#xA;&#x9;&#x9;return xPos;&#xA;&#x9;}&#xA;&#x9;int getY() {&#xA;&#x9;&#x9;return yPos;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public String toString(int pos) {&#xA;&#x9;&#x9;return Integer.toString(pos);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;Location location = new Location();&#xA;&#x9;&#x9;location.right();&#xA;&#x9;&#x9;location.up();&#xA;&#x9;&#x9;location.up();&#xA;&#x9;&#x9;System.out.println(&quot;x posisjon: &quot; + location.getX());&#xA;&#x9;&#x9;System.out.println(&quot;y posisjon: &quot; +  location.getY());&#xA;&#x9;&#x9;System.out.println(&quot;x pos: &quot; + location.toString(location.getX()));&#xA;&#x9;&#x9;System.out.println(&quot;y pos: &quot; + location.toString(location.getY()));&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;&#xA;}&#xA;"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.1/@q" answer="/0/@parts.0/@tasks.1/@a">
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1516717747909" mode="run" className="stateandbehavior.Location">
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrValues>stateandbehavior.Location</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <consoleOutput>x posisjon: 5&#xD;
y posisjon: -10&#xD;
x pos: 5&#xD;
y pos: -10&#xD;
</consoleOutput>
        </attempts>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.2/@q" answer="/0/@parts.0/@tasks.2/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1516717770787" completion="0.2" testRunName="stateandbehavior.LocationTest" successCount="1" failureCount="4">
          <successTests>testConstructor</successTests>
          <failureTests>testNed</failureTests>
          <failureTests>testRight</failureTests>
          <failureTests>testLeft</failureTests>
          <failureTests>testUp</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1516717824059" completion="1.0" testRunName="stateandbehavior.LocationTest" successCount="5">
          <successTests>testNed</successTests>
          <successTests>testRight</successTests>
          <successTests>testLeft</successTests>
          <successTests>testUp</successTests>
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
