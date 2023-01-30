.class public Lcom/android/voicemail/impl/mail/internet/MimeUtility;
.super Ljava/lang/Object;
.source "MimeUtility.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Email"

.field public static final MIME_TYPE_RFC822:Ljava/lang/String; = "message/rfc822"

.field private static final PATTERN_CR_OR_LF:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\r|\n"

    .line 47
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/voicemail/impl/mail/internet/MimeUtility;->PATTERN_CR_OR_LF:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collectParts(Lcom/android/voicemail/impl/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/voicemail/impl/mail/Part;",
            "Ljava/util/ArrayList<",
            "Lcom/android/voicemail/impl/mail/Part;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/voicemail/impl/mail/Part;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/voicemail/impl/mail/MessagingException;
        }
    .end annotation

    .line 357
    invoke-interface {p0}, Lcom/android/voicemail/impl/mail/Part;->getDisposition()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 358
    invoke-static {v0, v1}, Lcom/android/voicemail/impl/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 361
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    const-string v1, "inline"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    .line 363
    :goto_1
    invoke-interface {p0}, Lcom/android/voicemail/impl/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 365
    invoke-interface {p0}, Lcom/android/voicemail/impl/mail/Part;->getBody()Lcom/android/voicemail/impl/mail/Body;

    move-result-object v4

    instance-of v4, v4, Lcom/android/voicemail/impl/mail/Multipart;

    if-eqz v4, :cond_5

    .line 369
    invoke-interface {p0}, Lcom/android/voicemail/impl/mail/Part;->getBody()Lcom/android/voicemail/impl/mail/Body;

    move-result-object p0

    check-cast p0, Lcom/android/voicemail/impl/mail/internet/MimeMultipart;

    .line 371
    invoke-virtual {p0}, Lcom/android/voicemail/impl/mail/internet/MimeMultipart;->getSubTypeForTest()Ljava/lang/String;

    move-result-object v0

    const-string v1, "alternative"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    .line 372
    :goto_2
    invoke-virtual {p0}, Lcom/android/voicemail/impl/mail/internet/MimeMultipart;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 373
    invoke-virtual {p0, v0}, Lcom/android/voicemail/impl/mail/internet/MimeMultipart;->getBodyPart(I)Lcom/android/voicemail/impl/mail/BodyPart;

    move-result-object v1

    const-string v4, "text/html"

    invoke-virtual {v1, v4}, Lcom/android/voicemail/impl/mail/BodyPart;->isMimeType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move v3, v2

    .line 379
    :goto_3
    invoke-virtual {p0}, Lcom/android/voicemail/impl/mail/internet/MimeMultipart;->getCount()I

    move-result v0

    if-ge v2, v0, :cond_9

    .line 381
    invoke-virtual {p0, v2}, Lcom/android/voicemail/impl/mail/internet/MimeMultipart;->getBodyPart(I)Lcom/android/voicemail/impl/mail/BodyPart;

    move-result-object v0

    if-eqz v3, :cond_4

    const-string v1, "text/plain"

    .line 383
    invoke-virtual {v0, v1}, Lcom/android/voicemail/impl/mail/BodyPart;->isMimeType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_4

    .line 386
    :cond_4
    invoke-static {v0, p1, p2}, Lcom/android/voicemail/impl/mail/internet/MimeUtility;->collectParts(Lcom/android/voicemail/impl/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 388
    :cond_5
    invoke-interface {p0}, Lcom/android/voicemail/impl/mail/Part;->getBody()Lcom/android/voicemail/impl/mail/Body;

    move-result-object v2

    instance-of v2, v2, Lcom/android/voicemail/impl/mail/Message;

    if-eqz v2, :cond_6

    .line 391
    invoke-interface {p0}, Lcom/android/voicemail/impl/mail/Part;->getBody()Lcom/android/voicemail/impl/mail/Body;

    move-result-object p0

    check-cast p0, Lcom/android/voicemail/impl/mail/Message;

    .line 392
    invoke-static {p0, p1, p2}, Lcom/android/voicemail/impl/mail/internet/MimeUtility;->collectParts(Lcom/android/voicemail/impl/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_5

    :cond_6
    if-eqz v0, :cond_8

    const-string v0, "text"

    .line 393
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "image"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 395
    :cond_7
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 398
    :cond_8
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_5
    return-void
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 69
    :cond_0
    sget-object v0, Lorg/apache/james/mime4j/codec/DecodeMonitor;->STRICT:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    invoke-static {p0, v0}, Lorg/apache/james/mime4j/codec/DecoderUtil;->decodeEncodedWords(Ljava/lang/String;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static decodeBody(Ljava/io/InputStream;Ljava/lang/String;)Lcom/android/voicemail/impl/mail/Body;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 329
    invoke-static {p0, p1}, Lcom/android/voicemail/impl/mail/internet/MimeUtility;->getInputStreamForContentTransferEncoding(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 330
    new-instance p1, Lcom/android/voicemail/impl/mail/internet/BinaryTempFileBody;

    invoke-direct {p1}, Lcom/android/voicemail/impl/mail/internet/BinaryTempFileBody;-><init>()V

    .line 331
    invoke-virtual {p1}, Lcom/android/voicemail/impl/mail/internet/BinaryTempFileBody;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 333
    :try_start_0
    invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_0
    .catch Landroid/util/Base64DataException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    :catch_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 340
    throw p0

    :goto_0
    return-object p1
.end method

.method public static fold(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7

    .line 122
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int v1, p1, v0

    const/16 v2, 0x4c

    if-gt v1, v2, :cond_0

    return-object p0

    .line 127
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    neg-int p1, p1

    const/4 v3, 0x0

    .line 130
    invoke-static {p0, v3}, Lcom/android/voicemail/impl/mail/internet/MimeUtility;->indexOfWsp(Ljava/lang/String;I)I

    move-result v4

    :goto_0
    if-ne v4, v0, :cond_1

    .line 133
    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v5, v4, 0x1

    .line 137
    invoke-static {p0, v5}, Lcom/android/voicemail/impl/mail/internet/MimeUtility;->indexOfWsp(Ljava/lang/String;I)I

    move-result v5

    sub-int v6, v5, p1

    if-le v6, v2, :cond_2

    .line 140
    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\r\n"

    .line 141
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move p1, v4

    :cond_2
    move v4, v5

    goto :goto_0
.end method

.method public static foldAndEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p0
.end method

.method public static foldAndEncode2(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 99
    sget-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;->TEXT_TOKEN:Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;

    invoke-static {p0, v0, p1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeIfNecessary(Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;I)Ljava/lang/String;

    move-result-object p0

    .line 101
    invoke-static {p0, p1}, Lcom/android/voicemail/impl/mail/internet/MimeUtility;->fold(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 186
    :cond_0
    invoke-static {p0}, Lcom/android/voicemail/impl/mail/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 188
    aget-object p0, p0, v1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 190
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 191
    array-length v2, p0

    :goto_0
    if-ge v1, v2, :cond_5

    aget-object v3, p0, v1

    .line 192
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string p0, "="

    const/4 p1, 0x2

    .line 193
    invoke-virtual {v3, p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 194
    array-length v1, p0

    if-ge v1, p1, :cond_2

    return-object v0

    :cond_2
    const/4 p1, 0x1

    .line 197
    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\""

    .line 198
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 199
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_3
    return-object p0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public static getInputStreamForContentTransferEncoding(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 314
    invoke-static {p1, v0}, Lcom/android/voicemail/impl/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "quoted-printable"

    .line 315
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    new-instance p1, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;

    invoke-direct {p1, p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_0
    move-object p0, p1

    goto :goto_1

    :cond_0
    const-string v0, "base64"

    .line 317
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 318
    new-instance p1, Landroid/util/Base64InputStream;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroid/util/Base64InputStream;-><init>(Ljava/io/InputStream;I)V

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public static getTextFromPart(Lcom/android/voicemail/impl/mail/Part;)Ljava/lang/String;
    .locals 5

    const-string v0, "Unable to getTextFromPart "

    const-string v1, "Email"

    if-eqz p0, :cond_2

    .line 218
    :try_start_0
    invoke-interface {p0}, Lcom/android/voicemail/impl/mail/Part;->getBody()Lcom/android/voicemail/impl/mail/Body;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 219
    invoke-interface {p0}, Lcom/android/voicemail/impl/mail/Part;->getBody()Lcom/android/voicemail/impl/mail/Body;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/voicemail/impl/mail/Body;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 220
    invoke-interface {p0}, Lcom/android/voicemail/impl/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, "text/*"

    .line 221
    invoke-static {v3, v4}, Lcom/android/voicemail/impl/mail/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 226
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 227
    invoke-static {v2, v3}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 228
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 234
    invoke-interface {p0}, Lcom/android/voicemail/impl/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object p0

    const-string v2, "charset"

    invoke-static {p0, v2}, Lcom/android/voicemail/impl/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 239
    invoke-static {p0}, Lorg/apache/james/mime4j/util/CharsetUtil;->lookup(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p0

    :cond_0
    if-nez p0, :cond_1

    const-string p0, "ASCII"

    .line 250
    :cond_1
    invoke-virtual {v3, p0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 251
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/voicemail/impl/VvmLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 261
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/voicemail/impl/VvmLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static indexOfWsp(Ljava/lang/String;I)I
    .locals 3

    .line 156
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    if-ge p1, v0, :cond_2

    .line 158
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return p1

    :cond_2
    return v0
.end method

.method public static mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "\\*"

    const-string v1, "\\.\\*"

    .line 281
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 282
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public static mimeTypeMatches(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4

    .line 295
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 296
    invoke-static {p0, v3}, Lcom/android/voicemail/impl/mail/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static unfold(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 57
    :cond_0
    sget-object v0, Lcom/android/voicemail/impl/mail/internet/MimeUtility;->PATTERN_CR_OR_LF:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->reset()Ljava/util/regex/Matcher;

    const-string p0, ""

    .line 60
    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 73
    invoke-static {p0}, Lcom/android/voicemail/impl/mail/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/voicemail/impl/mail/internet/MimeUtility;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
