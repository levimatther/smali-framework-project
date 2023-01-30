.class public Lorg/apache/james/mime4j/message/DefaultBodyDescriptorBuilder;
.super Ljava/lang/Object;
.source "DefaultBodyDescriptorBuilder.java"

# interfaces
.implements Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;


# static fields
.field private static final CONTENT_TYPE:Ljava/lang/String;

.field private static final DEFAULT_MEDIA_TYPE:Ljava/lang/String; = "text"

.field private static final DEFAULT_MIME_TYPE:Ljava/lang/String; = "text/plain"

.field private static final DEFAULT_SUB_TYPE:Ljava/lang/String; = "plain"

.field private static final EMAIL_MESSAGE_MIME_TYPE:Ljava/lang/String; = "message/rfc822"

.field private static final MEDIA_TYPE_MESSAGE:Ljava/lang/String; = "message"

.field private static final MEDIA_TYPE_TEXT:Ljava/lang/String; = "text"

.field private static final SUB_TYPE_EMAIL:Ljava/lang/String; = "rfc822"

.field private static final US_ASCII:Ljava/lang/String; = "us-ascii"


# instance fields
.field private final fieldParser:Lorg/apache/james/mime4j/dom/FieldParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/james/mime4j/dom/FieldParser<",
            "+",
            "Lorg/apache/james/mime4j/dom/field/ParsedField;",
            ">;"
        }
    .end annotation
.end field

.field private final fields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/james/mime4j/dom/field/ParsedField;",
            ">;"
        }
    .end annotation
.end field

.field private final monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

.field private final parentMimeType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Content-Type"

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/message/DefaultBodyDescriptorBuilder;->CONTENT_TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/message/DefaultBodyDescriptorBuilder;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, v0, v0}, Lorg/apache/james/mime4j/message/DefaultBodyDescriptorBuilder;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/dom/FieldParser;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/james/mime4j/dom/FieldParser;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/james/mime4j/dom/FieldParser<",
            "+",
            "Lorg/apache/james/mime4j/dom/field/ParsedField;",
            ">;",
            "Lorg/apache/james/mime4j/codec/DecodeMonitor;",
            ")V"
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lorg/apache/james/mime4j/message/DefaultBodyDescriptorBuilder;->parentMimeType:Ljava/lang/String;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    invoke-static {}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->getParser()Lorg/apache/james/mime4j/dom/FieldParser;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lorg/apache/james/mime4j/message/DefaultBodyDescriptorBuilder;->fieldParser:Lorg/apache/james/mime4j/dom/FieldParser;

    if-eqz p3, :cond_1

    goto :goto_1

    .line 81
    :cond_1
    sget-object p3, Lorg/apache/james/mime4j/codec/DecodeMonitor;->SILENT:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    :goto_1
    iput-object p3, p0, Lorg/apache/james/mime4j/message/DefaultBodyDescriptorBuilder;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    .line 82
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/james/mime4j/message/DefaultBodyDescriptorBuilder;->fields:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addField(Lorg/apache/james/mime4j/stream/RawField;)Lorg/apache/james/mime4j/stream/Field;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lorg/apache/james/mime4j/message/DefaultBodyDescriptorBuilder;->fieldParser:Lorg/apache/james/mime4j/dom/FieldParser;

    iget-object v1, p0, Lorg/apache/james/mime4j/message/DefaultBodyDescriptorBuilder;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    invoke-interface {v0, p1, v1}, Lorg/apache/james/mime4j/dom/FieldParser;->parse(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Lorg/apache/james/mime4j/dom/field/ParsedField;

    move-result-object p1

    .line 91
    invoke-interface {p1}, Lorg/apache/james/mime4j/dom/field/ParsedField;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lorg/apache/james/mime4j/message/DefaultBodyDescriptorBuilder;->fields:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 93
    iget-object v1, p0, Lorg/apache/james/mime4j/message/DefaultBodyDescriptorBuilder;->fields:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public build()Lorg/apache/james/mime4j/stream/BodyDescriptor;
    .locals 14

    .line 104
    iget-object v0, p0, Lorg/apache/james/mime4j/message/DefaultBodyDescriptorBuilder;->fields:Ljava/util/Map;

    sget-object v1, Lorg/apache/james/mime4j/message/DefaultBodyDescriptorBuilder;->CONTENT_TYPE:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/dom/field/ContentTypeField;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 106
    invoke-interface {v0}, Lorg/apache/james/mime4j/dom/field/ContentTypeField;->getMimeType()Ljava/lang/String;

    move-result-object v2

    .line 107
    invoke-interface {v0}, Lorg/apache/james/mime4j/dom/field/ContentTypeField;->getMediaType()Ljava/lang/String;

    move-result-object v3

    .line 108
    invoke-interface {v0}, Lorg/apache/james/mime4j/dom/field/ContentTypeField;->getSubType()Ljava/lang/String;

    move-result-object v4

    .line 109
    invoke-interface {v0}, Lorg/apache/james/mime4j/dom/field/ContentTypeField;->getCharset()Ljava/lang/String;

    move-result-object v5

    .line 110
    invoke-interface {v0}, Lorg/apache/james/mime4j/dom/field/ContentTypeField;->getBoundary()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    move-object v2, v0

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    :goto_0
    const-string v6, "text"

    if-nez v2, :cond_2

    .line 113
    iget-object v2, p0, Lorg/apache/james/mime4j/message/DefaultBodyDescriptorBuilder;->parentMimeType:Ljava/lang/String;

    const-string v3, "multipart/digest"

    invoke-static {v3, v2}, Lorg/apache/james/mime4j/util/MimeUtil;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "message/rfc822"

    const-string v3, "message"

    const-string v4, "rfc822"

    goto :goto_1

    :cond_1
    const-string v2, "text/plain"

    const-string v4, "plain"

    move-object v8, v2

    move-object v10, v4

    move-object v9, v6

    goto :goto_2

    :cond_2
    :goto_1
    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    :goto_2
    if-nez v5, :cond_3

    .line 123
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v5, "us-ascii"

    :cond_3
    move-object v12, v5

    .line 126
    invoke-static {v8}, Lorg/apache/james/mime4j/util/MimeUtil;->isMultipart(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object v11, v1

    goto :goto_3

    :cond_4
    move-object v11, v0

    .line 129
    :goto_3
    new-instance v0, Lorg/apache/james/mime4j/message/MaximalBodyDescriptor;

    iget-object v13, p0, Lorg/apache/james/mime4j/message/DefaultBodyDescriptorBuilder;->fields:Ljava/util/Map;

    move-object v7, v0

    invoke-direct/range {v7 .. v13}, Lorg/apache/james/mime4j/message/MaximalBodyDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method public newChild()Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;
    .locals 4

    .line 136
    iget-object v0, p0, Lorg/apache/james/mime4j/message/DefaultBodyDescriptorBuilder;->fields:Ljava/util/Map;

    sget-object v1, Lorg/apache/james/mime4j/message/DefaultBodyDescriptorBuilder;->CONTENT_TYPE:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/dom/field/ContentTypeField;

    if-eqz v0, :cond_0

    .line 138
    invoke-interface {v0}, Lorg/apache/james/mime4j/dom/field/ContentTypeField;->getMimeType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 140
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/message/DefaultBodyDescriptorBuilder;->parentMimeType:Ljava/lang/String;

    const-string v1, "multipart/digest"

    invoke-static {v1, v0}, Lorg/apache/james/mime4j/util/MimeUtil;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "message/rfc822"

    goto :goto_0

    :cond_1
    const-string v0, "text/plain"

    .line 146
    :goto_0
    new-instance v1, Lorg/apache/james/mime4j/message/DefaultBodyDescriptorBuilder;

    iget-object v2, p0, Lorg/apache/james/mime4j/message/DefaultBodyDescriptorBuilder;->fieldParser:Lorg/apache/james/mime4j/dom/FieldParser;

    iget-object v3, p0, Lorg/apache/james/mime4j/message/DefaultBodyDescriptorBuilder;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    invoke-direct {v1, v0, v2, v3}, Lorg/apache/james/mime4j/message/DefaultBodyDescriptorBuilder;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/dom/FieldParser;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V

    return-object v1
.end method

.method public reset()V
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/apache/james/mime4j/message/DefaultBodyDescriptorBuilder;->fields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method
