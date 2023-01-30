.class Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils$DigestMessageParser;
.super Ljava/lang/Object;
.source "DigestMd5Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DigestMessageParser"
.end annotation


# instance fields
.field private final mMessage:Ljava/lang/String;

.field private mPosition:I

.field private mResult:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 233
    iput v0, p0, Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils$DigestMessageParser;->mPosition:I

    .line 234
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils$DigestMessageParser;->mResult:Ljava/util/Map;

    .line 237
    iput-object p1, p0, Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils$DigestMessageParser;->mMessage:Ljava/lang/String;

    return-void
.end method

.method private expect(C)V
    .locals 3

    .line 264
    invoke-direct {p0}, Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils$DigestMessageParser;->pop()C

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 265
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unexpected character "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils$DigestMessageParser;->mMessage:Ljava/lang/String;

    iget v2, p0, Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils$DigestMessageParser;->mPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private goToNext(C)V
    .locals 1

    .line 280
    :goto_0
    invoke-direct {p0}, Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils$DigestMessageParser;->peek()C

    move-result v0

    if-eq v0, p1, :cond_0

    .line 281
    iget v0, p0, Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils$DigestMessageParser;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils$DigestMessageParser;->mPosition:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private parseKey()Ljava/lang/String;
    .locals 3

    .line 286
    iget v0, p0, Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils$DigestMessageParser;->mPosition:I

    const/16 v1, 0x3d

    .line 287
    invoke-direct {p0, v1}, Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils$DigestMessageParser;->goToNext(C)V

    .line 288
    iget-object v1, p0, Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils$DigestMessageParser;->mMessage:Ljava/lang/String;

    iget v2, p0, Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils$DigestMessageParser;->mPosition:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parsePair()V
    .locals 3

    .line 257
    invoke-direct {p0}, Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils$DigestMessageParser;->parseKey()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3d

    .line 258
    invoke-direct {p0, v1}, Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils$DigestMessageParser;->expect(C)V

    .line 259
    invoke-direct {p0}, Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils$DigestMessageParser;->parseValue()Ljava/lang/String;

    move-result-object v1

    .line 260
    iget-object v2, p0, Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils$DigestMessageParser;->mResult:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private parseQuotedValue()Ljava/lang/String;
    .locals 4

    const/16 v0, 0x22

    .line 300
    invoke-direct {p0, v0}, Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils$DigestMessageParser;->expect(C)V

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 303
    :goto_0
    invoke-direct {p0}, Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils$DigestMessageParser;->pop()C

    move-result v2

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_0

    .line 305
    invoke-direct {p0}, Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils$DigestMessageParser;->pop()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    if-ne v2, v0, :cond_1

    .line 312
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 309
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private parseUnquotedValue()Ljava/lang/String;
    .locals 3

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 318
    :cond_0
    invoke-direct {p0}, Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils$DigestMessageParser;->pop()C

    move-result v1

    const/16 v2, 0x5c

    if-ne v1, v2, :cond_1

    .line 320
    invoke-direct {p0}, Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils$DigestMessageParser;->pop()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 v2, 0x2c

    if-ne v1, v2, :cond_2

    .line 322
    iget v1, p0, Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils$DigestMessageParser;->mPosition:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils$DigestMessageParser;->mPosition:I

    goto :goto_1

    .line 325
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 328
    :goto_0
    iget v1, p0, Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils$DigestMessageParser;->mPosition:I

    iget-object v2, p0, Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils$DigestMessageParser;->mMessage:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 332
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parseValue()Ljava/lang/String;
    .locals 2

    .line 292
    invoke-direct {p0}, Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils$DigestMessageParser;->peek()C

    move-result v0

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    .line 293
    invoke-direct {p0}, Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils$DigestMessageParser;->parseQuotedValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 295
    :cond_0
    invoke-direct {p0}, Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils$DigestMessageParser;->parseUnquotedValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private peek()C
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils$DigestMessageParser;->mMessage:Ljava/lang/String;

    iget v1, p0, Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils$DigestMessageParser;->mPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method private pop()C
    .locals 2

    .line 270
    invoke-direct {p0}, Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils$DigestMessageParser;->peek()C

    move-result v0

    .line 271
    iget v1, p0, Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils$DigestMessageParser;->mPosition:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils$DigestMessageParser;->mPosition:I

    return v0
.end method


# virtual methods
.method public parse()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 243
    :cond_0
    :goto_0
    :try_start_0
    iget v0, p0, Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils$DigestMessageParser;->mPosition:I

    iget-object v1, p0, Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils$DigestMessageParser;->mMessage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 244
    invoke-direct {p0}, Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils$DigestMessageParser;->parsePair()V

    .line 245
    iget v0, p0, Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils$DigestMessageParser;->mPosition:I

    iget-object v1, p0, Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils$DigestMessageParser;->mMessage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/16 v0, 0x2c

    .line 246
    invoke-direct {p0, v0}, Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils$DigestMessageParser;->expect(C)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/android/voicemail/impl/mail/store/imap/DigestMd5Utils$DigestMessageParser;->mResult:Ljava/util/Map;

    return-object v0

    :catch_0
    move-exception v0

    .line 250
    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DigestMd5Utils"

    invoke-static {v1, v0}, Lcom/android/voicemail/impl/VvmLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
