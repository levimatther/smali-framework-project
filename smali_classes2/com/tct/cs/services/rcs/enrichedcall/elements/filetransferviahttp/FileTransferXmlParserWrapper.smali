.class public Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferXmlParserWrapper;
.super Ljava/lang/Object;
.source "FileTransferXmlParserWrapper.java"


# static fields
.field private static final FILE_DISPOSITION_ATTACH:Ljava/lang/String; = "attachment"

.field private static final FILE_DISPOSITION_FORMDATA:Ljava/lang/String; = "form-data"

.field private static final FILE_DISPOSITION_RENDER:Ljava/lang/String; = "render"

.field private static ISO8601DATEFORMAT:[Ljava/text/SimpleDateFormat;

.field private static UTC:Ljava/util/TimeZone;

.field private static final sLogger:Lcom/gsma/rcs/utils/logger/Logger;


# instance fields
.field private mFtInfo:Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;

.field private mThumbnailInfo:Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpThumbnailElements;

.field private mThumbnailProcessed:Z

.field private final mXmlSource:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "UTC"

    .line 110
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferXmlParserWrapper;->UTC:Ljava/util/TimeZone;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/text/SimpleDateFormat;

    .line 115
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd\'T\'HH:mmZ"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferXmlParserWrapper;->ISO8601DATEFORMAT:[Ljava/text/SimpleDateFormat;

    const-string v0, "FileTransferXmlParser"

    .line 131
    invoke-static {v0}, Lcom/gsma/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/gsma/rcs/utils/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferXmlParserWrapper;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferXmlParserWrapper;->mXmlSource:Ljava/lang/String;

    return-void
.end method

.method public static decodeDate(Ljava/lang/String;)J
    .locals 10

    const-string v0, "Z$"

    const-string v1, "+0000"

    .line 486
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    move v6, v1

    move-wide v4, v2

    :goto_0
    cmp-long v7, v4, v2

    if-nez v7, :cond_0

    .line 487
    sget-object v8, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferXmlParserWrapper;->ISO8601DATEFORMAT:[Ljava/text/SimpleDateFormat;

    array-length v9, v8

    if-ge v6, v9, :cond_0

    .line 489
    :try_start_0
    aget-object v7, v8, v6

    invoke-virtual {v7, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    .line 490
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v4
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    if-nez v7, :cond_1

    .line 498
    new-instance v0, Landroid/text/format/Time;

    sget-object v2, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferXmlParserWrapper;->UTC:Ljava/util/TimeZone;

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 499
    invoke-virtual {v0, p0}, Landroid/text/format/Time;->parse3339(Ljava/lang/String;)Z

    .line 500
    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    :cond_1
    return-wide v4
.end method

.method public static encodeDate(J)Ljava/lang/String;
    .locals 2

    .line 471
    new-instance v0, Landroid/text/format/Time;

    sget-object v1, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferXmlParserWrapper;->UTC:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 472
    invoke-virtual {v0, p0, p1}, Landroid/text/format/Time;->set(J)V

    const/4 p0, 0x0

    .line 473
    invoke-virtual {v0, p0}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isMessageBodyExchanged()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 428
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 429
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 430
    new-instance v1, Ljava/io/StringReader;

    iget-object v2, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferXmlParserWrapper;->mXmlSource:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 433
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    .line 435
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v4, "xs:schema"

    .line 437
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 438
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    move v4, v2

    :goto_0
    if-ge v4, v1, :cond_1

    .line 440
    invoke-interface {v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "http://www.w3.org/2001/XMLSchema"

    .line 441
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v2, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v2
.end method

.method private parseExtendedMessageBody()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 268
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    const/4 v2, 0x0

    .line 269
    invoke-virtual {v1, v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 270
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 271
    new-instance v3, Ljava/io/StringReader;

    iget-object v4, v0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferXmlParserWrapper;->mXmlSource:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 273
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 275
    new-instance v4, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferExtension;

    invoke-direct {v4}, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferExtension;-><init>()V

    const-string v5, ""

    move-object v6, v5

    :goto_0
    const/4 v7, 0x1

    if-eq v3, v7, :cond_2e

    .line 279
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2c

    const/4 v8, 0x2

    const-string v9, "xs:enumeration"

    const-string v10, "xs:any"

    const-string v11, "xs:anyAttribute"

    const-string v12, "xs:attribute"

    const-string v13, "xs:simpleType"

    const-string v14, "xs:element"

    const-string v15, "xs:restriction"

    if-eq v3, v8, :cond_7

    const/4 v8, 0x3

    if-eq v3, v8, :cond_0

    goto/16 :goto_a

    .line 409
    :cond_0
    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_a

    .line 410
    :cond_1
    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_a

    .line 411
    :cond_2
    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_a

    .line 412
    :cond_3
    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto/16 :goto_a

    .line 413
    :cond_4
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto/16 :goto_a

    .line 414
    :cond_5
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto/16 :goto_a

    .line 415
    :cond_6
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_a

    :cond_7
    const-string v3, "xs:schema"

    .line 283
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 284
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    move v7, v2

    :goto_1
    if-ge v7, v3, :cond_2c

    .line 286
    invoke-interface {v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "xmlns:xs"

    .line 287
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 288
    invoke-interface {v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferExtension;->setXmlns_xs(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    const-string v9, "xmlns"

    .line 289
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 290
    invoke-interface {v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferExtension;->setXmlns(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    const-string v9, "targetNamespace"

    .line 291
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 292
    invoke-interface {v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferExtension;->setTargetNamespace(Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    const-string v9, "elementFormDefault"

    .line 293
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 294
    invoke-interface {v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferExtension;->setElementFormDefault(Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    const-string v9, "attributeFormDefault"

    .line 295
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 296
    invoke-interface {v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferExtension;->setAttributeFormDefault(Ljava/lang/String;)V

    :cond_c
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 299
    :cond_d
    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v8, "name"

    const-string v14, "content-type"

    const-string v2, "file-name"

    move-object/from16 v16, v5

    const-string v5, "file-size"

    move-object/from16 v17, v4

    const-string v4, "type"

    if-eqz v3, :cond_16

    .line 301
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    move-object/from16 v9, v16

    move-object v10, v9

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v3, :cond_10

    .line 304
    invoke-interface {v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v11

    .line 305
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 306
    invoke-interface {v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    .line 307
    :cond_e
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 308
    invoke-interface {v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    :cond_f
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_10
    const-string v3, "data"

    if-eqz v9, :cond_2d

    .line 311
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2d

    const-string v4, "file-info"

    .line 312
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    goto/16 :goto_b

    .line 314
    :cond_11
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    move-object v6, v5

    goto/16 :goto_b

    .line 316
    :cond_12
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    move-object v6, v2

    goto/16 :goto_b

    .line 318
    :cond_13
    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    move-object v6, v14

    goto/16 :goto_b

    .line 320
    :cond_14
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    :goto_5
    move-object v6, v3

    goto/16 :goto_b

    :cond_15
    const-string v2, "branded-url"

    .line 322
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 323
    sget-object v2, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferXmlParserWrapper;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Leiht: branded-url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gsma/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 324
    iget-object v2, v0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferXmlParserWrapper;->mFtInfo:Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;->setUri(Landroid/net/Uri;)V

    goto/16 :goto_b

    :cond_16
    const-string v3, "xs:complexType"

    .line 327
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    goto/16 :goto_b

    :cond_17
    const-string v3, "xs:sequence"

    .line 329
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    goto/16 :goto_b

    .line 331
    :cond_18
    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    goto/16 :goto_b

    .line 333
    :cond_19
    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 334
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    move-object/from16 v7, v16

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v3, :cond_1b

    .line 337
    invoke-interface {v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "base"

    .line 338
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 339
    invoke-interface {v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    :cond_1a
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 342
    :cond_1b
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 343
    iget-object v2, v0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferXmlParserWrapper;->mFtInfo:Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;->setSize(I)V

    goto/16 :goto_b

    .line 344
    :cond_1c
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 347
    iget-object v2, v0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferXmlParserWrapper;->mFtInfo:Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;

    invoke-static {v7}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;->setFilename(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 348
    :cond_1d
    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 349
    iget-object v2, v0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferXmlParserWrapper;->mFtInfo:Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;

    invoke-virtual {v2, v7}, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;->setMimeType(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 351
    :cond_1e
    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "file-disposition"

    if-eqz v2, :cond_26

    .line 352
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    move-object/from16 v7, v16

    move-object v9, v7

    const/4 v5, 0x0

    :goto_7
    if-ge v5, v2, :cond_22

    .line 357
    invoke-interface {v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_21

    .line 359
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1f

    .line 360
    invoke-interface {v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_8

    .line 361
    :cond_1f
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_20

    .line 362
    invoke-interface {v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_8

    :cond_20
    const-string v11, "use"

    .line 363
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_21

    .line 364
    invoke-interface {v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    :cond_21
    :goto_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_22
    const-string v2, "url"

    .line 369
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 370
    iget-object v2, v0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferXmlParserWrapper;->mFtInfo:Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;->setUri(Landroid/net/Uri;)V

    goto/16 :goto_b

    :cond_23
    const-string v2, "until"

    .line 371
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 372
    sget-object v2, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferXmlParserWrapper;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Leiht: until typeValue="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gsma/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 373
    iget-object v2, v0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferXmlParserWrapper;->mFtInfo:Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;

    invoke-static {v9}, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferXmlParserWrapper;->decodeDate(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;->setExpiration(J)V

    goto/16 :goto_b

    .line 374
    :cond_24
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    move-object v6, v4

    goto/16 :goto_b

    .line 376
    :cond_25
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    goto/16 :goto_5

    .line 380
    :cond_26
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 382
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_b

    .line 385
    :cond_27
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    goto :goto_b

    .line 387
    :cond_28
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 388
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 390
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    move-object/from16 v4, v16

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_2a

    .line 393
    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, "value"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 394
    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 397
    :cond_2a
    iget-object v2, v0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferXmlParserWrapper;->mThumbnailInfo:Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpThumbnailElements;

    if-nez v2, :cond_2b

    .line 398
    new-instance v2, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpThumbnailElements;

    invoke-direct {v2}, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpThumbnailElements;-><init>()V

    iput-object v2, v0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferXmlParserWrapper;->mThumbnailInfo:Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpThumbnailElements;

    .line 400
    :cond_2b
    sget-object v2, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferXmlParserWrapper;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Leiht: thumbnail enumerationValue="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gsma/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 402
    iget-object v2, v0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferXmlParserWrapper;->mFtInfo:Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;

    iget-object v3, v0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferXmlParserWrapper;->mThumbnailInfo:Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpThumbnailElements;

    invoke-virtual {v2, v3}, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;->setFileThumbnail(Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpThumbnailElements;)V

    goto :goto_b

    :cond_2c
    :goto_a
    move-object/from16 v17, v4

    move-object/from16 v16, v5

    .line 422
    :cond_2d
    :goto_b
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move-object/from16 v5, v16

    move-object/from16 v4, v17

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_2e
    move-object/from16 v17, v4

    .line 424
    iget-object v1, v0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferXmlParserWrapper;->mFtInfo:Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;

    move-object/from16 v2, v17

    invoke-virtual {v1, v2}, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;->setExtension(Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferExtension;)V

    return-void
.end method

.method private parseNormalMessageBody()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 164
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    const/4 v1, 0x0

    .line 165
    invoke-virtual {v0, v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 166
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 167
    new-instance v2, Ljava/io/StringReader;

    iget-object v3, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferXmlParserWrapper;->mXmlSource:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 169
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    const/4 v3, 0x0

    move-object v4, v3

    :goto_0
    const/4 v5, 0x1

    if-eq v2, v5, :cond_19

    .line 172
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    if-eq v2, v7, :cond_9

    const/4 v5, 0x3

    if-eq v2, v5, :cond_1

    const/4 v5, 0x4

    if-eq v2, v5, :cond_0

    goto/16 :goto_2

    .line 227
    :cond_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    .line 231
    :cond_1
    iget-object v2, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferXmlParserWrapper;->mFtInfo:Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;

    if-nez v2, :cond_2

    goto/16 :goto_2

    :cond_2
    if-eqz v4, :cond_8

    const-string v2, "file-name"

    .line 238
    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 239
    iget-boolean v2, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferXmlParserWrapper;->mThumbnailProcessed:Z

    if-eqz v2, :cond_18

    .line 241
    iget-object v2, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferXmlParserWrapper;->mFtInfo:Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;

    invoke-static {v4}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;->setFilename(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_3
    const-string v2, "file-size"

    .line 243
    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 244
    iget-boolean v2, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferXmlParserWrapper;->mThumbnailProcessed:Z

    if-eqz v2, :cond_4

    .line 245
    iget-object v2, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferXmlParserWrapper;->mFtInfo:Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;->setSize(I)V

    goto/16 :goto_2

    .line 246
    :cond_4
    iget-object v2, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferXmlParserWrapper;->mThumbnailInfo:Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpThumbnailElements;

    if-eqz v2, :cond_18

    .line 247
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpThumbnailElements;->setSize(I)V

    goto/16 :goto_2

    :cond_5
    const-string v2, "content-type"

    .line 249
    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 250
    iget-boolean v2, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferXmlParserWrapper;->mThumbnailProcessed:Z

    if-eqz v2, :cond_6

    .line 251
    iget-object v2, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferXmlParserWrapper;->mFtInfo:Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;

    invoke-virtual {v2, v4}, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;->setMimeType(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 252
    :cond_6
    iget-object v2, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferXmlParserWrapper;->mThumbnailInfo:Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpThumbnailElements;

    if-eqz v2, :cond_18

    .line 253
    invoke-virtual {v2, v4}, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpThumbnailElements;->setMimeType(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    const-string v2, "am:playing-length"

    .line 255
    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 256
    iget-object v2, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferXmlParserWrapper;->mFtInfo:Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;->setPlayingLength(I)V

    goto/16 :goto_2

    .line 235
    :cond_8
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad HTTP file transfer information "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferXmlParserWrapper;->mXmlSource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    const-string v2, "file"

    .line 175
    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 176
    iget-object v2, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferXmlParserWrapper;->mFtInfo:Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;

    if-nez v2, :cond_18

    .line 177
    new-instance v2, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;

    invoke-direct {v2}, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;-><init>()V

    iput-object v2, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferXmlParserWrapper;->mFtInfo:Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;

    goto/16 :goto_2

    :cond_a
    const-string v8, "file-info"

    .line 179
    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 180
    iget-object v6, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferXmlParserWrapper;->mFtInfo:Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;

    if-nez v6, :cond_b

    goto/16 :goto_2

    :cond_b
    const-string v6, "type"

    .line 183
    invoke-interface {v0, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "thumbnail"

    .line 184
    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 185
    new-instance v2, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpThumbnailElements;

    invoke-direct {v2}, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpThumbnailElements;-><init>()V

    iput-object v2, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferXmlParserWrapper;->mThumbnailInfo:Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpThumbnailElements;

    goto/16 :goto_2

    .line 187
    :cond_c
    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 188
    iput-boolean v5, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferXmlParserWrapper;->mThumbnailProcessed:Z

    const-string v2, "file-disposition"

    .line 189
    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_14

    const/4 v6, -0x1

    .line 191
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v9, -0x7508a6dd

    if-eq v8, v9, :cond_f

    const v9, -0x37b4be6a

    if-eq v8, v9, :cond_e

    const v9, 0x69165f13

    if-eq v8, v9, :cond_d

    goto :goto_1

    :cond_d
    const-string v8, "form-data"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    move v6, v7

    goto :goto_1

    :cond_e
    const-string v8, "render"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    move v6, v5

    goto :goto_1

    :cond_f
    const-string v8, "attachment"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    move v6, v1

    :cond_10
    :goto_1
    if-eqz v6, :cond_13

    if-eq v6, v5, :cond_12

    if-eq v6, v7, :cond_11

    goto/16 :goto_2

    .line 199
    :cond_11
    iget-object v2, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferXmlParserWrapper;->mFtInfo:Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;

    sget-object v5, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;->FORMDATA:Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;

    invoke-virtual {v2, v5}, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;->setFileDisposition(Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;)V

    goto :goto_2

    .line 196
    :cond_12
    iget-object v2, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferXmlParserWrapper;->mFtInfo:Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;

    sget-object v5, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;->RENDER:Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;

    invoke-virtual {v2, v5}, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;->setFileDisposition(Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;)V

    goto :goto_2

    .line 193
    :cond_13
    iget-object v2, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferXmlParserWrapper;->mFtInfo:Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;

    sget-object v5, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;->ATTACH:Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;

    invoke-virtual {v2, v5}, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;->setFileDisposition(Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;)V

    goto :goto_2

    .line 204
    :cond_14
    iget-object v2, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferXmlParserWrapper;->mFtInfo:Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;

    sget-object v5, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;->ATTACH:Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;

    invoke-virtual {v2, v5}, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;->setFileDisposition(Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;)V

    goto :goto_2

    :cond_15
    const-string v2, "data"

    .line 207
    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 208
    iget-object v2, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferXmlParserWrapper;->mFtInfo:Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;

    if-nez v2, :cond_16

    goto :goto_2

    :cond_16
    const-string v2, "url"

    .line 211
    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "until"

    .line 212
    invoke-interface {v0, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 213
    iget-boolean v7, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferXmlParserWrapper;->mThumbnailProcessed:Z

    if-eqz v7, :cond_17

    .line 214
    iget-object v5, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferXmlParserWrapper;->mFtInfo:Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;->setUri(Landroid/net/Uri;)V

    .line 215
    iget-object v2, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferXmlParserWrapper;->mFtInfo:Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;

    invoke-static {v6}, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferXmlParserWrapper;->decodeDate(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;->setExpiration(J)V

    goto :goto_2

    .line 217
    :cond_17
    iget-object v7, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferXmlParserWrapper;->mThumbnailInfo:Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpThumbnailElements;

    if-eqz v7, :cond_18

    .line 218
    iput-boolean v5, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferXmlParserWrapper;->mThumbnailProcessed:Z

    .line 219
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpThumbnailElements;->setUri(Landroid/net/Uri;)V

    .line 220
    iget-object v2, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferXmlParserWrapper;->mThumbnailInfo:Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpThumbnailElements;

    invoke-static {v6}, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferXmlParserWrapper;->decodeDate(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpThumbnailElements;->setExpiration(J)V

    .line 221
    iget-object v2, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferXmlParserWrapper;->mFtInfo:Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;

    iget-object v5, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferXmlParserWrapper;->mThumbnailInfo:Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpThumbnailElements;

    invoke-virtual {v2, v5}, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;->setFileThumbnail(Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpThumbnailElements;)V

    .line 263
    :cond_18
    :goto_2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto/16 :goto_0

    :cond_19
    return-void
.end method


# virtual methods
.method public getFileTransferInfo()Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;
    .locals 2

    .line 458
    iget-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferXmlParserWrapper;->mFtInfo:Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;

    if-eqz v0, :cond_0

    .line 459
    iget-object v1, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferXmlParserWrapper;->mXmlSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;->setSource(Ljava/lang/String;)V

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferXmlParserWrapper;->mFtInfo:Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;

    return-object v0
.end method

.method public parse()Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferXmlParserWrapper;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 152
    :try_start_0
    invoke-direct {p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferXmlParserWrapper;->isMessageBodyExchanged()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    invoke-direct {p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferXmlParserWrapper;->parseNormalMessageBody()V

    goto :goto_0

    .line 155
    :cond_0
    invoke-direct {p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferXmlParserWrapper;->parseExtendedMessageBody()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 158
    :goto_1
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    const-string v2, "Failed to parse input source!"

    invoke-direct {v1, v2, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
