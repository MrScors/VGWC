<#assign
known = Session.SPRING_SECURITY_CONTEXT??
>

<#if known>
    <#assign
    user = Session.SPRING_SECURITY_CONTEXT.authentication.principal
    name = user.getUsername()
    logined = true
    isAdmin = true
    >
<#else>
    <#assign
    name = "unknown"
    logined = false
    isAdmin = false
    >
</#if>