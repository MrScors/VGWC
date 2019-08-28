<#import "parts/common.ftl" as c>
<#import "parts/errorMessage.ftl" as e>
<@c.page>
    <#if heroes??>
        <h1 style="font-weight: 700">Chose heroes</h1>

        <#if errorMessage??>
            <@e.error>
                ${errorMessage}
            </@e.error>
        </#if>

        <form action="/counter_picking" method="post">
            <div>
                <#list heroes as hero>
                    <div class="hero">
                        <div style="text-align: center">
                            ${hero.name}
                        </div>
                        <div><img style="width:23.5vh; height:10vh;" src="../img/${hero.picturePrevName!}"
                                  alt="${hero.name}"></div>

                        <label style="margin-right: 3vh">Enemy<input style="margin-left:0.5vh;" class="option-input check-box" type="checkbox"
                                                                     name="${hero.name}Enemy"/></label>
                        <label><input class="option-input check-box" type="checkbox"
                                      name="${hero.name}Ally"/>Ally</label>
                    </div>
                </#list>
            </div>
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <button type="submit" class="myButton" style="font-weight:700;padding:3vh;margin:30px 0 30px 38vw;">CounterPick</button>
        </form>
    </#if>

    <#if enemyHeroes??>
        <h1 style="font-weight: 700">Enemy Heroes</h1>
            <#list enemyHeroes as enemyHero>
                <div class="hero mb-3">
                    <div style="text-align: center">
                        ${enemyHero.name}
                    </div>
                    <div><img style="width:23.5vh; height:35vh;" src="../img/${enemyHero.pictureName!}"
                              alt="${enemyHero.name}"></div>
                </div>
            </#list>
    </#if>

    <#if allyHeroes??>
        <h1 style="font-weight: 700">Ally Heroes</h1>
            <#list allyHeroes as allyHero>
                <div class="hero mb-3">
                    <div style="text-align: center">
                        ${allyHero.name}
                    </div>
                    <div><img style="width:23.5vh; height:35vh;" src="../img/${allyHero.pictureName!}"
                              alt="${allyHero.name}"></div>
                </div>
            </#list>
    </#if>

    <#if recommendedHeroes??>
        <h1 style="font-weight: 700">Recommended Heroes</h1>
            <#list recommendedHeroes as recommendedHero>
                <div class="hero mb-3">
                    <div style="text-align: center">
                        ${recommendedHero.name}
                    </div>
                    <div><img style="width:23.5vh; height:35vh;" src="../img/${recommendedHero.pictureName!}"
                              alt="${recommendedHero.name}"></div>
                </div>
            </#list>
    </#if>
</@c.page>