<#include "security.ftl">

<nav class="navbar navbar-expand-lg navbar-dark " style="background: rgba(0,0,0,0.87);">
    <a class="navbar-brand" href="/">VGWC</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="/counter_picking">Counter-picking</a>
            </li>
            <#if isAdmin>
                <li class="nav-item">
                    <a class="nav-link" href="/user">User list</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/hero">Hero list</a>
                </li>
            </#if>
        </ul>

        <#if logined = false>
                <a class="nav-link" href="/login">Log in</a>
        </#if>
        <#if logined = true>
            <a class="nav-link" href="/logout">Log out</a>
        </#if>

        <div class="navbar-text">${name}</div>

    </div>
</nav>