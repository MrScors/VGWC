<#import "parts/common.ftl" as c>

<@c.page>
    <h1>User editor</h1>
    <form action="/userSave" method="post">
        <input type="text" name="username" value="${user.username}">
        <input type="text" name="email" value="${user.email}">
        <#list roles as role>
            <div>
                <label>
                    <input class="option-input chechbox" type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked", "")}>
                    ${role}
                </label>
            </div>
        </#list>
        <input type="hidden" name="userId" value="${user.id}">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <button class="myButton mb-2" type="submit">Save</button>

    </form>

    <form action="/userDelete" method="post">
        <input type="hidden" name="userId" value="${user.id}">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <button class="myButton" type="submit">Delete</button>
    </form>

</@c.page>