<#import "parts/common.ftl" as c>
<#import "parts/errorMessage.ftl" as e>

<@c.page>

    <#if errorMessage??>
        <@e.error>
            ${errorMessage}
        </@e.error>
    </#if>

    <h1>Upload Images</h1>
    <form style="font-weight: 700" action="/uploadHeroImages" method="post" enctype="multipart/form-data">
        <label>
            Image:
            <button class="myButton mt-2 ml-2">
                <input class="myUpload" type="file" name="picture" value="img/${hero.pictureName}">
            </button>
        </label>
        <label>
            Preview:
            <button class="myButton mt-2 ml-2">
                <input class="myUpload" type="file" name="picture_prev" value="img/${hero.picturePrevName}">
            </button>
        </label>
        <input type="hidden" name="heroId" value="${hero.id}">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <button style="margin-right: 5px" class="myButton" type="submit">Save</button>
    </form>

</@c.page>