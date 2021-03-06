<#include "header.ftl">
<@header title="${post.title} - ${options.blog_title!'Story'}" desc="${options.seo_description!'Story'}" keywords="${options.seo_keywords!'Story'}"></@header>
<div class="container-fluid">
    <div class="row">
        <div id="main" class="col-12 clearfix" role="main">
            <article class="posti" itemscope itemtype="http://schema.org/BlogPosting">
                <h1 style="text-align:right;" class="post-title" itemprop="name headline">${post.title}</h1>
                <div class="post-content" itemprop="articleBody">
                    ${post.formatContent!}
                </div>
                <div style="display:block;" class="clearfix">
                    <section style="float:right;">
                        <span><a id="btn-comments" href="javascript:isComments();">show comments</a></span> · <span><a href="javascript:goBack();">back</a></span> ·
                        <span><a href="${options.blog_url!'#'}">home</a></span>
                    </section>
                </div>
                <#include "comments.ftl">
                <@comment post=sheet type="sheet" />
            </article>
        </div>
    </div>
</div>
<#include "footer.ftl">
