<#import "parts/common.ftl" as c>

<@c.page>
<h1>List of users</h1>
    <table class="myTable">
        <thead>
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Email</th>
            <th>Role</th>
            <th></th>
        </tr>
        </thead>
        <tbody>
    <#list users as user>
        <tr>
            <td>${user.id}</td>
            <td>${user.username}</td>
            <td>${user.email}</td>
            <td><#list user.roles as role>${role}<#sep>, </#list></td>
            <td><a href="/user/${user.id}"><button class="myButton">Edit</button></a></td>
        </tr>
    </#list>
        </tbody>
    </table>
</@c.page>