.class public Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;
.super Lorg/apache/james/mime4j/field/AbstractField;
.source "ContentDispositionFieldLenientImpl.java"

# interfaces
.implements Lorg/apache/james/mime4j/dom/field/ContentDispositionField;


# static fields
.field private static final DEFAULT_DATE_FORMAT:Ljava/lang/String; = "EEE, dd MMM yyyy hh:mm:ss ZZZZ"

.field public static final PARSER:Lorg/apache/james/mime4j/dom/FieldParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/james/mime4j/dom/FieldParser<",
            "Lorg/apache/james/mime4j/dom/field/ContentDispositionField;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private creationDate:Ljava/util/Date;

.field private creationDateParsed:Z

.field private final datePatterns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dispositionType:Ljava/lang/String;

.field private modificationDate:Ljava/util/Date;

.field private modificationDateParsed:Z

.field private parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private parsed:Z

.field private readDate:Ljava/util/Date;

.field private readDateParsed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 198
    new-instance v0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl$1;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl$1;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    return-void
.end method

.method constructor <init>(Lorg/apache/james/mime4j/stream/Field;Ljava/util/Collection;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/james/mime4j/stream/Field;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/james/mime4j/codec/DecodeMonitor;",
            ")V"
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1, p3}, Lorg/apache/james/mime4j/field/AbstractField;-><init>(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V

    const/4 p1, 0x0

    .line 52
    iput-boolean p1, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->parsed:Z

    const-string p1, ""

    .line 54
    iput-object p1, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->dispositionType:Ljava/lang/String;

    .line 55
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->parameters:Ljava/util/Map;

    .line 69
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->datePatterns:Ljava/util/List;

    if-eqz p2, :cond_0

    .line 71
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    const-string p2, "EEE, dd MMM yyyy hh:mm:ss ZZZZ"

    .line 73
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private parse()V
    .locals 4

    const/4 v0, 0x1

    .line 161
    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->parsed:Z

    .line 162
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->getRawField()Lorg/apache/james/mime4j/stream/RawField;

    move-result-object v0

    .line 163
    sget-object v1, Lorg/apache/james/mime4j/stream/RawFieldParser;->DEFAULT:Lorg/apache/james/mime4j/stream/RawFieldParser;

    invoke-virtual {v1, v0}, Lorg/apache/james/mime4j/stream/RawFieldParser;->parseRawBody(Lorg/apache/james/mime4j/stream/RawField;)Lorg/apache/james/mime4j/stream/RawBody;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Lorg/apache/james/mime4j/stream/RawBody;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 166
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->dispositionType:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 168
    iput-object v1, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->dispositionType:Ljava/lang/String;

    .line 170
    :goto_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->parameters:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 171
    invoke-virtual {v0}, Lorg/apache/james/mime4j/stream/RawBody;->getParams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/stream/NameValuePair;

    .line 172
    invoke-virtual {v1}, Lorg/apache/james/mime4j/stream/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 173
    iget-object v3, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->parameters:Ljava/util/Map;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/stream/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-void
.end method

.method private parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 6

    .line 178
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 182
    :cond_0
    iget-object v2, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->datePatterns:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :catch_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 184
    :try_start_0
    new-instance v4, Ljava/text/SimpleDateFormat;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v3, "GMT"

    .line 185
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 v3, 0x1

    .line 186
    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 187
    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 191
    :cond_1
    iget-object v2, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/codec/DecodeMonitor;->isListening()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 192
    iget-object v2, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " parameter is invalid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " parameter is ignored"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lorg/apache/james/mime4j/codec/DecodeMonitor;->warn(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    return-object v1
.end method


# virtual methods
.method public getCreationDate()Ljava/util/Date;
    .locals 1

    .line 124
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->creationDateParsed:Z

    if-nez v0, :cond_0

    const-string v0, "creation-date"

    .line 125
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->creationDate:Ljava/util/Date;

    const/4 v0, 0x1

    .line 126
    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->creationDateParsed:Z

    .line 128
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->creationDate:Ljava/util/Date;

    return-object v0
.end method

.method public getDispositionType()Ljava/lang/String;
    .locals 1

    .line 78
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->parsed:Z

    if-nez v0, :cond_0

    .line 79
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->parse()V

    .line 81
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->dispositionType:Ljava/lang/String;

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    const-string v0, "filename"

    .line 120
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModificationDate()Ljava/util/Date;
    .locals 1

    .line 132
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->modificationDateParsed:Z

    if-nez v0, :cond_0

    const-string v0, "modification-date"

    .line 133
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->modificationDate:Ljava/util/Date;

    const/4 v0, 0x1

    .line 134
    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->modificationDateParsed:Z

    .line 136
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->modificationDate:Ljava/util/Date;

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 85
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->parsed:Z

    if-nez v0, :cond_0

    .line 86
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->parse()V

    .line 88
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->parameters:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 92
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->parsed:Z

    if-nez v0, :cond_0

    .line 93
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->parse()V

    .line 95
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->parameters:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getReadDate()Ljava/util/Date;
    .locals 1

    .line 140
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->readDateParsed:Z

    if-nez v0, :cond_0

    const-string v0, "read-date"

    .line 141
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->readDate:Ljava/util/Date;

    const/4 v0, 0x1

    .line 142
    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->readDateParsed:Z

    .line 144
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->readDate:Ljava/util/Date;

    return-object v0
.end method

.method public getSize()J
    .locals 7

    const-string v0, "size"

    .line 148
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    return-wide v1

    .line 153
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    move-wide v1, v3

    :catch_0
    :goto_0
    return-wide v1
.end method

.method public isAttachment()Z
    .locals 2

    .line 113
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->parsed:Z

    if-nez v0, :cond_0

    .line 114
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->parse()V

    .line 116
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->dispositionType:Ljava/lang/String;

    const-string v1, "attachment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isDispositionType(Ljava/lang/String;)Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->parsed:Z

    if-nez v0, :cond_0

    .line 100
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->parse()V

    .line 102
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->dispositionType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isInline()Z
    .locals 2

    .line 106
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->parsed:Z

    if-nez v0, :cond_0

    .line 107
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->parse()V

    .line 109
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->dispositionType:Ljava/lang/String;

    const-string v1, "inline"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
