public with sharing class WorkGuideFixtures {
    
    
    public static ConnectApi.OrchestrationWorkAssignment getFixture_WorkAssignment1() {
        ConnectApi.OrchestrationWorkAssignment wa1 = new ConnectApi.OrchestrationWorkAssignment();
        //wa1.buildVersion=51.0;
        wa1.assigneeId=null;
        wa1.contextRecordId='0019A00000Gg58lQAB';
        wa1.description=null;
        wa1.id='0jf9A0000000006QAA'; 
        wa1.label='Submit Content';
        wa1.screenFlowId='3009A0000000JxIQAU'; 
        wa1.screenFlowInputParameters='{"recordId":["0019A00000Gg58lQAB"],"appProcessStepInstanceId":["0jL9A000000000V"],"appProcessInstanceId":["0jE9A000000000V"]}'; 
        wa1.status=ConnectApi.OrchestrationInstanceStatus.NotStarted;
        return wa1;

    }

    public static ConnectApi.OrchestrationWorkAssignment getFixture_WorkAssignment2() {
        ConnectApi.OrchestrationWorkAssignment wa2 = new ConnectApi.OrchestrationWorkAssignment();
        //wa1.buildVersion=51.0;
        wa2.assigneeId=null;
        wa2.contextRecordId='0019A00000Gg58lQAB';
        wa2.description=null;
        wa2.id='0jf9A0000000007QAA'; 
        wa2.label='Submit Content2';
        wa2.screenFlowId='3009A0000000JxIQAU'; 
        wa2.screenFlowInputParameters='{"recordId":["0019A00000Gg58lQAB"],"appProcessStepInstanceId":["0jL9A000000000V"],"appProcessInstanceId":["0jE9A000000000V"]}'; 
        wa2.status=ConnectApi.OrchestrationInstanceStatus.NotStarted;
        return wa2;

    }

    public static List<ConnectApi.OrchestrationWorkAssignment> getFixture_WorkAssignments() {
        List<ConnectApi.OrchestrationWorkAssignment> curWorkAssignments = new List<ConnectApi.OrchestrationWorkAssignment>();
        curWorkAssignments.add(getFixture_WorkAssignment1());
        curWorkAssignments.add(getFixture_WorkAssignment2());
        return curWorkAssignments;
    }

    public static ConnectApi.OrchestrationStepInstance getFixture_OrchestrationStepInstance1() {
        ConnectApi.OrchestrationStepInstance orchSI1 = new ConnectApi.OrchestrationStepInstance();

        orchSI1.workAssignments =  getFixture_WorkAssignments();

        orchSI1.id='0jL9A000000000VUAQ'; 
        orchSI1.label='Submit Content for Approval';
        orchSI1.name='Submit_Content_for_Approval'; 
        orchSI1.status=ConnectApi.OrchestrationInstanceStatus.InProgress;
        orchSI1.type=ConnectApi.OrchestrationStepType.Task;
         
        return orchSI1;
    }

    public static List<ConnectApi.OrchestrationStepInstance> getFixture_OrchestrationStepInstances() {
        List<ConnectApi.OrchestrationStepInstance> curStepInstances = new List<ConnectApi.OrchestrationStepInstance> ();
        curStepInstances.add(getFixture_OrchestrationStepInstance1());
        return curStepInstances;
    }

    public static ConnectApi.OrchestrationStageInstance getFixture_OrchestrationStageInstance1() {
        ConnectApi.OrchestrationStageInstance orchStage1 = new ConnectApi.OrchestrationStageInstance();

        orchStage1.stageStepInstances =  getFixture_OrchestrationStepInstances();

        orchStage1.id='0jL9A000000000KUAQ'; 
        orchStage1.label='Stage1';
        orchStage1.name='Stage1'; 
        orchStage1.status=ConnectApi.OrchestrationInstanceStatus.InProgress;
        orchStage1.position=0;
         
        return orchStage1;
    }

    public static List<ConnectApi.OrchestrationStageInstance> getFixture_OrchestrationStageInstances() {
        List<ConnectApi.OrchestrationStageInstance> orchStages = new List<ConnectApi.OrchestrationStageInstance>();
        orchStages.add(getFixture_OrchestrationStageInstance1());
        return orchStages;
    }


    public static List<ConnectApi.OrchestrationInstance> getFixture_OrchestrationInstances() {
        List<ConnectApi.OrchestrationInstance> curOrchInstanceCollection = new List<ConnectApi.OrchestrationInstance>();
        curOrchInstanceCollection.add(getFixture_OrchestrationInstance1());
        return curOrchInstanceCollection;
    }

    public static ConnectApi.OrchestrationInstance getFixture_OrchestrationInstance1() {
        ConnectApi.OrchestrationInstance curOrchInstance = new ConnectApi.OrchestrationInstance();
        curOrchInstance.id='0jL9A000000000vUAQ'; 
        curOrchInstance.stageInstances = getFixture_OrchestrationStageInstances();
        return curOrchInstance;


    }
}