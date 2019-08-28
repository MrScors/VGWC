<#import "parts/common.ftl" as c>
<#import "parts/errorMessage.ftl" as e>

<@c.page>

    <#if errorMessage??>
        <@e.error>
            ${errorMessage}
        </@e.error>
    </#if>

    <h1>New Hero</h1>

    <form action="/newHero" method="post" enctype="multipart/form-data">

        <label>
            Image:
            <button class="myButton mt-2 ml-2">
                <input class="myUpload" type="file" name="picture">
            </button>
        </label>
        <label>
            Preview:
            <button class="myButton mt-2 ml-2">
                <input class="myUpload" type="file" name="picture_prev">
            </button>
        </label>

        <div style="margin: 10px 0 10px 0; font-weight: 700">
            Name:
            <input class="text-input" type="text" name="name">
        </div>
        <table style="padding:10px; font-weight: 700">
            <tbody>
            <tr>
                <td>awfulAgainst</td>
                <td><select name="awfulAgainst">
                        <#list heroes as inner_hero>
                            <option>${inner_hero.name}</option>
                        </#list>
                    </select></td>
                <td>veryBadAgainst</td>
                <td><select name="veryBadAgainst">
                        <#list heroes as inner_hero>
                            <option>${inner_hero.name}</option>
                        </#list>
                    </select></td>
                <td>badAgainst</td>
                <td><select name="badAgainst">
                        <#list heroes as inner_hero>
                            <option>${inner_hero.name}</option>
                        </#list>
                    </select></td>
                <td>notGoodAgainst</td>
                <td><select name="notGoodAgainst">
                        <#list heroes as inner_hero>
                            <option>${inner_hero.name}</option>
                        </#list>
                    </select></td>
            </tr>
            <tr>
                <td>perfectAgainst</td>
                <td><select name="perfectAgainst">
                        <#list heroes as inner_hero>
                            <option>${inner_hero.name}</option>
                        </#list>
                    </select></td>
                <td>veryGoodAgainst</td>
                <td><select name="veryGoodAgainst">
                        <#list heroes as inner_hero>
                            <option>${inner_hero.name}</option>
                        </#list>
                    </select></td>
                <td>goodAgainst</td>
                <td><select name="goodAgainst">
                        <#list heroes as inner_hero>
                            <option>${inner_hero.name}</option>
                        </#list>
                    </select></td>
                <td>niceAgainst</td>
                <td><select name="niceAgainst">
                        <#list heroes as inner_hero>
                            <option>${inner_hero.name}</option>
                        </#list>
                    </select></td>
            </tr>
            <tr>
                <td>perfectWith</td>
                <td><select name="perfectWith">
                        <#list heroes as inner_hero>
                            <option>${inner_hero.name}</option>
                        </#list>
                    </select></td>
                <td>veryGoodWith</td>
                <td><select name="veryGoodWith">
                        <#list heroes as inner_hero>
                            <option>${inner_hero.name}</option>
                        </#list>
                    </select></td>
                <td>goodWith</td>
                <td><select name="goodWith">
                        <#list heroes as inner_hero>
                            <option>${inner_hero.name}</option>
                        </#list>
                    </select></td>
                <td>niceWith</td>
                <td><select name="niceWith">
                        <#list heroes as inner_hero>
                            <option>${inner_hero.name}</option>
                        </#list>
                    </select></td>
            </tr>
            </tbody>
        </table>

        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <button style="margin-right: 5px" class="myButton" type="submit">Save</button>

    </form>

</@c.page>