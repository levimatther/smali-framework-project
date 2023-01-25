.class public final Lcom/android/volley/toolbox/HttpClientStack$HttpPatch;
.super Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
.source "HttpClientStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/toolbox/HttpClientStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HttpPatch"
.end annotation


# static fields
.field public static final METHOD_NAME:Ljava/lang/String; = "PATCH"


# direct methods
.method public constructor <init>()V
    .locals 0

<<<<<<< HEAD:smali/com/android/volley/toolbox/HttpClientStack$HttpPatch.smali
    .line 211
    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;-><init>()V

=======
    .line 182
    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;-><init>()V

    .line 183
>>>>>>> 4d1b24c5... Update volley:smali/com/android/volley/HttpClientStack$HttpPatch.smali
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
<<<<<<< HEAD:smali/com/android/volley/toolbox/HttpClientStack$HttpPatch.smali
    .locals 0

    .line 227
    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;-><init>()V

    .line 228
=======
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .line 192
    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;-><init>()V

    .line 193
>>>>>>> 4d1b24c5... Update volley:smali/com/android/volley/HttpClientStack$HttpPatch.smali
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/HttpClientStack$HttpPatch;->setURI(Ljava/net/URI;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 0

    .line 218
    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;-><init>()V

    .line 219
    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/HttpClientStack$HttpPatch;->setURI(Ljava/net/URI;)V

<<<<<<< HEAD:smali/com/android/volley/toolbox/HttpClientStack$HttpPatch.smali
=======
    .line 194
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 0
    .param p1, "uri"    # Ljava/net/URI;

    .line 186
    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;-><init>()V

    .line 187
    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/HttpClientStack$HttpPatch;->setURI(Ljava/net/URI;)V

    .line 188
>>>>>>> 4d1b24c5... Update volley:smali/com/android/volley/HttpClientStack$HttpPatch.smali
    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1

<<<<<<< HEAD:smali/com/android/volley/toolbox/HttpClientStack$HttpPatch.smali
=======
    .line 198
>>>>>>> 4d1b24c5... Update volley:smali/com/android/volley/HttpClientStack$HttpPatch.smali
    const-string v0, "PATCH"

    return-object v0
.end method
