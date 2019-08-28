<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>
<#import "parts/errorMessage.ftl" as e>

<@c.page>
        <div class="mb-1"><h1>Registration</h1></div>
        <#if errorMessage??>
                <@e.error>
                        ${errorMessage}
                </@e.error>
        </#if>
        <@l.login "/registration" true/>
</@c.page>