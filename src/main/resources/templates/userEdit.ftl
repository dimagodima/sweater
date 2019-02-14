<#import "parts/common.ftl" as c>

<@c.page>
UserEditor

    <form action="/user" method="post">
        <input type = "text" name = "username" value="${user.username}">
        <#list roles as role>
            <div>
                <label>
                    <input type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("cheked","")}>
                    ${role}
                </label>
            </div>
        </#list>
        <hidden type="text" value="${user.id}" name="userId">
        <hidden type="text" value="${_csrf.token}" name ="_csrf">
        <button type="submit">Save</button>
    </form>

</@c.page>