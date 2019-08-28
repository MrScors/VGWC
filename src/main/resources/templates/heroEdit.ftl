<#import "parts/common.ftl" as c>
<#import "parts/errorMessage.ftl" as e>

<@c.page>

    <#if errorMessage??>
        <@e.error>
            ${errorMessage}
        </@e.error>
    </#if>

    <h1>${hero.name}</h1>

    <table class="myTable" style="display: block">
        <thead>
        <tr>
            <th>Image</th>
            <th>Preview</th>
            <th>Edit</th>
        </tr>
        </thead>

        <tbody>
        <tr>
            <td>
                <#if hero.pictureName??>
                    <img style="width:11.75vh; height:20vh" src="../img/${hero.pictureName}">
                </#if>
            </td>
            <td>
                <#if hero.picturePrevName??>
                    <img style="width:11.75vh; height:5vh" src="../img/${hero.picturePrevName}">
                </#if>
            </td>
            <td><a href="/hero/${hero.id}/uploadHeroImages">
                    <button class="myButton">Change images</button>
                </a></td>
        </tr>

        </tbody>
    </table>

    <form action="/hero" method="post">

        <div style="margin: 10px 0 10px 0; font-weight: 700">
            Name:
        <input class="text-input" type="text" name="name"
               <#if hero.awfulAgainst??>value="${hero.name}"</#if>>
        </div>
        <table style="padding:10px; font-weight: 700">
            <tbody>
            <tr>
                <td>awfulAgainst</td>
                <td><select name="awfulAgainst">
                        <#list heroes as inner_hero>
                            <#if hero.awfulAgainst??><#if inner_hero.name==hero.awfulAgainst>
                                <option selected>${inner_hero.name}</option>
                            <#else>
                                <option>${inner_hero.name}</option>
                            </#if></#if>
                        </#list>
                    </select></td>
                <td>veryBadAgainst</td>
                <td><select name="veryBadAgainst">
                        <#list heroes as inner_hero>
                            <#if hero.awfulAgainst??><#if inner_hero.name==hero.veryBadAgainst>
                                <option selected>${inner_hero.name}</option>
                            <#else>
                                <option>${inner_hero.name}</option>
                            </#if></#if>
                        </#list>
                    </select></td>
                <td>badAgainst</td>
                <td><select name="badAgainst">
                        <#list heroes as inner_hero>
                            <#if hero.awfulAgainst??><#if inner_hero.name==hero.badAgainst>
                                <option selected>${inner_hero.name}</option>
                            <#else>
                                <option>${inner_hero.name}</option>
                            </#if></#if>
                        </#list>
                    </select></td>
                <td>notGoodAgainst</td>
                <td><select name="notGoodAgainst">
                        <#list heroes as inner_hero>
                            <#if hero.awfulAgainst??><#if inner_hero.name==hero.notGoodAgainst>
                                <option selected>${inner_hero.name}</option>
                            <#else>
                                <option>${inner_hero.name}</option>
                            </#if></#if>
                        </#list>
                    </select></td>
            </tr>
            <tr>
                <td>perfectAgainst</td>
                <td><select name="perfectAgainst">
                        <#list heroes as inner_hero>
                            <#if hero.awfulAgainst??><#if inner_hero.name==hero.perfectAgainst>
                                <option selected>${inner_hero.name}</option>
                            <#else>
                                <option>${inner_hero.name}</option>
                            </#if></#if>
                        </#list>
                    </select></td>
                <td>veryGoodAgainst</td>
                <td><select name="veryGoodAgainst">
                        <#list heroes as inner_hero>
                            <#if hero.awfulAgainst??><#if inner_hero.name==hero.veryGoodAgainst>
                                <option selected>${inner_hero.name}</option>
                            <#else>
                                <option>${inner_hero.name}</option>
                            </#if></#if>
                        </#list>
                    </select></td>
                <td>goodAgainst</td>
                <td><select name="goodAgainst">
                        <#list heroes as inner_hero>
                            <#if hero.awfulAgainst??><#if inner_hero.name==hero.goodAgainst>
                                <option selected>${inner_hero.name}</option>
                            <#else>
                                <option>${inner_hero.name}</option>
                            </#if></#if>
                        </#list>
                    </select></td>
                <td>niceAgainst</td>
                <td><select name="niceAgainst">
                        <#list heroes as inner_hero>
                            <#if hero.awfulAgainst??><#if inner_hero.name==hero.niceAgainst>
                                <option selected>${inner_hero.name}</option>
                            <#else>
                                <option>${inner_hero.name}</option>
                            </#if></#if>
                        </#list>
                    </select></td>
            </tr>
            <tr>
                <td>perfectWith</td>
                <td><select name="perfectWith">
                    <#list heroes as inner_hero>
                        <#if hero.awfulAgainst??><#if inner_hero.name==hero.perfectWith>
                            <option selected>${inner_hero.name}</option>
                        <#else>
                            <option>${inner_hero.name}</option>
                        </#if></#if>
                    </#list>
                </select></td>
                <td>veryGoodWith</td>
                <td><select name="veryGoodWith">
                    <#list heroes as inner_hero>
                        <#if hero.awfulAgainst??><#if inner_hero.name==hero.veryGoodWith>
                            <option selected>${inner_hero.name}</option>
                        <#else>
                            <option>${inner_hero.name}</option>
                        </#if></#if>
                    </#list>
                </select></td>
                <td>goodWith</td>
                <td><select name="goodWith">
                    <#list heroes as inner_hero>
                        <#if hero.awfulAgainst??><#if inner_hero.name==hero.goodWith>
                            <option selected>${inner_hero.name}</option>
                        <#else>
                            <option>${inner_hero.name}</option>
                        </#if></#if>
                    </#list>
                </select></td>
                <td>niceWith</td>
                <td><select name="niceWith">
                    <#list heroes as inner_hero>
                        <#if hero.awfulAgainst??><#if inner_hero.name==hero.niceWith>
                            <option selected>${inner_hero.name}</option>
                        <#else>
                            <option>${inner_hero.name}</option>
                        </#if></#if>
                    </#list>
                </select></td>
            </tr>
            </tbody>
        </table>
        <input type="hidden" name="heroId" value="${hero.id}">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <button style="margin-right: 5px" class="myButton" type="submit">Save</button>

    </form>

    <form action="/heroDelete" method="post">
        <input type="hidden" name="heroId" value="${hero.id}">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <button style="margin-right: 5px" class="myButton" type="submit">Delete</button>
    </form>

</@c.page>