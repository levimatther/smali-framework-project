.class public La/d/a/d/b;
.super Ljava/lang/Object;
.source "HttpHeaderInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v1

    const-string v2, "Content-Type"

    invoke-virtual {v1, v2}, Lokhttp3/Headers;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "Accept"

    const-string v4, "3gpp-gba"

    const-string v5, "User-Agent"

    const-string v6, "application/json"

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0, v5, v4}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {v0, v3, v6}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    .line 10
    invoke-virtual {v0, v5, v4}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 11
    invoke-virtual {v0, v2, v6}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 12
    invoke-virtual {v0, v3, v6}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 15
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Content-Type:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HttpHeaderInterceptor"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lokhttp3/Response;->code()I

    move-result v2

    const/16 v3, 0x191

    if-ne v2, v3, :cond_1

    .line 20
    invoke-virtual {v1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v2

    .line 21
    invoke-static {v0, v1}, La/d/a/h/a;->a(Lokhttp3/Request;Lokhttp3/Response;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Authorization"

    invoke-virtual {v2, v1, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "isOemReq"

    const-string/jumbo v2, "true"

    .line 22
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 24
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1

    .line 25
    :cond_1
    invoke-virtual {v1}, Lokhttp3/Response;->code()I

    move-result p1

    const/16 v2, 0x1f4

    if-ne p1, v2, :cond_3

    .line 26
    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "wsg.t-mobile.com"

    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 28
    invoke-static {}, Lcom/tcl/netlibrary/util/AppContextUtils;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tcl/netlibrary/config/VVMConfig;->getInstance(Landroid/content/Context;)Lcom/tcl/netlibrary/config/VVMConfig;

    move-result-object p1

    const-string v0, "https://wsg2.stg.sip.t-mobile.com:443/phone20/mStoreRelay/oemclient"

    invoke-virtual {p1, v0}, Lcom/tcl/netlibrary/config/VVMConfig;->setRootURL(Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lcom/tcl/netlibrary/util/AppContextUtils;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tcl/netlibrary/config/VVMConfig;->getInstance(Landroid/content/Context;)Lcom/tcl/netlibrary/config/VVMConfig;

    move-result-object p1

    const-string v0, "https://wsg2.stg.sip.t-mobile.com"

    invoke-virtual {p1, v0}, Lcom/tcl/netlibrary/config/VVMConfig;->setWSGURI(Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lcom/tcl/netlibrary/service/NetService;->getInstance()La/d/a/g/a;

    move-result-object p1

    invoke-static {}, Lcom/tcl/netlibrary/util/AppContextUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p1, v0}, La/d/a/g/a;->initNetService(Landroid/content/Context;)V

    goto :goto_1

    .line 32
    :cond_2
    invoke-static {}, Lcom/tcl/netlibrary/util/AppContextUtils;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tcl/netlibrary/config/VVMConfig;->getInstance(Landroid/content/Context;)Lcom/tcl/netlibrary/config/VVMConfig;

    move-result-object p1

    const-string v0, "https://wsg.t-mobile.com.com:443/phone20/mStoreRelay/oemclient"

    invoke-virtual {p1, v0}, Lcom/tcl/netlibrary/config/VVMConfig;->setRootURL(Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lcom/tcl/netlibrary/util/AppContextUtils;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tcl/netlibrary/config/VVMConfig;->getInstance(Landroid/content/Context;)Lcom/tcl/netlibrary/config/VVMConfig;

    move-result-object p1

    const-string v0, "https://wsg.t-mobile.com"

    invoke-virtual {p1, v0}, Lcom/tcl/netlibrary/config/VVMConfig;->setWSGURI(Ljava/lang/String;)V

    .line 34
    invoke-static {}, Lcom/tcl/netlibrary/service/NetService;->getInstance()La/d/a/g/a;

    move-result-object p1

    invoke-static {}, Lcom/tcl/netlibrary/util/AppContextUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p1, v0}, La/d/a/g/a;->initNetService(Landroid/content/Context;)V

    :cond_3
    :goto_1
    return-object v1
.end method
