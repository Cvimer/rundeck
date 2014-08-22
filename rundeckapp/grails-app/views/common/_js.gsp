<%@ page import="rundeck.filters.ApiRequestFilters" %>
<script type="text/javascript">
    <g:set var="currentProject" value="${params.project?:request.project}"/>
    <g:set var="projParams" value="${currentProject?[project:currentProject]:[:]}"/>
    var appLinks = {
        disclosureIcon: '${resource(dir:"images",file:"icon-tiny-disclosure.png")}',
        disclosureIconOpen: '${resource(dir:"images",file:"icon-tiny-disclosure-open.png")}',
        iconTinyWarn: '${resource(dir:"images",file:"icon-tiny-warn.png")}',
        iconTinyOk: '${resource(dir:"images",file:"icon-tiny-ok.png")}',
        iconSmallRemoveX: '${resource(dir:"images",file:"icon-small-removex.png")}',
        iconTinyRemoveX: '${resource(dir:"images",file:"icon-tiny-removex.png")}',
        iconSpinner: '${resource(dir:"images",file:"icon-tiny-disclosure-waiting.gif")}',
        executionCancelExecution: '${createLink(controller:"execution",action:"cancelExecution")}.json',
        tailExecutionOutput: '${createLink(controller: "execution", action: "tailExecutionOutput")}.json',
        reportsEventsFragment:"${createLink(controller:'reports',action:'eventsFragment',params:projParams)}",
        frameworkViewResourceModelConfig: "${createLink(action: 'viewResourceModelConfig', controller: 'framework')}",
        frameworkCheckResourceModelConfig: "${createLink(action: 'checkResourceModelConfig', controller: 'framework')}",
        frameworkEditResourceModelConfig: "${createLink(action: 'editResourceModelConfig', controller: 'framework')}",
        frameworkCreateResourceModelConfig: "${createLink(action: 'createResourceModelConfig', controller: 'framework')}",
        frameworkNodes: "${createLink(controller:"framework",action:"nodes",params:projParams)}",
        frameworkNodesFragment: "${createLink(controller:"framework",action:"nodesFragment",params:projParams)}",
        frameworkAdhoc: "${createLink(controller:"framework",action:"adhoc",params:projParams)}",
        frameworkReloadNodes: "${createLink(controller:"framework",action:"reloadNodes",params:projParams)}",
        reportsEventsAjax: "${g.createLink(controller: 'reports', action: 'eventsAjax',params:projParams)}",
        menuNowrunningAjax: "${g.createLink(controller: 'menu', action: 'nowrunningAjax',params:projParams)}",
        scheduledExecutionRunAdhocInline: "${createLink(controller:'scheduledExecution',action:'runAdhocInline',params:projParams)}",
        scheduledExecutionCreate: "${createLink(controller:'scheduledExecution',action:'create',params:projParams)}",
        scheduledExecutionExecuteFragment: '${createLink(controller:"scheduledExecution",action:"executeFragment",params:projParams)}',
        scheduledExecutionRunJobInline: '${createLink(controller:"scheduledExecution",action:"runJobInline",params:projParams)}',
        scheduledExecutionDetailFragment: '${createLink(controller:'scheduledExecution',action:'detailFragment',params: projParams)}',
        executionFollowFragment: "${createLink(controller:'execution',action:'followFragment',params:projParams)}",
        menuJobs: "${createLink(controller:'menu',action:'jobs',params: projParams)}",
        userAddFilterPref: "${createLink(controller:'user',action:'addFilterPref',params:projParams)}",
        userClearApiToken: "${g.createLink(controller: 'user', action: 'clearApiToken')}",
        userGenerateApiToken: "${g.createLink(controller: 'user', action: 'generateApiToken')}",

        workflowEdit: '${createLink(controller:"workflow",action:"edit",params:projParams)}',
        workflowRender: '${createLink(controller:"workflow",action:"render",params:projParams)}',
        workflowSave: '${createLink(controller:"workflow",action:"save",params:projParams)}',
        workflowReorder: '${createLink(controller:"workflow",action:"reorder",params:projParams)}',
        workflowRemove: '${createLink(controller:"workflow",action:"remove",params:projParams)}',
        workflowUndo: '${createLink(controller:"workflow",action:"undo",params:projParams)}',
        workflowRedo: '${createLink(controller:"workflow",action:"redo",params:projParams)}',
        workflowRevert: '${createLink(controller:"workflow",action:"revert",params:projParams)}',
        workflowRenderUndo: '${createLink(controller:"workflow",action:"renderUndo",params:projParams)}',

        editOptsRenderUndo: '${createLink(controller:"editOpts",action:"renderUndo",params:projParams)}',
        editOptsEdit: '${createLink(controller:"editOpts",action:"edit",params:projParams)}',
        editOptsRender: '${createLink(controller:"editOpts",action:"render",params:projParams)}',
        editOptsSave: '${createLink(controller:"editOpts",action:"save",params:projParams)}',
        editOptsRenderAll: '${createLink(controller:"editOpts",action:"renderAll",params:projParams)}',
        editOptsRenderSummary: '${createLink(controller:"editOpts",action:"renderSummary",params:projParams)}',
        editOptsRemove: '${createLink(controller:"editOpts",action:"remove",params:projParams)}',
        editOptsUndo: '${createLink(controller:"editOpts",action:"undo",params:projParams)}',
        editOptsRedo: '${createLink(controller:"editOpts",action:"redo",params:projParams)}',
        editOptsRevert: '${createLink(controller:"editOpts",action:"revert",params:projParams)}',
        menuJobsPicker: '${createLink(controller:"menu",action:"jobsPicker",params:projParams)}',
        scheduledExecutionGroupTreeFragment: '${createLink(controller:"scheduledExecution",action:"groupTreeFragment",params:projParams)}',
        storageKeysApi: '${createLink(uri:"/api/${ApiRequestFilters.API_CURRENT_VERSION}/storage/")}',
        apiExecutionsBulkDelete: '${createLink(uri:"/api/${ApiRequestFilters.API_CURRENT_VERSION}/executions/delete")}'
    } ;
    //compatibility with WB javascript:
    var AppImages = {
        disclosure: appLinks.disclosureIcon,
        disclosureOpen: appLinks.disclosureIconOpen,
        disclosureWait: "${resource(dir:'images',file:'icon-tiny-disclosure-waiting.gif')}",
        iconTinyRemoveX: '${resource(dir:"images",file:"icon-tiny-removex.png")}',
        iconTinyRemoveXGray: '${resource(dir:"images",file:"icon-tiny-removex-gray.png")}',
        iconSmallPrefix:'${resource(dir:"images",file:"icon-small-")}'
    };
</script>
