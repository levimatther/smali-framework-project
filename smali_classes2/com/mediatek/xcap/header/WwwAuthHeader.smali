.class public Lcom/mediatek/xcap/header/WwwAuthHeader;
.super Ljava/lang/Object;
.source "WwwAuthHeader.java"


# static fields
.field public static final ALGO:Ljava/lang/String; = "algorithm"

.field public static final DIGEST_SCHEME:Ljava/lang/String; = "Digest"

.field public static final NONCE:Ljava/lang/String; = "nonce"

.field public static final OPAQUE:Ljava/lang/String; = "opaque"

.field public static final PROP_FORCE_DEBUG_KEY:Ljava/lang/String; = "persist.vendor.log.tag.tel_dbg"

.field public static final QOP:Ljava/lang/String; = "qop"

.field public static final QOP_AUTH:Ljava/lang/String; = "auth"

.field public static final QOP_AUTH_INT:Ljava/lang/String; = "auth-int"

.field public static final REALM:Ljava/lang/String; = "realm"

.field public static final SENLOG:Z

.field public static final TAG:Ljava/lang/String; = "WwwAuthenticateHeader"

.field public static final TELDBG:Z = true


# instance fields
.field public mAlgorithm:Ljava/lang/String;

.field public mNonce:Ljava/lang/String;

.field public mOpaque:Ljava/lang/String;

.field public mQop:Ljava/lang/String;

.field public mRealm:Ljava/lang/String;

.field public mSchemeName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/xcap/header/WwwAuthHeader;->SENLOG:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/mediatek/xcap/header/WwwAuthHeader;->mSchemeName:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/mediatek/xcap/header/WwwAuthHeader;->mRealm:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/mediatek/xcap/header/WwwAuthHeader;->mNonce:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/mediatek/xcap/header/WwwAuthHeader;->mAlgorithm:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/mediatek/xcap/header/WwwAuthHeader;->mQop:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/mediatek/xcap/header/WwwAuthHeader;->mOpaque:Ljava/lang/String;

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/mediatek/xcap/header/WwwAuthHeader;
    .locals 17

    move-object/from16 v0, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_d

    const-string v4, " "

    .line 3
    invoke-static {v0, v3, v4}, Lcom/mediatek/xcap/header/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v4

    .line 5
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 6
    invoke-static {v0, v4}, Lcom/mediatek/xcap/header/HeaderParser;->skipWhitespace(Ljava/lang/String;I)I

    move-result v3

    .line 8
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v3, v5

    const-string v5, ","

    .line 19
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 21
    array-length v5, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_1
    if-ge v12, v5, :cond_c

    aget-object v14, v4, v12

    .line 22
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "field["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/mediatek/xcap/header/WwwAuthHeader;->SENLOG:Z

    if-nez v1, :cond_0

    move-object v1, v14

    goto :goto_2

    :cond_0
    const-string v1, "[hidden]"

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 24
    array-length v2, v1

    const/4 v15, 0x2

    if-ge v2, v15, :cond_1

    .line 25
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "No support:"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v13, v13, 0x1

    const/4 v1, 0x0

    goto/16 :goto_6

    :cond_1
    const/4 v2, 0x0

    .line 30
    aget-object v15, v1, v2

    .line 32
    array-length v2, v1

    const/16 v16, 0x1

    const/4 v0, 0x2

    if-le v2, v0, :cond_2

    .line 33
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 35
    :cond_2
    aget-object v0, v1, v16

    :goto_3
    const-string v1, "\""

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_3

    const/4 v1, 0x0

    .line 39
    invoke-static {v0, v15, v1}, Lcom/mediatek/xcap/header/HeaderParser;->getQuoteString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_3
    const/4 v1, 0x0

    :goto_4
    const-string v2, "realm"

    .line 42
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v7, v0

    goto :goto_5

    :cond_4
    const-string v2, "uri"

    .line 44
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_5

    :cond_5
    const-string v2, "algorithm"

    .line 45
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object v9, v0

    goto :goto_5

    :cond_6
    const-string v2, "domain"

    .line 47
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_5

    :cond_7
    const-string v2, "nonce"

    .line 49
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object v8, v0

    goto :goto_5

    :cond_8
    const-string v2, "stale"

    .line 51
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_5

    :cond_9
    const-string v2, "qop"

    .line 53
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object v10, v0

    goto :goto_5

    :cond_a
    const-string v2, "opaque"

    .line 55
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    move-object v11, v0

    :cond_b
    :goto_5
    add-int/lit8 v13, v13, 0x1

    :goto_6
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_1

    :cond_c
    const/4 v1, 0x0

    .line 60
    new-instance v4, Lcom/mediatek/xcap/header/WwwAuthHeader;

    move-object v5, v4

    invoke-direct/range {v5 .. v11}, Lcom/mediatek/xcap/header/WwwAuthHeader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 63
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dump:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WwwAuthenticateHeader"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mediatek/xcap/header/WwwAuthHeader;->mAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mediatek/xcap/header/WwwAuthHeader;->mNonce:Ljava/lang/String;

    return-object v0
.end method

.method public getOpaque()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mediatek/xcap/header/WwwAuthHeader;->mOpaque:Ljava/lang/String;

    return-object v0
.end method

.method public getQop()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mediatek/xcap/header/WwwAuthHeader;->mQop:Ljava/lang/String;

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mediatek/xcap/header/WwwAuthHeader;->mRealm:Ljava/lang/String;

    return-object v0
.end method

.method public getSchemeName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mediatek/xcap/header/WwwAuthHeader;->mSchemeName:Ljava/lang/String;

    return-object v0
.end method

.method public setAlgorithm(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mediatek/xcap/header/WwwAuthHeader;->mAlgorithm:Ljava/lang/String;

    return-void
.end method

.method public setNonce(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mediatek/xcap/header/WwwAuthHeader;->mNonce:Ljava/lang/String;

    return-void
.end method

.method public setOpaque(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mediatek/xcap/header/WwwAuthHeader;->mOpaque:Ljava/lang/String;

    return-void
.end method

.method public setQop(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mediatek/xcap/header/WwwAuthHeader;->mQop:Ljava/lang/String;

    return-void
.end method

.method public setRealm(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mediatek/xcap/header/WwwAuthHeader;->mRealm:Ljava/lang/String;

    return-void
.end method

.method public setSchemeName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mediatek/xcap/header/WwwAuthHeader;->mSchemeName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WwwAuthHeader [realm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/mediatek/xcap/header/WwwAuthHeader;->SENLOG:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/xcap/header/WwwAuthHeader;->mRealm:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, "[hidden]"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", schema name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/xcap/header/WwwAuthHeader;->mSchemeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nonce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/xcap/header/WwwAuthHeader;->mNonce:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", algorithm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/xcap/header/WwwAuthHeader;->mAlgorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", qop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/xcap/header/WwwAuthHeader;->mQop:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", opaque="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/xcap/header/WwwAuthHeader;->mOpaque:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
