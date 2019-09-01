<#macro login path isRegisterForm>
    <div class="form">
    <form action="${path}" method="post">
        <div style="margin:0 30px 0 30px; padding-top: 30px" class="form-group row">
            <label class="col-sm-2 col-form-label"> User Name : </label>
            <div class="col-sm-3">
                <input type="text" name="username" class="form-control" placeholder="Username"/>
            </div>
        </div>
        <#if isRegisterForm>
            <div style="margin: 5px 30px 0 30px;" class="form-group row">
                <label class="col-sm-2 col-form-label"> Email: </label>
                <div class="col-sm-3">
                    <input type="email" name="email" class="form-control" placeholder="Email"/>
                </div>
            </div>
        </#if>
        <div style="margin: 5px 30px 0 30px;" class="form-group row">
            <label class="col-sm-2 col-form-label"> Password: </label>
            <div class="col-sm-3">
                <input type="password" name="password" class="form-control" placeholder="Password"/>
            </div>
        </div>
        <button style="margin: 10px 30px 0 30px;" type="submit" class="myButton myBigButton col-sm-5">
            <#if isRegisterForm>Create<#else>Log in</#if>
        </button>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
    </form>


    <#if !isRegisterForm>
        <a href="/registration">
        <button type="submit" style="margin: 5px 30px 20px 30px;" class="myButton myBigButton col-sm-5">
            Register
        </button>
        </a>
        <#else>
        <div style="padding-bottom: 20px"></div>
    </#if>
    </div>
</#macro>

<#macro logout>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <button type="submit" class="myButton myBigButton col-sm-5">Log out</button>
    </form>
</#macro>