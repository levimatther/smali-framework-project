.class public Lcom/android/volley/toolbox/HttpClientStack;
.super Ljava/lang/Object;
.source "HttpClientStack.java"

# interfaces
.implements Lcom/android/volley/toolbox/HttpStack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/toolbox/HttpClientStack$HttpPatch;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"


# static fields
.field private static final HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"


# instance fields
.field protected final mClient:Lorg/apache/http/client/HttpClient;


# direct methods
.method public constructor <init>(Lorg/apache/http/client/HttpClient;)V
    .locals 0
    .param p1, "client"    # Lorg/apache/http/client/HttpClient;

<<<<<<< HEAD:smali/com/android/volley/toolbox/HttpClientStack.smali
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/volley/toolbox/HttpClientStack;->mClient:Lorg/apache/http/client/HttpClient;

    return-void
.end method

.method private static addHeaders(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 70
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 71
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

=======
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/android/volley/toolbox/HttpClientStack;->mClient:Lorg/apache/http/client/HttpClient;

    .line 59
    return-void
.end method

>>>>>>> 4d1b24c5... Update volley:smali/com/android/volley/HttpClientStack.smali
.method static createHttpRequest(Lcom/android/volley/Request;Ljava/util/Map;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/client/methods/HttpUriRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

<<<<<<< HEAD:smali/com/android/volley/toolbox/HttpClientStack.smali
    .line 125
=======
    .line 98
    .local p0, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    .local p1, "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
>>>>>>> 4d1b24c5... Update volley:smali/com/android/volley/HttpClientStack.smali
    invoke-virtual {p0}, Lcom/android/volley/Request;->getMethod()I

    move-result p1

<<<<<<< HEAD:smali/com/android/volley/toolbox/HttpClientStack.smali
    const-string v0, "Content-Type"

    packed-switch p1, :pswitch_data_0

    .line 171
    new-instance p0, Ljava/lang/IllegalStateException;
=======
    const-string v1, "Content-Type"

    packed-switch v0, :pswitch_data_0

    .line 151
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown request method."
>>>>>>> 4d1b24c5... Update volley:smali/com/android/volley/HttpClientStack.smali

    const-string p1, "Unknown request method."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

<<<<<<< HEAD:smali/com/android/volley/toolbox/HttpClientStack.smali
    throw p0

    .line 165
    :pswitch_0
    new-instance p1, Lcom/android/volley/toolbox/HttpClientStack$HttpPatch;

    invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/android/volley/toolbox/HttpClientStack$HttpPatch;-><init>(Ljava/lang/String;)V

    .line 166
=======
    .line 145
    :pswitch_0
    new-instance v0, Lcom/android/volley/toolbox/HttpClientStack$HttpPatch;

    invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/volley/toolbox/HttpClientStack$HttpPatch;-><init>(Ljava/lang/String;)V

    .line 146
    .local v0, "patchRequest":Lcom/android/volley/toolbox/HttpClientStack$HttpPatch;
>>>>>>> 4d1b24c5... Update volley:smali/com/android/volley/HttpClientStack.smali
    invoke-virtual {p0}, Lcom/android/volley/Request;->getBodyContentType()Ljava/lang/String;

    move-result-object v2

<<<<<<< HEAD:smali/com/android/volley/toolbox/HttpClientStack.smali
    invoke-virtual {p1, v0, v1}, Lcom/android/volley/toolbox/HttpClientStack$HttpPatch;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-static {p1, p0}, Lcom/android/volley/toolbox/HttpClientStack;->setEntityIfNonEmptyBody(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lcom/android/volley/Request;)V

    return-object p1
=======
    invoke-virtual {v0, v1, v2}, Lcom/android/volley/toolbox/HttpClientStack$HttpPatch;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-static {v0, p0}, Lcom/android/volley/toolbox/HttpClientStack;->setEntityIfNonEmptyBody(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lcom/android/volley/Request;)V

    .line 148
    return-object v0

    .line 142
    .end local v0    # "patchRequest":Lcom/android/volley/toolbox/HttpClientStack$HttpPatch;
    :pswitch_1
    new-instance v0, Lorg/apache/http/client/methods/HttpTrace;
>>>>>>> 4d1b24c5... Update volley:smali/com/android/volley/HttpClientStack.smali

    .line 163
    :pswitch_1
    new-instance p1, Lorg/apache/http/client/methods/HttpTrace;

<<<<<<< HEAD:smali/com/android/volley/toolbox/HttpClientStack.smali
    invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/http/client/methods/HttpTrace;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 161
    :pswitch_2
    new-instance p1, Lorg/apache/http/client/methods/HttpOptions;

    invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/http/client/methods/HttpOptions;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 159
    :pswitch_3
    new-instance p1, Lorg/apache/http/client/methods/HttpHead;
=======
    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpTrace;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 140
    :pswitch_2
    new-instance v0, Lorg/apache/http/client/methods/HttpOptions;

    invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpOptions;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 138
    :pswitch_3
    new-instance v0, Lorg/apache/http/client/methods/HttpHead;
>>>>>>> 4d1b24c5... Update volley:smali/com/android/volley/HttpClientStack.smali

    invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object p0

<<<<<<< HEAD:smali/com/android/volley/toolbox/HttpClientStack.smali
    invoke-direct {p1, p0}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V
=======
    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V
>>>>>>> 4d1b24c5... Update volley:smali/com/android/volley/HttpClientStack.smali

    return-object p1

<<<<<<< HEAD:smali/com/android/volley/toolbox/HttpClientStack.smali
    .line 145
    :pswitch_4
    new-instance p1, Lorg/apache/http/client/methods/HttpDelete;
=======
    .line 122
    :pswitch_4
    new-instance v0, Lorg/apache/http/client/methods/HttpDelete;
>>>>>>> 4d1b24c5... Update volley:smali/com/android/volley/HttpClientStack.smali

    invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    return-object p1

<<<<<<< HEAD:smali/com/android/volley/toolbox/HttpClientStack.smali
    .line 153
    :pswitch_5
    new-instance p1, Lorg/apache/http/client/methods/HttpPut;
=======
    .line 132
    :pswitch_5
    new-instance v0, Lorg/apache/http/client/methods/HttpPut;
>>>>>>> 4d1b24c5... Update volley:smali/com/android/volley/HttpClientStack.smali

    invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v2

<<<<<<< HEAD:smali/com/android/volley/toolbox/HttpClientStack.smali
    invoke-direct {p1, v1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Lcom/android/volley/Request;->getBodyContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpPut;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-static {p1, p0}, Lcom/android/volley/toolbox/HttpClientStack;->setEntityIfNonEmptyBody(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lcom/android/volley/Request;)V

    return-object p1

    .line 147
    :pswitch_6
    new-instance p1, Lorg/apache/http/client/methods/HttpPost;
=======
    invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 133
    .local v0, "putRequest":Lorg/apache/http/client/methods/HttpPut;
    invoke-virtual {p0}, Lcom/android/volley/Request;->getBodyContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPut;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-static {v0, p0}, Lcom/android/volley/toolbox/HttpClientStack;->setEntityIfNonEmptyBody(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lcom/android/volley/Request;)V

    .line 135
    return-object v0

    .line 125
    .end local v0    # "putRequest":Lorg/apache/http/client/methods/HttpPut;
    :pswitch_6
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;
>>>>>>> 4d1b24c5... Update volley:smali/com/android/volley/HttpClientStack.smali

    invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v2

<<<<<<< HEAD:smali/com/android/volley/toolbox/HttpClientStack.smali
    invoke-direct {p1, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcom/android/volley/Request;->getBodyContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-static {p1, p0}, Lcom/android/volley/toolbox/HttpClientStack;->setEntityIfNonEmptyBody(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lcom/android/volley/Request;)V

    return-object p1

    .line 143
    :pswitch_7
    new-instance p1, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object p0
=======
    invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 126
    .local v0, "postRequest":Lorg/apache/http/client/methods/HttpPost;
    invoke-virtual {p0}, Lcom/android/volley/Request;->getBodyContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-static {v0, p0}, Lcom/android/volley/toolbox/HttpClientStack;->setEntityIfNonEmptyBody(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lcom/android/volley/Request;)V

    .line 128
    return-object v0

    .line 120
    .end local v0    # "postRequest":Lorg/apache/http/client/methods/HttpPost;
    :pswitch_7
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
>>>>>>> 4d1b24c5... Update volley:smali/com/android/volley/HttpClientStack.smali

    invoke-direct {p1, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

<<<<<<< HEAD:smali/com/android/volley/toolbox/HttpClientStack.smali
    return-object p1

    .line 130
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/volley/Request;->getPostBody()[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 132
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;
=======
    .line 106
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/volley/Request;->getPostBody()[B

    move-result-object v0

    .line 107
    .local v0, "postBody":[B
    if-eqz v0, :cond_0

    .line 108
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v3
>>>>>>> 4d1b24c5... Update volley:smali/com/android/volley/HttpClientStack.smali

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

<<<<<<< HEAD:smali/com/android/volley/toolbox/HttpClientStack.smali
    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lcom/android/volley/Request;->getPostBodyContentType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    new-instance p0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {p0, p1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 136
    invoke-virtual {v1, p0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    return-object v1

    .line 139
    :cond_0
    new-instance p1, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    return-object p1
=======
    .line 109
    .local v2, "postRequest":Lorg/apache/http/client/methods/HttpPost;
    nop

    .line 110
    invoke-virtual {p0}, Lcom/android/volley/Request;->getPostBodyContentType()Ljava/lang/String;

    move-result-object v3

    .line 109
    invoke-virtual {v2, v1, v3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v1, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 113
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    invoke-virtual {v2, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 114
    return-object v2

    .line 116
    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    .end local v2    # "postRequest":Lorg/apache/http/client/methods/HttpPost;
    :cond_0
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    return-object v1

    nop
>>>>>>> 4d1b24c5... Update volley:smali/com/android/volley/HttpClientStack.smali

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getPostParameterPairs(Ljava/util/Map;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

<<<<<<< HEAD:smali/com/android/volley/toolbox/HttpClientStack.smali
    .line 83
=======
    .line 69
    .local p0, "postParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
>>>>>>> 4d1b24c5... Update volley:smali/com/android/volley/HttpClientStack.smali
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

<<<<<<< HEAD:smali/com/android/volley/toolbox/HttpClientStack.smali
    .line 84
=======
    .line 70
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
>>>>>>> 4d1b24c5... Update volley:smali/com/android/volley/HttpClientStack.smali
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

<<<<<<< HEAD:smali/com/android/volley/toolbox/HttpClientStack.smali
    .line 85
=======
    .line 71
    .local v2, "key":Ljava/lang/String;
>>>>>>> 4d1b24c5... Update volley:smali/com/android/volley/HttpClientStack.smali
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v2, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

<<<<<<< HEAD:smali/com/android/volley/toolbox/HttpClientStack.smali
    goto :goto_0

=======
    .line 72
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 73
>>>>>>> 4d1b24c5... Update volley:smali/com/android/volley/HttpClientStack.smali
    :cond_0
    return-object v0
.end method

.method private static setEntityIfNonEmptyBody(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lcom/android/volley/Request;)V
<<<<<<< HEAD:smali/com/android/volley/toolbox/HttpClientStack.smali
    .locals 1
=======
    .locals 2
    .param p0, "httpRequest"    # Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
>>>>>>> 4d1b24c5... Update volley:smali/com/android/volley/HttpClientStack.smali
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;",
            "Lcom/android/volley/Request<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

<<<<<<< HEAD:smali/com/android/volley/toolbox/HttpClientStack.smali
    .line 184
    invoke-virtual {p1}, Lcom/android/volley/Request;->getBody()[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 186
    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;
=======
    .line 158
    .local p1, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    invoke-virtual {p1}, Lcom/android/volley/Request;->getBody()[B

    move-result-object v0

    .line 159
    .local v0, "body":[B
    if-eqz v0, :cond_0

    .line 160
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;
>>>>>>> 4d1b24c5... Update volley:smali/com/android/volley/HttpClientStack.smali

    invoke-direct {v0, p1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

<<<<<<< HEAD:smali/com/android/volley/toolbox/HttpClientStack.smali
    .line 187
    invoke-virtual {p0, v0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

=======
    .line 161
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    invoke-virtual {p0, v1}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 163
    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    :cond_0
    return-void
.end method

.method private static setHeaders(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V
    .locals 3
    .param p0, "httpRequest"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 62
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 63
    .local v1, "key":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .end local v1    # "key":Ljava/lang/String;
    goto :goto_0

    .line 65
>>>>>>> 4d1b24c5... Update volley:smali/com/android/volley/HttpClientStack.smali
    :cond_0
    return-void
.end method


# virtual methods
.method protected onPrepareRequest(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .locals 0
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

<<<<<<< HEAD:smali/com/android/volley/toolbox/HttpClientStack.smali
=======
    .line 172
>>>>>>> 4d1b24c5... Update volley:smali/com/android/volley/HttpClientStack.smali
    return-void
.end method

.method public performRequest(Lcom/android/volley/Request;Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

<<<<<<< HEAD:smali/com/android/volley/toolbox/HttpClientStack.smali
    .line 101
=======
    .line 79
    .local p1, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    .local p2, "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
>>>>>>> 4d1b24c5... Update volley:smali/com/android/volley/HttpClientStack.smali
    invoke-static {p1, p2}, Lcom/android/volley/toolbox/HttpClientStack;->createHttpRequest(Lcom/android/volley/Request;Ljava/util/Map;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

<<<<<<< HEAD:smali/com/android/volley/toolbox/HttpClientStack.smali
    .line 102
    invoke-static {v0, p2}, Lcom/android/volley/toolbox/HttpClientStack;->addHeaders(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V

    .line 103
=======
    .line 80
    .local v0, "httpRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-static {v0, p2}, Lcom/android/volley/toolbox/HttpClientStack;->setHeaders(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V

    .line 83
>>>>>>> 4d1b24c5... Update volley:smali/com/android/volley/HttpClientStack.smali
    invoke-virtual {p1}, Lcom/android/volley/Request;->getHeaders()Ljava/util/Map;

    move-result-object p2

<<<<<<< HEAD:smali/com/android/volley/toolbox/HttpClientStack.smali
    invoke-static {v0, p2}, Lcom/android/volley/toolbox/HttpClientStack;->addHeaders(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V

    .line 104
    invoke-virtual {p0, v0}, Lcom/android/volley/toolbox/HttpClientStack;->onPrepareRequest(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 105
=======
    invoke-static {v0, v1}, Lcom/android/volley/toolbox/HttpClientStack;->setHeaders(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V

    .line 84
    invoke-virtual {p0, v0}, Lcom/android/volley/toolbox/HttpClientStack;->onPrepareRequest(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 85
>>>>>>> 4d1b24c5... Update volley:smali/com/android/volley/HttpClientStack.smali
    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object p2

<<<<<<< HEAD:smali/com/android/volley/toolbox/HttpClientStack.smali
    .line 106
=======
    .line 86
    .local v1, "httpParams":Lorg/apache/http/params/HttpParams;
>>>>>>> 4d1b24c5... Update volley:smali/com/android/volley/HttpClientStack.smali
    invoke-virtual {p1}, Lcom/android/volley/Request;->getTimeoutMs()I

    move-result p1

<<<<<<< HEAD:smali/com/android/volley/toolbox/HttpClientStack.smali
    const/16 v1, 0x1388
=======
    .line 89
    .local v2, "timeoutMs":I
    const/16 v3, 0x1388
>>>>>>> 4d1b24c5... Update volley:smali/com/android/volley/HttpClientStack.smali

    .line 109
    invoke-static {p2, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

<<<<<<< HEAD:smali/com/android/volley/toolbox/HttpClientStack.smali
    .line 110
    invoke-static {p2, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 111
    iget-object p1, p0, Lcom/android/volley/toolbox/HttpClientStack;->mClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {p1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    return-object p1
=======
    .line 90
    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 91
    iget-object v3, p0, Lcom/android/volley/toolbox/HttpClientStack;->mClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v3, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    return-object v3
>>>>>>> 4d1b24c5... Update volley:smali/com/android/volley/HttpClientStack.smali
.end method
