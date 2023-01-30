.class public Lcom/gsma/services/rcs/Geoloc;
.super Ljava/lang/Object;
.source "Geoloc.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/gsma/services/rcs/Geoloc;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private final SPLITE_ADDRESS_FLAG:Ljava/lang/String;

.field private final mAccuracy:F

.field private final mAddress:Ljava/lang/String;

.field private final mExpiration:J

.field private final mLabel:Ljava/lang/String;

.field private final mLatitude:D

.field private final mLongitude:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 210
    new-instance v0, Lcom/gsma/services/rcs/Geoloc$1;

    invoke-direct {v0}, Lcom/gsma/services/rcs/Geoloc$1;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/Geoloc;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "#"

    .line 69
    iput-object v0, p0, Lcom/gsma/services/rcs/Geoloc;->SPLITE_ADDRESS_FLAG:Ljava/lang/String;

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gsma/services/rcs/Geoloc;->mLabel:Ljava/lang/String;

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/gsma/services/rcs/Geoloc;->mLatitude:D

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/gsma/services/rcs/Geoloc;->mLongitude:D

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gsma/services/rcs/Geoloc;->mExpiration:J

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/gsma/services/rcs/Geoloc;->mAccuracy:F

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gsma/services/rcs/Geoloc;->mAddress:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "#"

    .line 69
    iput-object v0, p0, Lcom/gsma/services/rcs/Geoloc;->SPLITE_ADDRESS_FLAG:Ljava/lang/String;

    .line 134
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 136
    array-length v0, p1

    const-string v1, ""

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 137
    aget-object v0, p1, v2

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const/4 v2, 0x0

    .line 139
    aget-object p1, p1, v2

    .line 140
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, ","

    invoke-direct {v3, p1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p1

    .line 143
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v5

    const/4 v6, 0x4

    if-le v5, v6, :cond_2

    :goto_1
    add-int/lit8 v5, p1, -0x4

    if-ge v2, v5, :cond_3

    .line 146
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v5, p1, -0x5

    if-eq v2, v5, :cond_1

    .line 148
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 154
    :cond_3
    iput-object v1, p0, Lcom/gsma/services/rcs/Geoloc;->mLabel:Ljava/lang/String;

    .line 156
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/gsma/services/rcs/Geoloc;->mLatitude:D

    .line 157
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/gsma/services/rcs/Geoloc;->mLongitude:D

    .line 158
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/gsma/services/rcs/Geoloc;->mExpiration:J

    .line 159
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/gsma/services/rcs/Geoloc;->mAccuracy:F

    .line 160
    iput-object v0, p0, Lcom/gsma/services/rcs/Geoloc;->mAddress:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;DDJF)V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "#"

    .line 69
    iput-object v0, p0, Lcom/gsma/services/rcs/Geoloc;->SPLITE_ADDRESS_FLAG:Ljava/lang/String;

    .line 82
    iput-object p1, p0, Lcom/gsma/services/rcs/Geoloc;->mLabel:Ljava/lang/String;

    .line 83
    iput-wide p2, p0, Lcom/gsma/services/rcs/Geoloc;->mLatitude:D

    .line 84
    iput-wide p4, p0, Lcom/gsma/services/rcs/Geoloc;->mLongitude:D

    .line 85
    iput-wide p6, p0, Lcom/gsma/services/rcs/Geoloc;->mExpiration:J

    .line 86
    iput p8, p0, Lcom/gsma/services/rcs/Geoloc;->mAccuracy:F

    const-string p1, ""

    .line 87
    iput-object p1, p0, Lcom/gsma/services/rcs/Geoloc;->mAddress:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;DDJFLjava/lang/String;)V
    .locals 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "#"

    .line 69
    iput-object v0, p0, Lcom/gsma/services/rcs/Geoloc;->SPLITE_ADDRESS_FLAG:Ljava/lang/String;

    .line 100
    iput-object p1, p0, Lcom/gsma/services/rcs/Geoloc;->mLabel:Ljava/lang/String;

    .line 101
    iput-wide p2, p0, Lcom/gsma/services/rcs/Geoloc;->mLatitude:D

    .line 102
    iput-wide p4, p0, Lcom/gsma/services/rcs/Geoloc;->mLongitude:D

    .line 103
    iput-wide p6, p0, Lcom/gsma/services/rcs/Geoloc;->mExpiration:J

    .line 104
    iput p8, p0, Lcom/gsma/services/rcs/Geoloc;->mAccuracy:F

    .line 105
    iput-object p9, p0, Lcom/gsma/services/rcs/Geoloc;->mAddress:Ljava/lang/String;

    return-void
.end method

.method public static getGeolocFromUri(Ljava/lang/String;)Lcom/gsma/services/rcs/Geoloc;
    .locals 15

    if-eqz p0, :cond_6

    .line 349
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 352
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 353
    array-length v0, p0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v7, v1

    move-wide v8, v2

    move-wide v10, v8

    move v2, v4

    move v14, v5

    :goto_0
    if-ge v2, v0, :cond_5

    aget-object v3, p0, v2

    .line 354
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "geo:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 355
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 356
    array-length v5, v3

    if-lez v5, :cond_4

    .line 357
    aget-object v5, v3, v4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 358
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 359
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 361
    :cond_1
    array-length v5, v3

    const/4 v6, 0x1

    if-le v5, v6, :cond_4

    .line 362
    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 363
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 364
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    goto :goto_1

    .line 368
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "u="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 369
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 370
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 371
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v14

    goto :goto_1

    .line 373
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "rcs-l="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 374
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x6

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 377
    :cond_5
    new-instance p0, Lcom/gsma/services/rcs/Geoloc;

    const-wide/16 v12, 0x0

    move-object v6, p0

    invoke-direct/range {v6 .. v14}, Lcom/gsma/services/rcs/Geoloc;-><init>(Ljava/lang/String;DDJF)V

    return-object p0

    :cond_6
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static praseGeolocXmlFile(Ljava/lang/String;)Lcom/gsma/services/rcs/Geoloc;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "Unable to parse geoloc document!"

    .line 110
    :try_start_0
    new-instance v1, Lorg/xml/sax/InputSource;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    const-string v3, "utf-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 111
    new-instance p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoParser;

    invoke-direct {p0, v1}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoParser;-><init>(Lorg/xml/sax/InputSource;)V

    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoParser;->parse()Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoParser;

    move-result-object p0

    .line 112
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoParser;->getGeoLocInfo()Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoDocument;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 116
    new-instance v10, Lcom/gsma/services/rcs/Geoloc;

    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoDocument;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoDocument;->getLatitude()D

    move-result-wide v3

    .line 117
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoDocument;->getLongitude()D

    move-result-wide v5

    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoDocument;->getExpiration()J

    move-result-wide v7

    .line 118
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoDocument;->getRadius()F

    move-result v9

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lcom/gsma/services/rcs/Geoloc;-><init>(Ljava/lang/String;DDJF)V

    return-object v10

    .line 114
    :cond_0
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 121
    :goto_0
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public buildGeoUri()Ljava/lang/String;
    .locals 3

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "geo:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0}, Lcom/gsma/services/rcs/Geoloc;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 297
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {p0}, Lcom/gsma/services/rcs/Geoloc;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {p0}, Lcom/gsma/services/rcs/Geoloc;->getAccuracy()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    const-string v1, ";u="

    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {p0}, Lcom/gsma/services/rcs/Geoloc;->getAccuracy()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 303
    :cond_0
    invoke-virtual {p0}, Lcom/gsma/services/rcs/Geoloc;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/gsma/services/rcs/Geoloc;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ";rcs-l="

    .line 304
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual {p0}, Lcom/gsma/services/rcs/Geoloc;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    return-object v1
.end method

.method public buildHttpLink()Ljava/lang/String;
    .locals 5

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 317
    invoke-virtual {p0}, Lcom/gsma/services/rcs/Geoloc;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "\r\n"

    if-nez v1, :cond_0

    .line 318
    invoke-virtual {p0}, Lcom/gsma/services/rcs/Geoloc;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "http://maps.google.com/maps/?&q="

    .line 320
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {p0}, Lcom/gsma/services/rcs/Geoloc;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 322
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {p0}, Lcom/gsma/services/rcs/Geoloc;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {p0}, Lcom/gsma/services/rcs/Geoloc;->getAccuracy()F

    move-result v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_1

    const-string v1, "&z="

    .line 325
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {p0}, Lcom/gsma/services/rcs/Geoloc;->getAccuracy()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "&hl=en"

    .line 328
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {p0}, Lcom/gsma/services/rcs/Geoloc;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 330
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/gsma/services/rcs/Geoloc;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAccuracy()F
    .locals 1

    .line 262
    iget v0, p0, Lcom/gsma/services/rcs/Geoloc;->mAccuracy:F

    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/gsma/services/rcs/Geoloc;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiration()J
    .locals 2

    .line 253
    iget-wide v0, p0, Lcom/gsma/services/rcs/Geoloc;->mExpiration:J

    return-wide v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/gsma/services/rcs/Geoloc;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .line 235
    iget-wide v0, p0, Lcom/gsma/services/rcs/Geoloc;->mLatitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 244
    iget-wide v0, p0, Lcom/gsma/services/rcs/Geoloc;->mLongitude:D

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 277
    iget-object v0, p0, Lcom/gsma/services/rcs/Geoloc;->mLabel:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    .line 280
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gsma/services/rcs/Geoloc;->mLabel:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v1, ","

    .line 282
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/gsma/services/rcs/Geoloc;->mLatitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/gsma/services/rcs/Geoloc;->mLongitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/gsma/services/rcs/Geoloc;->mExpiration:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gsma/services/rcs/Geoloc;->mAccuracy:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 284
    iget-object v1, p0, Lcom/gsma/services/rcs/Geoloc;->mAddress:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "#"

    .line 285
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gsma/services/rcs/Geoloc;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 197
    iget-object p2, p0, Lcom/gsma/services/rcs/Geoloc;->mLabel:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 198
    iget-wide v0, p0, Lcom/gsma/services/rcs/Geoloc;->mLatitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 199
    iget-wide v0, p0, Lcom/gsma/services/rcs/Geoloc;->mLongitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 200
    iget-wide v0, p0, Lcom/gsma/services/rcs/Geoloc;->mExpiration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 201
    iget p2, p0, Lcom/gsma/services/rcs/Geoloc;->mAccuracy:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 202
    iget-object p2, p0, Lcom/gsma/services/rcs/Geoloc;->mAddress:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
