<#import "parts/common.ftl" as c>
<#import "parts/errorMessage.ftl" as e>

<@c.page>

    <#if errorMessage??>
        <@e.error>
            ${errorMessage}
        </@e.error>
    </#if>

    <h1>List of heroes</h1>
    <table style="font-size: 16px;" class="myBigTable">
        <thead>
        <tr>
            <th>Image</th>
            <th>Name</th>
            <th>Edit</th>
        </tr>
        </thead>
        <tbody>
        <#list heroes as hero>
            <tr>
                <td><#if hero.picturePrevName??><img style="width:11.75vh; height:5vh" src="img/${hero.picturePrevName}"
                                                     alt="${hero.name}"></#if></td>
                <td>${hero.name}</td>
                <td><a href="/hero/${hero.id}"><button class="myButton">Edit</button></a></td>
            </tr>
        </#list>
        </tbody>
    </table>

    <div>
        <a href="/newHero">
            <button class="myButton" style="font-weight:700;padding:3vh;margin:30px 0 30px 38vw;">Create new hero
            </button>
        </a>
    </div>

</@c.page>