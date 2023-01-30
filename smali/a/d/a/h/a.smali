.class public La/d/a/h/a;
.super Ljava/lang/Object;
.source "AuthTokenUtil.java"


# static fields
.field public static a:Ljava/lang/String; = "AuthTokenUtil"

.field public static b:I

.field public static c:La/c/a/b/a;

.field public static d:La/b/a/a;

.field public static e:La/b/a/b;

.field public static f:[B

.field public static g:Ljava/lang/String;

.field public static h:I

.field public static i:Ljava/lang/reflect/Method;

.field public static final j:[C


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "0123456789abcdef"

    .line 1
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, La/d/a/h/a;->j:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;La/b/a/b;Lcom/mediatek/xcap/header/WwwAuthHeader;Ljava/lang/String;)Lcom/mediatek/xcap/auth/AkaDigestAuth;
    .locals 10

    move-object v5, p0

    move-object v0, p3

    const/4 v1, 0x0

    if-nez v5, :cond_0

    return-object v1

    :cond_0
    if-eqz v0, :cond_4

    .line 39
    array-length v0, v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p6, :cond_3

    if-nez p7, :cond_2

    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual/range {p6 .. p6}, La/b/a/b;->d()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    .line 50
    invoke-static {v0}, La/d/a/h/a;->a([B)Ljava/lang/String;

    move-result-object v4

    .line 52
    sget-object v0, La/d/a/h/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAkaDigestAuth: password="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", nc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v6, p5

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, La/d/a/h/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    new-instance v9, Lcom/mediatek/xcap/auth/AkaDigestAuth;

    invoke-virtual/range {p6 .. p6}, La/b/a/b;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object v0, v9

    move-object/from16 v1, p7

    move-object v5, p0

    move-object v7, p1

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/mediatek/xcap/auth/AkaDigestAuth;-><init>(Lcom/mediatek/xcap/header/WwwAuthHeader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v9

    :cond_3
    :goto_0
    return-object v1

    .line 55
    :cond_4
    :goto_1
    sget-object v0, La/d/a/h/a;->a:Ljava/lang/String;

    const-string/jumbo v2, "uaId is invalid!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 72
    sget-object v0, La/d/a/h/a;->i:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "[getString]can not getString the system property e="

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    .line 74
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "get"

    :try_start_1
    new-array v6, v3, [Ljava/lang/Class;

    .line 76
    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v2

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v1

    .line 77
    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, La/d/a/h/a;->i:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 82
    sget-object v5, La/d/a/h/a;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    .line 83
    sget-object v5, La/d/a/h/a;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    :goto_0
    sget-object v0, La/d/a/h/a;->i:Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    :try_start_2
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    aput-object p1, v3, v1

    .line 91
    invoke-virtual {v0, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p0

    :catch_2
    move-exception p0

    .line 97
    sget-object p1, La/d/a/h/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_3
    move-exception p0

    .line 98
    sget-object p1, La/d/a/h/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_4
    move-exception p0

    .line 99
    sget-object p1, La/d/a/h/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-object v5
.end method

.method public static a(Lokhttp3/Request;Lokhttp3/Response;)Ljava/lang/String;
    .locals 16

    const-string v0, "%3a"

    const-string v1, ""

    .line 1
    invoke-virtual/range {p0 .. p0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_0
    const-string/jumbo v4, "utf-8"

    .line 3
    invoke-static {v2, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, ":"

    .line 5
    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :cond_0
    const-string v0, "?"

    .line 7
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\\?"

    .line 8
    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 9
    aget-object v0, v0, v3

    move-object v2, v0

    :cond_1
    const-string v0, "/phone20/mStoreRelay"

    .line 11
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v13, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v13, v2

    :goto_0
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    .line 15
    sget v4, La/d/a/h/a;->b:I

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_2

    move v4, v0

    goto :goto_1

    :cond_2
    add-int/2addr v4, v0

    sput v4, La/d/a/h/a;->b:I

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "%08x"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 16
    invoke-virtual/range {p0 .. p0}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v15

    .line 17
    invoke-virtual/range {p1 .. p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v2

    const-string/jumbo v3, "www-authenticate"

    invoke-virtual {v2, v3}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "header="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "androidLog"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    :try_start_1
    invoke-static {v2, v0, v1}, La/d/a/h/a;->a(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 25
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Btid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, La/d/a/h/a;->e:La/b/a/b;

    invoke-virtual {v1}, La/b/a/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   Key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, La/d/a/h/a;->e:La/b/a/b;

    invoke-virtual {v1}, La/b/a/b;->d()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    sget-object v0, La/d/a/h/a;->e:La/b/a/b;

    invoke-virtual {v0}, La/b/a/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/xcap/header/WwwAuthHeader;->parse(Ljava/lang/String;)Lcom/mediatek/xcap/header/WwwAuthHeader;

    move-result-object v0

    .line 28
    invoke-static {}, La/d/a/h/a;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 29
    sget-object v6, La/d/a/h/a;->g:Ljava/lang/String;

    sget-object v7, La/d/a/h/a;->f:[B

    sget v8, La/d/a/h/a;->h:I

    sget-object v10, La/d/a/h/a;->e:La/b/a/b;

    const-string v1, ""

    move-object v4, v13

    move-object v5, v15

    move-object v9, v12

    move-object v11, v0

    move-object v12, v1

    invoke-static/range {v4 .. v12}, La/d/a/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;La/b/a/b;Lcom/mediatek/xcap/header/WwwAuthHeader;Ljava/lang/String;)Lcom/mediatek/xcap/auth/AkaDigestAuth;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/mediatek/xcap/auth/AkaDigestAuth;->calculateRequestDigest()Ljava/lang/String;

    .line 31
    invoke-virtual {v0}, Lcom/mediatek/xcap/auth/AkaDigestAuth;->createAuthorHeaderValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 33
    :cond_3
    invoke-static {}, Lcom/tcl/netlibrary/util/AppContextUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 34
    new-instance v1, La/e/a/a/a/a/a;

    invoke-static {}, Lcom/tcl/netlibrary/util/AppContextUtils;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v2, La/d/a/h/a;->e:La/b/a/b;

    invoke-virtual {v2}, La/b/a/b;->d()[B

    move-result-object v11

    sget-object v2, La/d/a/h/a;->e:La/b/a/b;

    invoke-virtual {v2}, La/b/a/b;->b()Ljava/lang/String;

    move-result-object v14

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v4, v1

    move-object v6, v0

    invoke-direct/range {v4 .. v15}, La/e/a/a/a/a/a;-><init>(Landroid/content/Context;Lcom/mediatek/xcap/header/WwwAuthHeader;Landroid/telephony/TelephonyManager;Ljava/lang/String;Ljava/lang/String;I[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {v1}, La/e/a/a/a/a/a;->a()Ljava/lang/String;

    .line 36
    invoke-virtual {v1}, La/e/a/a/a/a/a;->b()Ljava/lang/String;

    move-result-object v0

    :goto_3
    const-string v1, "androidLog-head"

    .line 38
    invoke-static {v1, v0}, La/d/a/h/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 6

    .line 56
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 58
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 59
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v1, 0x2

    .line 60
    sget-object v4, La/d/a/h/a;->j:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v5, v4, v5

    aput-char v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v2, v2, 0xf

    .line 61
    aget-char v2, v4, v2

    aput-char v2, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 64
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static a(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 100
    invoke-static {}, La/d/a/h/a;->a()Z

    move-result v1

    const-string v2, "GBA hit 400"

    const-string v3, "GBA hit 403"

    const-string v4, "handle401Exception: nafSessionKey="

    const-string v5, "handle401Exception: nafSessionKey Error!"

    const-string v6, ", subId="

    const-string v7, "handle401Exception: nafFqdn="

    const-string v8, "handle401Exception: realm is empty string !!!"

    const-string v9, "handle401Exception: authentication header has something wrong"

    const-string v10, "handle401Exception: wwwAuthHeader="

    const-string v12, ""

    const-string v13, "HTTP 400 Bad Request"

    const-string v14, "HTTP 403 Forbidden"

    const-string v15, "XcapClient"

    if-eqz v1, :cond_6

    .line 101
    sget-object v1, La/d/a/h/a;->d:La/b/a/a;

    if-nez v1, :cond_0

    .line 103
    new-instance v1, La/b/a/a;

    invoke-static {}, Lcom/tcl/netlibrary/util/AppContextUtils;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v1, v11}, La/b/a/a;-><init>(Landroid/content/Context;)V

    sput-object v1, La/d/a/h/a;->d:La/b/a/a;

    :cond_0
    if-nez v0, :cond_1

    .line 107
    invoke-static {v15, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 109
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/mediatek/xcap/header/WwwAuthHeader;->parse(Ljava/lang/String;)Lcom/mediatek/xcap/header/WwwAuthHeader;

    move-result-object v1

    .line 110
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v15, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    .line 111
    invoke-static {v9, v12}, La/b/a/a;->a(ZLjava/lang/String;)[B

    move-result-object v10

    sput-object v10, La/d/a/h/a;->f:[B

    .line 113
    invoke-virtual {v1}, Lcom/mediatek/xcap/header/WwwAuthHeader;->getRealm()Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 119
    invoke-static {}, Lcom/tcl/netlibrary/util/AppContextUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tcl/netlibrary/config/VVMConfig;->getInstance(Landroid/content/Context;)Lcom/tcl/netlibrary/config/VVMConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tcl/netlibrary/config/VVMConfig;->getHost()Ljava/lang/String;

    move-result-object v1

    sput-object v1, La/d/a/h/a;->g:Ljava/lang/String;

    .line 120
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v1

    sput v1, La/d/a/h/a;->h:I

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, La/d/a/h/a;->g:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, La/d/a/h/a;->h:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    sget-object v1, La/d/a/h/a;->d:La/b/a/a;

    sget-object v6, La/d/a/h/a;->g:Ljava/lang/String;

    sget-object v7, La/d/a/h/a;->f:[B

    sget v8, La/d/a/h/a;->h:I

    const/4 v9, 0x1

    invoke-virtual {v1, v6, v7, v9, v8}, La/b/a/a;->a(Ljava/lang/String;[BZI)La/b/a/b;

    move-result-object v1

    sput-object v1, La/d/a/h/a;->e:La/b/a/b;

    if-eqz v1, :cond_2

    .line 123
    invoke-virtual {v1}, La/b/a/b;->d()[B

    move-result-object v1

    if-eqz v1, :cond_2

    .line 124
    sget-object v1, La/d/a/h/a;->e:La/b/a/b;

    invoke-virtual {v1, v0}, La/b/a/b;->a(Ljava/lang/String;)V

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, La/d/a/h/a;->e:La/b/a/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 127
    :cond_2
    invoke-static {v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    sget-object v0, La/d/a/h/a;->e:La/b/a/b;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, La/b/a/b;->c()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_d

    sget-object v0, La/d/a/h/a;->e:La/b/a/b;

    invoke-virtual {v0}, La/b/a/b;->c()Ljava/lang/Exception;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/IllegalStateException;

    if-eqz v0, :cond_d

    .line 129
    sget-object v0, La/d/a/h/a;->e:La/b/a/b;

    invoke-virtual {v0}, La/b/a/b;->c()Ljava/lang/Exception;

    move-result-object v0

    check-cast v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 135
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    .line 136
    :cond_3
    invoke-static {v15, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_4
    invoke-static {v15, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_5
    invoke-static {v15, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 154
    :cond_6
    sget-object v1, La/d/a/h/a;->c:La/c/a/b/a;

    if-nez v1, :cond_7

    .line 155
    new-instance v1, La/c/a/b/a;

    invoke-static {}, Lcom/tcl/netlibrary/util/AppContextUtils;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v1, v11}, La/c/a/b/a;-><init>(Landroid/content/Context;)V

    sput-object v1, La/d/a/h/a;->c:La/c/a/b/a;

    :cond_7
    if-nez v0, :cond_8

    .line 158
    invoke-static {v15, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 160
    :cond_8
    invoke-static/range {p0 .. p0}, Lcom/mediatek/xcap/header/WwwAuthHeader;->parse(Ljava/lang/String;)Lcom/mediatek/xcap/header/WwwAuthHeader;

    move-result-object v1

    .line 161
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v15, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    sget-object v9, La/d/a/h/a;->c:La/c/a/b/a;

    invoke-virtual {v9, v12, v12}, La/c/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v9

    sput-object v9, La/d/a/h/a;->f:[B

    .line 164
    invoke-virtual {v1}, Lcom/mediatek/xcap/header/WwwAuthHeader;->getRealm()Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_c

    .line 166
    invoke-static {}, Lcom/tcl/netlibrary/util/AppContextUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tcl/netlibrary/config/VVMConfig;->getInstance(Landroid/content/Context;)Lcom/tcl/netlibrary/config/VVMConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tcl/netlibrary/config/VVMConfig;->getHost()Ljava/lang/String;

    move-result-object v1

    sput-object v1, La/d/a/h/a;->g:Ljava/lang/String;

    .line 167
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v1

    sput v1, La/d/a/h/a;->h:I

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, La/d/a/h/a;->g:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, La/d/a/h/a;->h:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    sget-object v1, La/d/a/h/a;->c:La/c/a/b/a;

    sget-object v6, La/d/a/h/a;->g:Ljava/lang/String;

    sget-object v7, La/d/a/h/a;->f:[B

    sget v8, La/d/a/h/a;->h:I

    const/4 v9, 0x1

    invoke-virtual {v1, v6, v7, v9, v8}, La/c/a/b/a;->a(Ljava/lang/String;[BZI)La/b/a/b;

    move-result-object v1

    sput-object v1, La/d/a/h/a;->e:La/b/a/b;

    if-eqz v1, :cond_9

    .line 170
    invoke-virtual {v1}, La/b/a/b;->d()[B

    move-result-object v1

    if-eqz v1, :cond_9

    .line 171
    sget-object v1, La/d/a/h/a;->e:La/b/a/b;

    invoke-virtual {v1, v0}, La/b/a/b;->a(Ljava/lang/String;)V

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, La/d/a/h/a;->e:La/b/a/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 174
    :cond_9
    invoke-static {v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    sget-object v0, La/d/a/h/a;->e:La/b/a/b;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, La/b/a/b;->c()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_d

    sget-object v0, La/d/a/h/a;->e:La/b/a/b;

    invoke-virtual {v0}, La/b/a/b;->c()Ljava/lang/Exception;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/IllegalStateException;

    if-eqz v0, :cond_d

    .line 176
    sget-object v0, La/d/a/h/a;->e:La/b/a/b;

    invoke-virtual {v0}, La/b/a/b;->c()Ljava/lang/Exception;

    move-result-object v0

    check-cast v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 182
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    .line 183
    :cond_a
    invoke-static {v15, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_b
    invoke-static {v15, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_c
    invoke-static {v15, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_0
    return-void
.end method

.method public static a()Z
    .locals 5

    const-string v0, "ro.hardware"

    const-string v1, "None"

    .line 65
    invoke-static {v0, v1}, La/d/a/h/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mt"

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v1, "qcom"

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    return v2

    .line 71
    :cond_1
    sget-object v1, La/d/a/h/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "platform is error :platform = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method
