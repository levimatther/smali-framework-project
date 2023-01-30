.class public Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;
.super Lorg/apache/james/mime4j/field/AbstractField;
.source "ContentDispositionFieldImpl.java"

# interfaces
.implements Lorg/apache/james/mime4j/dom/field/ContentDispositionField;


# static fields
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

.field private parseException:Lorg/apache/james/mime4j/field/contentdisposition/parser/ParseException;

.field private parsed:Z

.field private readDate:Ljava/util/Date;

.field private readDateParsed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 251
    new-instance v0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl$1;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl$1;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    return-void
.end method

.method constructor <init>(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/field/AbstractField;-><init>(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V

    const/4 p1, 0x0

    .line 44
    iput-boolean p1, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->parsed:Z

    const-string p1, ""

    .line 46
    iput-object p1, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->dispositionType:Ljava/lang/String;

    .line 47
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->parameters:Ljava/util/Map;

    return-void
.end method

.method private parse()V
    .locals 7

    .line 218
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->getBody()Ljava/lang/String;

    move-result-object v0

    .line 220
    new-instance v1, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;-><init>(Ljava/io/Reader;)V

    .line 223
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->parseAll()V
    :try_end_0
    .catch Lorg/apache/james/mime4j/field/contentdisposition/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/james/mime4j/field/contentdisposition/parser/TokenMgrError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 227
    new-instance v2, Lorg/apache/james/mime4j/field/contentdisposition/parser/ParseException;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/TokenMgrError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ParseException;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->parseException:Lorg/apache/james/mime4j/field/contentdisposition/parser/ParseException;

    goto :goto_0

    :catch_1
    move-exception v0

    .line 225
    iput-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->parseException:Lorg/apache/james/mime4j/field/contentdisposition/parser/ParseException;

    .line 230
    :goto_0
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->getDispositionType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 233
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->dispositionType:Ljava/lang/String;

    .line 235
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->getParamNames()Ljava/util/List;

    move-result-object v0

    .line 236
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->getParamValues()Ljava/util/List;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 239
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_0

    .line 241
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 242
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 243
    iget-object v6, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->parameters:Ljava/util/Map;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 248
    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->parsed:Z

    return-void
.end method

.method private parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 5

    const-string v0, " parameter is invalid: "

    .line 195
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 197
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parsing "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " null"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "returning null"

    invoke-virtual {v0, p1, v1}, Lorg/apache/james/mime4j/codec/DecodeMonitor;->warn(Ljava/lang/String;Ljava/lang/String;)Z

    return-object v2

    .line 202
    :cond_0
    :try_start_0
    new-instance v3, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;

    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->parseAll()Lorg/apache/james/mime4j/dom/datetime/DateTime;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/james/mime4j/dom/datetime/DateTime;->getDate()Ljava/util/Date;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/james/mime4j/field/datetime/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/james/mime4j/field/contentdisposition/parser/TokenMgrError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 211
    :catch_0
    iget-object v3, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "parameter is ignored"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v0, p1}, Lorg/apache/james/mime4j/codec/DecodeMonitor;->warn(Ljava/lang/String;Ljava/lang/String;)Z

    return-object v2

    .line 205
    :catch_1
    iget-object v3, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/codec/DecodeMonitor;->isListening()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 206
    iget-object v3, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " parameter is ignored"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v0, p1}, Lorg/apache/james/mime4j/codec/DecodeMonitor;->warn(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    return-object v2
.end method


# virtual methods
.method public getCreationDate()Ljava/util/Date;
    .locals 1

    .line 146
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->creationDateParsed:Z

    if-nez v0, :cond_0

    const-string v0, "creation-date"

    .line 147
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->creationDate:Ljava/util/Date;

    const/4 v0, 0x1

    .line 148
    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->creationDateParsed:Z

    .line 151
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->creationDate:Ljava/util/Date;

    return-object v0
.end method

.method public getDispositionType()Ljava/lang/String;
    .locals 1

    .line 79
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->parsed:Z

    if-nez v0, :cond_0

    .line 80
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->parse()V

    .line 82
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->dispositionType:Ljava/lang/String;

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    const-string v0, "filename"

    .line 139
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModificationDate()Ljava/util/Date;
    .locals 1

    .line 158
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->modificationDateParsed:Z

    if-nez v0, :cond_0

    const-string v0, "modification-date"

    .line 159
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->modificationDate:Ljava/util/Date;

    const/4 v0, 0x1

    .line 160
    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->modificationDateParsed:Z

    .line 163
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->modificationDate:Ljava/util/Date;

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 89
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->parsed:Z

    if-nez v0, :cond_0

    .line 90
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->parse()V

    .line 92
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->parameters:Ljava/util/Map;

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

    .line 99
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->parsed:Z

    if-nez v0, :cond_0

    .line 100
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->parse()V

    .line 102
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->parameters:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParseException()Lorg/apache/james/mime4j/dom/field/ParseException;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->getParseException()Lorg/apache/james/mime4j/field/contentdisposition/parser/ParseException;

    move-result-object v0

    return-object v0
.end method

.method public getParseException()Lorg/apache/james/mime4j/field/contentdisposition/parser/ParseException;
    .locals 1

    .line 69
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->parsed:Z

    if-nez v0, :cond_0

    .line 70
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->parse()V

    .line 72
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->parseException:Lorg/apache/james/mime4j/field/contentdisposition/parser/ParseException;

    return-object v0
.end method

.method public getReadDate()Ljava/util/Date;
    .locals 1

    .line 170
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->readDateParsed:Z

    if-nez v0, :cond_0

    const-string v0, "read-date"

    .line 171
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->readDate:Ljava/util/Date;

    const/4 v0, 0x1

    .line 172
    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->readDateParsed:Z

    .line 175
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->readDate:Ljava/util/Date;

    return-object v0
.end method

.method public getSize()J
    .locals 7

    const-string v0, "size"

    .line 182
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    return-wide v1

    .line 187
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

    .line 129
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->parsed:Z

    if-nez v0, :cond_0

    .line 130
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->parse()V

    .line 132
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->dispositionType:Ljava/lang/String;

    const-string v1, "attachment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isDispositionType(Ljava/lang/String;)Z
    .locals 1

    .line 109
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->parsed:Z

    if-nez v0, :cond_0

    .line 110
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->parse()V

    .line 112
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->dispositionType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isInline()Z
    .locals 2

    .line 119
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->parsed:Z

    if-nez v0, :cond_0

    .line 120
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->parse()V

    .line 122
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->dispositionType:Ljava/lang/String;

    const-string v1, "inline"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
