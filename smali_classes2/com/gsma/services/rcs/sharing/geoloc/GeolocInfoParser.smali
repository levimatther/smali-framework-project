.class public Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "GeolocInfoParser.java"


# static fields
.field private static ISO8601DATEFORMAT:[Ljava/text/SimpleDateFormat;

.field private static UTC:Ljava/util/TimeZone;

.field private static sLogger:Lcom/gsma/rcs/utils/logger/Logger;


# instance fields
.field private mAccumulator:Ljava/lang/StringBuilder;

.field private mGeoloc:Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoDocument;

.field private final mInputSource:Lorg/xml/sax/InputSource;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "GeolocInfoParser"

    .line 71
    invoke-static {v0}, Lcom/gsma/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/gsma/rcs/utils/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoParser;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    const-string v0, "UTC"

    .line 168
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoParser;->UTC:Ljava/util/TimeZone;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/text/SimpleDateFormat;

    .line 173
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

    sput-object v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoParser;->ISO8601DATEFORMAT:[Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/InputSource;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoParser;->mInputSource:Lorg/xml/sax/InputSource;

    return-void
.end method

.method public static decodeDate(Ljava/lang/String;)J
    .locals 10

    const-string v0, "Z$"

    const-string v1, "+0000"

    .line 188
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    move v6, v1

    move-wide v4, v2

    :goto_0
    cmp-long v7, v4, v2

    if-nez v7, :cond_0

    .line 189
    sget-object v8, Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoParser;->ISO8601DATEFORMAT:[Ljava/text/SimpleDateFormat;

    array-length v9, v8

    if-ge v6, v9, :cond_0

    .line 191
    :try_start_0
    aget-object v7, v8, v6

    invoke-virtual {v7, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    .line 192
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v4
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    if-nez v7, :cond_1

    .line 200
    new-instance v0, Landroid/text/format/Time;

    sget-object v2, Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoParser;->UTC:Ljava/util/TimeZone;

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v0, p0}, Landroid/text/format/Time;->parse3339(Ljava/lang/String;)Z

    .line 202
    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    :cond_1
    return-wide v4
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoParser;->mAccumulator:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string p1, "radius"

    .line 142
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 143
    iget-object p1, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoParser;->mGeoloc:Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoDocument;

    if-eqz p1, :cond_3

    .line 144
    iget-object p2, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoParser;->mAccumulator:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoDocument;->setRadius(F)V

    goto :goto_0

    :cond_0
    const-string p1, "retention-expiry"

    .line 147
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 148
    iget-object p1, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoParser;->mGeoloc:Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoDocument;

    if-eqz p1, :cond_3

    .line 149
    iget-object p2, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoParser;->mAccumulator:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoParser;->decodeDate(Ljava/lang/String;)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoDocument;->setExpiration(J)V

    goto :goto_0

    :cond_1
    const-string p1, "pos"

    .line 152
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 153
    iget-object p1, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoParser;->mGeoloc:Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoDocument;

    if-eqz p1, :cond_3

    .line 154
    new-instance p1, Ljava/util/StringTokenizer;

    iget-object p2, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoParser;->mAccumulator:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 156
    iget-object p2, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoParser;->mGeoloc:Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoDocument;

    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoDocument;->setLatitude(D)V

    .line 158
    :cond_2
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 159
    iget-object p2, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoParser;->mGeoloc:Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoDocument;

    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoDocument;->setLongitude(D)V

    :cond_3
    :goto_0
    return-void
.end method

.method public getGeoLocInfo()Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoDocument;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoParser;->mGeoloc:Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoDocument;

    return-object v0
.end method

.method public parse()Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 93
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoParser;->mInputSource:Lorg/xml/sax/InputSource;

    invoke-virtual {v0, v1, p0}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 99
    :catch_0
    new-instance v0, Ljavax/xml/parsers/ParserConfigurationException;

    const-string v1, "Failed to parse input source!"

    invoke-direct {v0, v1}, Ljavax/xml/parsers/ParserConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startDocument()V
    .locals 1

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoParser;->mAccumulator:Ljava/lang/StringBuilder;

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0

    .line 119
    iget-object p1, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoParser;->mAccumulator:Ljava/lang/StringBuilder;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string p1, "rcsenvelope"

    .line 120
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "entity"

    .line 121
    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 122
    new-instance p2, Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoDocument;

    invoke-direct {p2, p1}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoDocument;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoParser;->mGeoloc:Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoDocument;

    goto :goto_0

    :cond_0
    const-string p1, "rcspushlocation"

    .line 124
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 125
    sget-object p2, Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoParser;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    invoke-virtual {p2}, Lcom/gsma/rcs/utils/logger/Logger;->isActivated()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 126
    sget-object p2, Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoParser;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    invoke-virtual {p2, p1}, Lcom/gsma/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    .line 128
    :cond_1
    iget-object p1, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoParser;->mGeoloc:Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoDocument;

    if-eqz p1, :cond_2

    const-string p1, "label"

    .line 131
    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 132
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 133
    iget-object p2, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoParser;->mGeoloc:Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoDocument;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocInfoDocument;->setLabel(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
