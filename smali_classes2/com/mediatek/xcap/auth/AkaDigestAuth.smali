.class public Lcom/mediatek/xcap/auth/AkaDigestAuth;
.super Ljava/lang/Object;
.source "AkaDigestAuth.java"


# static fields
.field public static final AKA_SPLITTER:Ljava/lang/String; = "-"

.field public static final AKA_VERSION:Ljava/lang/String; = "AKAv"

.field public static final ALGORITHM_NAME_MD5:Ljava/lang/String; = "MD5"

.field public static final ALGORITHM_NAME_MD5_SESS:Ljava/lang/String; = "MD5-sess"

.field public static final ALGORITHM_NAME_UNSPECIFIED:Ljava/lang/String; = ""

.field public static final HEADER_VALUE_FORMAT_WITH_RESPONSE:Ljava/lang/String; = "Digest username=\"%s\", realm=\"%s\", nonce=\"%s\", uri=\"%s\", qop=%s, nc=%s, cnonce=\"%s\", response=\"%s\", opaque=\"%s\""

.field public static final HEADER_VALUE_FORMAT_WITH_RESPONSE2:Ljava/lang/String; = "Digest username=\"%s\", realm=\"%s\", nonce=\"%s\", uri=\"%s\", qop=%s, nc=%s, cnonce=\"%s\", response=\"%s\""

.field public static final HEXADECIMAL:[C

.field public static final ISO_8859_1:Ljava/lang/String; = "ISO-8859-1"

.field public static final PROP_FORCE_DEBUG_KEY:Ljava/lang/String; = "persist.vendor.log.tag.tel_dbg"

.field public static final QOP_AUTH_BOTH:Ljava/lang/String; = "auth, auth-int"

.field public static final QOP_AUTH_INT_NAME:Ljava/lang/String; = "auth-int"

.field public static final QOP_AUTH_NAME:Ljava/lang/String; = "auth"

.field public static final QOP_UNSPECIFIED:Ljava/lang/String; = ""

.field public static final QUOTE:Ljava/lang/String; = "\""

.field public static final SENLOG:Z

.field public static final SEPARATOR:Ljava/lang/String; = ":"

.field public static final TAG:Ljava/lang/String; = "AkaDigestAuth"

.field public static final TELDBG:Z = true

.field public static final US_ASCII:Ljava/lang/String; = "US-ASCII"


# instance fields
.field public mAlgorithm:Ljava/lang/String;

.field public mAuts:Ljava/lang/String;

.field public mCharSet:Ljava/lang/String;

.field public mCnonce:Ljava/lang/String;

.field public mEntityBody:Ljava/lang/String;

.field public mMd5Helper:Ljava/security/MessageDigest;

.field public mMethod:Ljava/lang/String;

.field public mNc:Ljava/lang/String;

.field public mNonce:Ljava/lang/String;

.field public mOpaque:Ljava/lang/String;

.field public mPassword:Ljava/lang/String;

.field public mQop:Ljava/lang/String;

.field public mRealm:Ljava/lang/String;

.field public mResponse:Ljava/lang/String;

.field public mUri:Ljava/lang/String;

.field public mUsername:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->SENLOG:Z

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 4
    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->HEXADECIMAL:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>(Lcom/mediatek/xcap/header/WwwAuthHeader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-direct {p0}, Lcom/mediatek/xcap/auth/AkaDigestAuth;->initMd5()V

    .line 25
    invoke-virtual {p1}, Lcom/mediatek/xcap/header/WwwAuthHeader;->getQop()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mQop:Ljava/lang/String;

    const-string v1, "auth"

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mQop:Ljava/lang/String;

    const-string v2, "auth-int"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 28
    iput-object v2, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mQop:Ljava/lang/String;

    .line 31
    :cond_0
    invoke-virtual {p1}, Lcom/mediatek/xcap/header/WwwAuthHeader;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_1

    .line 32
    invoke-virtual {p1}, Lcom/mediatek/xcap/header/WwwAuthHeader;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mAlgorithm:Ljava/lang/String;

    goto :goto_0

    .line 34
    :cond_1
    iput-object v1, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mAlgorithm:Ljava/lang/String;

    .line 37
    :goto_0
    iput-object p2, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mUsername:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Lcom/mediatek/xcap/header/WwwAuthHeader;->getRealm()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mRealm:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mPassword:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mAuts:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Lcom/mediatek/xcap/header/WwwAuthHeader;->getNonce()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mNonce:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Lcom/mediatek/xcap/header/WwwAuthHeader;->getOpaque()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mOpaque:Ljava/lang/String;

    .line 43
    iput-object p5, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mUri:Ljava/lang/String;

    .line 44
    iput-object p6, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mNc:Ljava/lang/String;

    .line 45
    iput-object p7, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mMethod:Ljava/lang/String;

    .line 46
    invoke-direct {p0}, Lcom/mediatek/xcap/auth/AkaDigestAuth;->createCNonce()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mCnonce:Ljava/lang/String;

    .line 47
    iput-object p8, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mEntityBody:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mResponse:Ljava/lang/String;

    const-string p1, "ISO-8859-1"

    .line 49
    iput-object p1, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mCharSet:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-direct {p0}, Lcom/mediatek/xcap/auth/AkaDigestAuth;->initMd5()V

    .line 5
    iput-object p6, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mQop:Ljava/lang/String;

    .line 6
    iput-object p7, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mAlgorithm:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mUsername:Ljava/lang/String;

    .line 8
    iput-object p8, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mRealm:Ljava/lang/String;

    .line 9
    iput-object p3, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mPassword:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mAuts:Ljava/lang/String;

    .line 11
    iput-object p9, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mNonce:Ljava/lang/String;

    .line 12
    iput-object p10, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mOpaque:Ljava/lang/String;

    .line 13
    iput-object p4, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mUri:Ljava/lang/String;

    .line 14
    iput-object p5, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mNc:Ljava/lang/String;

    .line 15
    iput-object p12, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mMethod:Ljava/lang/String;

    .line 16
    iput-object p11, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mCnonce:Ljava/lang/String;

    .line 17
    iput-object p13, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mEntityBody:Ljava/lang/String;

    const-string p1, ""

    .line 18
    iput-object p1, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mResponse:Ljava/lang/String;

    const-string p1, "ISO-8859-1"

    .line 20
    iput-object p1, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mCharSet:Ljava/lang/String;

    return-void
.end method

.method private calculateHA1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "run calculateHA1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AkaDigestAuth"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v2, ":"

    if-nez v0, :cond_1

    const-string v0, "MD5"

    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 22
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/mediatek/xcap/auth/AkaDigestAuth;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mediatek/xcap/auth/AkaDigestAuth;->md5([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "A = username: relam : password"

    .line 23
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 25
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/mediatek/xcap/auth/AkaDigestAuth;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, La/a/a/a/a;->b([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 26
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "a1Res:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "a1:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    .line 35
    invoke-static {p1}, La/a/a/a/a;->a(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mediatek/xcap/auth/AkaDigestAuth;->md5([B)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    .line 37
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ha1Result:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method private calculateHA2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "run calculateHA2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/Uri : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-static {p3}, Lcom/mediatek/xcap/auth/AkaDigestAuth;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/Body : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lcom/mediatek/xcap/auth/AkaDigestAuth;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AkaDigestAuth"

    .line 3
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p1, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mQop:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    const-string v2, ":"

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mQop:Ljava/lang/String;

    const-string v3, "auth"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mQop:Ljava/lang/String;

    const-string v3, "auth-int"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {p0, p4}, Lcom/mediatek/xcap/auth/AkaDigestAuth;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/mediatek/xcap/auth/AkaDigestAuth;->md5([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 11
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "a2Res:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/mediatek/xcap/auth/AkaDigestAuth;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    move-object p1, v1

    goto :goto_1

    .line 12
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_3

    .line 20
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "a2:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/mediatek/xcap/auth/AkaDigestAuth;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-direct {p0, p1}, Lcom/mediatek/xcap/auth/AkaDigestAuth;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mediatek/xcap/auth/AkaDigestAuth;->md5([B)Ljava/lang/String;

    move-result-object v1

    .line 23
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ha2Result:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private createCNonce()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dataStr:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AkaDigestAuth"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v2, "US-ASCII"

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/xcap/auth/AkaDigestAuth;->md5([B)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ue:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1
.end method

.method private encode([B)Ljava/lang/String;
    .locals 7

    .line 1
    array-length v0, p1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/16 v0, 0x20

    new-array v0, v0, [C

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 8
    aget-byte v3, p1, v2

    and-int/lit8 v3, v3, 0xf

    .line 9
    aget-byte v4, p1, v2

    and-int/lit16 v4, v4, 0xf0

    shr-int/lit8 v4, v4, 0x4

    mul-int/lit8 v5, v2, 0x2

    .line 10
    sget-object v6, Lcom/mediatek/xcap/auth/AkaDigestAuth;->HEXADECIMAL:[C

    aget-char v4, v6, v4

    aput-char v4, v0, v5

    add-int/lit8 v5, v5, 0x1

    .line 11
    aget-char v3, v6, v3

    aput-char v3, v0, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 14
    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    return-object p1
.end method

.method public static encryptString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v0

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    :cond_0
    :try_start_0
    const-string v1, "UTF-8"

    .line 7
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    const-string p0, ""

    return-object p0

    .line 15
    :cond_1
    invoke-virtual {v0, p0}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getBytes(Ljava/lang/String;)[B
    .locals 3

    const-string v0, "AkaDigestAuth"

    .line 1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBytes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/mediatek/xcap/auth/AkaDigestAuth;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Charset : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mCharSet:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mCharSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private initMd5()V
    .locals 1

    :try_start_0
    const-string v0, "MD5"

    .line 1
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mMd5Helper:Ljava/security/MessageDigest;

    .line 2
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private md5([B)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mMd5Helper:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcom/mediatek/xcap/auth/AkaDigestAuth;->encode([B)Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "encode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AkaDigestAuth"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method


# virtual methods
.method public calculateRequestDigest()Ljava/lang/String;
    .locals 12

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mQop:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mQop:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AkaDigestAuth"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mQop:Ljava/lang/String;

    const-string v2, "auth"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "response:"

    const-string v3, "rawRes:"

    const-string v4, ":"

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mQop:Ljava/lang/String;

    const-string v5, "auth-int"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mQop:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    iget-object v6, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mAlgorithm:Ljava/lang/String;

    iget-object v7, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mUsername:Ljava/lang/String;

    iget-object v8, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mRealm:Ljava/lang/String;

    iget-object v9, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mPassword:Ljava/lang/String;

    iget-object v10, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mNonce:Ljava/lang/String;

    iget-object v11, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mCnonce:Ljava/lang/String;

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/mediatek/xcap/auth/AkaDigestAuth;->calculateHA1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 15
    iget-object v5, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mQop:Ljava/lang/String;

    iget-object v6, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mMethod:Ljava/lang/String;

    iget-object v7, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mUri:Ljava/lang/String;

    iget-object v8, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mEntityBody:Ljava/lang/String;

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/mediatek/xcap/auth/AkaDigestAuth;->calculateHA2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 16
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mNonce:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 17
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-direct {p0, v0}, Lcom/mediatek/xcap/auth/AkaDigestAuth;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/xcap/auth/AkaDigestAuth;->md5([B)Ljava/lang/String;

    move-result-object v0

    .line 19
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 21
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported qop value, qop="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mQop:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto/16 :goto_1

    .line 22
    :cond_2
    :goto_0
    iget-object v6, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mAlgorithm:Ljava/lang/String;

    iget-object v7, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mUsername:Ljava/lang/String;

    iget-object v8, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mRealm:Ljava/lang/String;

    iget-object v9, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mPassword:Ljava/lang/String;

    iget-object v10, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mNonce:Ljava/lang/String;

    iget-object v11, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mCnonce:Ljava/lang/String;

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/mediatek/xcap/auth/AkaDigestAuth;->calculateHA1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
    iget-object v5, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mQop:Ljava/lang/String;

    iget-object v6, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mMethod:Ljava/lang/String;

    iget-object v7, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mUri:Ljava/lang/String;

    iget-object v8, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mEntityBody:Ljava/lang/String;

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/mediatek/xcap/auth/AkaDigestAuth;->calculateHA2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 24
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mNonce:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mNc:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mCnonce:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mQop:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 26
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-direct {p0, v0}, Lcom/mediatek/xcap/auth/AkaDigestAuth;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/xcap/auth/AkaDigestAuth;->md5([B)Ljava/lang/String;

    move-result-object v0

    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :goto_1
    iput-object v0, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mResponse:Ljava/lang/String;

    return-object v0
.end method

.method public createAuthorHeaderValue()Ljava/lang/String;
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mOpaque:Ljava/lang/String;

    const/16 v1, 0x8

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/16 v10, 0x9

    if-eqz v0, :cond_0

    .line 2
    new-instance v11, Ljava/lang/StringBuilder;

    const/16 v12, 0xa

    new-array v12, v12, [Ljava/lang/Object;

    iget-object v13, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mUsername:Ljava/lang/String;

    aput-object v13, v12, v9

    iget-object v9, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mRealm:Ljava/lang/String;

    aput-object v9, v12, v8

    iget-object v8, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mNonce:Ljava/lang/String;

    aput-object v8, v12, v7

    iget-object v7, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mUri:Ljava/lang/String;

    aput-object v7, v12, v6

    iget-object v6, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mQop:Ljava/lang/String;

    aput-object v6, v12, v5

    iget-object v5, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mNc:Ljava/lang/String;

    aput-object v5, v12, v4

    iget-object v4, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mCnonce:Ljava/lang/String;

    aput-object v4, v12, v3

    iget-object v3, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mResponse:Ljava/lang/String;

    aput-object v3, v12, v2

    aput-object v0, v12, v1

    iget-object v0, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mAlgorithm:Ljava/lang/String;

    aput-object v0, v12, v10

    const-string v0, "Digest username=\"%s\", realm=\"%s\", nonce=\"%s\", uri=\"%s\", qop=%s, nc=%s, cnonce=\"%s\", response=\"%s\", opaque=\"%s\""

    invoke-static {v0, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v11, Ljava/lang/StringBuilder;

    new-array v0, v10, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mUsername:Ljava/lang/String;

    aput-object v10, v0, v9

    iget-object v9, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mRealm:Ljava/lang/String;

    aput-object v9, v0, v8

    iget-object v8, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mNonce:Ljava/lang/String;

    aput-object v8, v0, v7

    iget-object v7, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mUri:Ljava/lang/String;

    aput-object v7, v0, v6

    iget-object v6, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mQop:Ljava/lang/String;

    aput-object v6, v0, v5

    iget-object v5, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mNc:Ljava/lang/String;

    aput-object v5, v0, v4

    iget-object v4, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mCnonce:Ljava/lang/String;

    aput-object v4, v0, v3

    iget-object v3, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mResponse:Ljava/lang/String;

    aput-object v3, v0, v2

    iget-object v2, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mAlgorithm:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "Digest username=\"%s\", realm=\"%s\", nonce=\"%s\", uri=\"%s\", qop=%s, nc=%s, cnonce=\"%s\", response=\"%s\""

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mAlgorithm:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", algorithm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mAlgorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mAuts:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", auts=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mAuts:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    :cond_2
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
