.class public Lcom/mediatek/gba/header/AuthInfoHeader;
.super Ljava/lang/Object;
.source "AuthInfoHeader.java"


# static fields
.field public static final CNONCE:Ljava/lang/String; = "cnonce"

.field public static final HEADER_NAME:Ljava/lang/String; = "Authentication-Info"

.field public static final NC:Ljava/lang/String; = "nc"

.field public static final NONCE:Ljava/lang/String; = "nonce"

.field public static final OPAQUE:Ljava/lang/String; = "opaque"

.field public static final QOP:Ljava/lang/String; = "qop"

.field public static final RSPAUTH:Ljava/lang/String; = "rspauth"


# instance fields
.field public mCnonce:Ljava/lang/String;

.field public mNonce:Ljava/lang/String;

.field public mNonceCount:Ljava/lang/String;

.field public mOpaque:Ljava/lang/String;

.field public mQop:Ljava/lang/String;

.field public mRspauth:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/mediatek/gba/header/AuthInfoHeader;->mQop:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/mediatek/gba/header/AuthInfoHeader;->mRspauth:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/mediatek/gba/header/AuthInfoHeader;->mCnonce:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/mediatek/gba/header/AuthInfoHeader;->mNonceCount:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/mediatek/gba/header/AuthInfoHeader;->mOpaque:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/mediatek/gba/header/AuthInfoHeader;->mNonce:Ljava/lang/String;

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/mediatek/gba/header/AuthInfoHeader;
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move v3, v1

    const/4 v4, 0x0

    .line 1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_8

    const-string v4, " "

    .line 3
    invoke-static {v0, v3, v4}, Lcom/mediatek/xcap/header/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v4

    .line 5
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

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

    .line 18
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 20
    array-length v5, v4

    move v12, v1

    move v13, v12

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1
    if-ge v12, v5, :cond_7

    aget-object v14, v4, v12

    .line 21
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "field["

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "]: "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v11, "="

    invoke-virtual {v2, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 23
    array-length v11, v2

    const/4 v15, 0x2

    if-ge v11, v15, :cond_1

    .line 24
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "No support:"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 29
    :cond_1
    aget-object v11, v2, v1

    .line 31
    array-length v10, v2

    const/16 v16, 0x1

    if-le v10, v15, :cond_2

    .line 32
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v2, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 34
    :cond_2
    aget-object v2, v2, v16

    :goto_3
    const-string v10, "\""

    .line 37
    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-ltz v10, :cond_3

    .line 38
    invoke-static {v2, v11, v1}, Lcom/mediatek/xcap/header/HeaderParser;->getQuoteString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :cond_3
    const-string v10, "rspauth"

    .line 41
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    move-object v7, v2

    goto :goto_2

    :cond_4
    const-string v10, "cnonce"

    .line 43
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    move-object v8, v2

    goto :goto_2

    :cond_5
    const-string v10, "qop"

    .line 45
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    move-object v6, v2

    goto :goto_2

    :cond_6
    const-string v10, "nc"

    .line 47
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    move-object v9, v2

    goto :goto_2

    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 52
    :cond_7
    new-instance v4, Lcom/mediatek/gba/header/AuthInfoHeader;

    move-object v5, v4

    const/4 v2, 0x0

    move-object v10, v2

    const/4 v2, 0x0

    move-object v11, v2

    invoke-direct/range {v5 .. v11}, Lcom/mediatek/gba/header/AuthInfoHeader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    return-object v4
.end method


# virtual methods
.method public getCnonce()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mediatek/gba/header/AuthInfoHeader;->mCnonce:Ljava/lang/String;

    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mediatek/gba/header/AuthInfoHeader;->mNonce:Ljava/lang/String;

    return-object v0
.end method

.method public getNonceCount()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mediatek/gba/header/AuthInfoHeader;->mNonceCount:Ljava/lang/String;

    return-object v0
.end method

.method public getOpaque()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mediatek/gba/header/AuthInfoHeader;->mOpaque:Ljava/lang/String;

    return-object v0
.end method

.method public getQop()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mediatek/gba/header/AuthInfoHeader;->mQop:Ljava/lang/String;

    return-object v0
.end method

.method public getRspauth()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mediatek/gba/header/AuthInfoHeader;->mRspauth:Ljava/lang/String;

    return-object v0
.end method

.method public setCnonce(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mediatek/gba/header/AuthInfoHeader;->mCnonce:Ljava/lang/String;

    return-void
.end method

.method public setNonce(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mediatek/gba/header/AuthInfoHeader;->mNonce:Ljava/lang/String;

    return-void
.end method

.method public setNonceCount(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mediatek/gba/header/AuthInfoHeader;->mNonceCount:Ljava/lang/String;

    return-void
.end method

.method public setOpaque(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mediatek/gba/header/AuthInfoHeader;->mOpaque:Ljava/lang/String;

    return-void
.end method

.method public setQop(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mediatek/gba/header/AuthInfoHeader;->mQop:Ljava/lang/String;

    return-void
.end method

.method public setRspauth(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mediatek/gba/header/AuthInfoHeader;->mRspauth:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AuthenticationInfoHeader [qop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/gba/header/AuthInfoHeader;->mQop:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rspauth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/gba/header/AuthInfoHeader;->mRspauth:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cnonce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/gba/header/AuthInfoHeader;->mCnonce:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nonceCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/gba/header/AuthInfoHeader;->mNonceCount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", opaque="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/gba/header/AuthInfoHeader;->mOpaque:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nonce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/gba/header/AuthInfoHeader;->mNonce:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
