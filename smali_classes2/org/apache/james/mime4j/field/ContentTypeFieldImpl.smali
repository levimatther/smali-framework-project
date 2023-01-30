.class public Lorg/apache/james/mime4j/field/ContentTypeFieldImpl;
.super Lorg/apache/james/mime4j/field/AbstractField;
.source "ContentTypeFieldImpl.java"

# interfaces
.implements Lorg/apache/james/mime4j/dom/field/ContentTypeField;


# static fields
.field public static final PARSER:Lorg/apache/james/mime4j/dom/FieldParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/james/mime4j/dom/FieldParser<",
            "Lorg/apache/james/mime4j/dom/field/ContentTypeField;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mediaType:Ljava/lang/String;

.field private mimeType:Ljava/lang/String;

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

.field private parseException:Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;

.field private parsed:Z

.field private subType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 225
    new-instance v0, Lorg/apache/james/mime4j/field/ContentTypeFieldImpl$1;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/ContentTypeFieldImpl$1;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/ContentTypeFieldImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    return-void
.end method

.method constructor <init>(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/field/AbstractField;-><init>(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V

    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lorg/apache/james/mime4j/field/ContentTypeFieldImpl;->parsed:Z

    const/4 p1, 0x0

    .line 42
    iput-object p1, p0, Lorg/apache/james/mime4j/field/ContentTypeFieldImpl;->mimeType:Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lorg/apache/james/mime4j/field/ContentTypeFieldImpl;->mediaType:Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lorg/apache/james/mime4j/field/ContentTypeFieldImpl;->subType:Ljava/lang/String;

    .line 45
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/james/mime4j/field/ContentTypeFieldImpl;->parameters:Ljava/util/Map;

    return-void
.end method

.method public static getCharset(Lorg/apache/james/mime4j/dom/field/ContentTypeField;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 183
    invoke-interface {p0}, Lorg/apache/james/mime4j/dom/field/ContentTypeField;->getCharset()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 184
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "us-ascii"

    return-object p0
.end method

.method public static getMimeType(Lorg/apache/james/mime4j/dom/field/ContentTypeField;Lorg/apache/james/mime4j/dom/field/ContentTypeField;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    .line 161
    invoke-interface {p0}, Lorg/apache/james/mime4j/dom/field/ContentTypeField;->getMimeType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/apache/james/mime4j/dom/field/ContentTypeField;->isMultipart()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/apache/james/mime4j/dom/field/ContentTypeField;->getBoundary()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    invoke-interface {p0}, Lorg/apache/james/mime4j/dom/field/ContentTypeField;->getMimeType()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    const-string p0, "multipart/digest"

    .line 164
    invoke-interface {p1, p0}, Lorg/apache/james/mime4j/dom/field/ContentTypeField;->isMimeType(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "message/rfc822"

    return-object p0

    :cond_2
    const-string p0, "text/plain"

    return-object p0
.end method

.method private parse()V
    .locals 7

    .line 192
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/ContentTypeFieldImpl;->getBody()Ljava/lang/String;

    move-result-object v0

    .line 194
    new-instance v1, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;-><init>(Ljava/io/Reader;)V

    .line 196
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->parseAll()V
    :try_end_0
    .catch Lorg/apache/james/mime4j/field/contenttype/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/james/mime4j/field/contenttype/parser/TokenMgrError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 200
    new-instance v2, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/contenttype/parser/TokenMgrError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/ContentTypeFieldImpl;->parseException:Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;

    goto :goto_0

    :catch_1
    move-exception v0

    .line 198
    iput-object v0, p0, Lorg/apache/james/mime4j/field/ContentTypeFieldImpl;->parseException:Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;

    .line 203
    :goto_0
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/ContentTypeFieldImpl;->mediaType:Ljava/lang/String;

    .line 204
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->getSubType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/ContentTypeFieldImpl;->subType:Ljava/lang/String;

    .line 206
    iget-object v2, p0, Lorg/apache/james/mime4j/field/ContentTypeFieldImpl;->mediaType:Ljava/lang/String;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/james/mime4j/field/ContentTypeFieldImpl;->mediaType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/ContentTypeFieldImpl;->subType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/ContentTypeFieldImpl;->mimeType:Ljava/lang/String;

    .line 209
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->getParamNames()Ljava/util/List;

    move-result-object v0

    .line 210
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->getParamValues()Ljava/util/List;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 213
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_0

    .line 215
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 216
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 217
    iget-object v6, p0, Lorg/apache/james/mime4j/field/ContentTypeFieldImpl;->parameters:Ljava/util/Map;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 222
    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentTypeFieldImpl;->parsed:Z

    return-void
.end method


# virtual methods
.method public getBoundary()Ljava/lang/String;
    .locals 1

    const-string v0, "boundary"

    .line 137
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/ContentTypeFieldImpl;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCharset()Ljava/lang/String;
    .locals 1

    const-string v0, "charset"

    .line 144
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/ContentTypeFieldImpl;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediaType()Ljava/lang/String;
    .locals 1

    .line 77
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentTypeFieldImpl;->parsed:Z

    if-nez v0, :cond_0

    .line 78
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/ContentTypeFieldImpl;->parse()V

    .line 80
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentTypeFieldImpl;->mediaType:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 67
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentTypeFieldImpl;->parsed:Z

    if-nez v0, :cond_0

    .line 68
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/ContentTypeFieldImpl;->parse()V

    .line 70
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentTypeFieldImpl;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 97
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentTypeFieldImpl;->parsed:Z

    if-nez v0, :cond_0

    .line 98
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/ContentTypeFieldImpl;->parse()V

    .line 100
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentTypeFieldImpl;->parameters:Ljava/util/Map;

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

    .line 107
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentTypeFieldImpl;->parsed:Z

    if-nez v0, :cond_0

    .line 108
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/ContentTypeFieldImpl;->parse()V

    .line 110
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentTypeFieldImpl;->parameters:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParseException()Lorg/apache/james/mime4j/dom/field/ParseException;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/ContentTypeFieldImpl;->getParseException()Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;

    move-result-object v0

    return-object v0
.end method

.method public getParseException()Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;
    .locals 1

    .line 57
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentTypeFieldImpl;->parsed:Z

    if-nez v0, :cond_0

    .line 58
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/ContentTypeFieldImpl;->parse()V

    .line 60
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentTypeFieldImpl;->parseException:Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;

    return-object v0
.end method

.method public getSubType()Ljava/lang/String;
    .locals 1

    .line 87
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentTypeFieldImpl;->parsed:Z

    if-nez v0, :cond_0

    .line 88
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/ContentTypeFieldImpl;->parse()V

    .line 90
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentTypeFieldImpl;->subType:Ljava/lang/String;

    return-object v0
.end method

.method public isMimeType(Ljava/lang/String;)Z
    .locals 1

    .line 117
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentTypeFieldImpl;->parsed:Z

    if-nez v0, :cond_0

    .line 118
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/ContentTypeFieldImpl;->parse()V

    .line 120
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentTypeFieldImpl;->mimeType:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isMultipart()Z
    .locals 2

    .line 127
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentTypeFieldImpl;->parsed:Z

    if-nez v0, :cond_0

    .line 128
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/ContentTypeFieldImpl;->parse()V

    .line 130
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentTypeFieldImpl;->mimeType:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "multipart/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
