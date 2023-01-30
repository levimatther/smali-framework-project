.class public Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils;
.super Ljava/lang/Object;
.source "DigestMd5Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils$DigestMessageParser;,
        Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils$Data;
    }
.end annotation


# static fields
.field private static final DIGEST_CHARSET:Ljava/lang/String; = "CHARSET"

.field private static final DIGEST_CNONCE:Ljava/lang/String; = "cnonce"

.field private static final DIGEST_NC:Ljava/lang/String; = "nc"

.field private static final DIGEST_NONCE:Ljava/lang/String; = "nonce"

.field private static final DIGEST_QOP:Ljava/lang/String; = "qop"

.field private static final DIGEST_REALM:Ljava/lang/String; = "realm"

.field private static final DIGEST_RESPONSE:Ljava/lang/String; = "response"

.field private static final DIGEST_URI:Ljava/lang/String; = "digest-uri"

.field private static final DIGEST_USERNAME:Ljava/lang/String; = "username"

.field private static final HEX_CHARS:Ljava/lang/String; = "0123456789abcdef"

.field private static final RESPONSE_AUTH_HEADER:Ljava/lang/String; = "rspauth="

.field private static final TAG:Ljava/lang/String; = "DigestMd5Utils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getKeyDigest(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils;->getMd5(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method private static getMd5(Ljava/lang/String;)[B
    .locals 2

    :try_start_0
    const-string v0, "MD5"

    .line 189
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 190
    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 191
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 193
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method static getResponse(Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils$Data;Z)Ljava/lang/String;
    .locals 5

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    new-instance v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils$Data;->username:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils$Data;->realm:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils$Data;->password:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 162
    invoke-static {v2}, Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils;->getMd5(Ljava/lang/String;)[B

    move-result-object v2

    sget-object v4, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils$Data;->nonce:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils$Data;->cnonce:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p1, :cond_0

    const-string p1, "AUTHENTICATE"

    .line 168
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils$Data;->digestUri:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils;->getMd5(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils;->toHex([B)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils$Data;->nonce:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils$Data;->nc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils$Data;->cnonce:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils$Data;->qop:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils;->getMd5(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils;->toHex([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 173
    invoke-static {p1, p0}, Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils;->getKeyDigest(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    .line 172
    invoke-static {p0}, Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils;->toHex([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseDigestMessage(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/voicemail/impl/mail/MessagingException;
        }
    .end annotation

    .line 222
    new-instance v0, Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils$DigestMessageParser;

    invoke-direct {v0, p0}, Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils$DigestMessageParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils$DigestMessageParser;->parse()Ljava/util/Map;

    move-result-object p0

    const-string v0, "nonce"

    .line 223
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 224
    :cond_0
    new-instance p0, Lcom/android/voicemail/impl/mail/MessagingException;

    const-string v0, "nonce missing from server DIGEST-MD5 challenge"

    invoke-direct {p0, v0}, Lcom/android/voicemail/impl/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static toHex([B)Ljava/lang/String;
    .locals 6

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    .line 214
    div-int/lit8 v4, v3, 0x10

    const-string v5, "0123456789abcdef"

    .line 215
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    rem-int/lit8 v3, v3, 0x10

    .line 216
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 218
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
