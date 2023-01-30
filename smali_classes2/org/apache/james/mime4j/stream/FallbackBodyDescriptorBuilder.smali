.class Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;
.super Ljava/lang/Object;
.source "FallbackBodyDescriptorBuilder.java"

# interfaces
.implements Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;


# static fields
.field private static final DEFAULT_MEDIA_TYPE:Ljava/lang/String; = "text"

.field private static final DEFAULT_MIME_TYPE:Ljava/lang/String; = "text/plain"

.field private static final DEFAULT_SUB_TYPE:Ljava/lang/String; = "plain"

.field private static final EMAIL_MESSAGE_MIME_TYPE:Ljava/lang/String; = "message/rfc822"

.field private static final MEDIA_TYPE_MESSAGE:Ljava/lang/String; = "message"

.field private static final MEDIA_TYPE_TEXT:Ljava/lang/String; = "text"

.field private static final SUB_TYPE_EMAIL:Ljava/lang/String; = "rfc822"

.field private static final US_ASCII:Ljava/lang/String; = "us-ascii"


# instance fields
.field private boundary:Ljava/lang/String;

.field private charset:Ljava/lang/String;

.field private contentLength:J

.field private mediaType:Ljava/lang/String;

.field private mimeType:Ljava/lang/String;

.field private final monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

.field private final parentMimeType:Ljava/lang/String;

.field private subType:Ljava/lang/String;

.field private transferEncoding:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, v0, v0}, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->parentMimeType:Ljava/lang/String;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    sget-object p2, Lorg/apache/james/mime4j/codec/DecodeMonitor;->SILENT:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    :goto_0
    iput-object p2, p0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    .line 73
    invoke-virtual {p0}, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->reset()V

    return-void
.end method

.method private parseContentType(Lorg/apache/james/mime4j/stream/Field;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .line 153
    instance-of v0, p1, Lorg/apache/james/mime4j/stream/RawField;

    if-eqz v0, :cond_0

    .line 154
    check-cast p1, Lorg/apache/james/mime4j/stream/RawField;

    goto :goto_0

    .line 156
    :cond_0
    new-instance v0, Lorg/apache/james/mime4j/stream/RawField;

    invoke-interface {p1}, Lorg/apache/james/mime4j/stream/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/james/mime4j/stream/Field;->getBody()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/apache/james/mime4j/stream/RawField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v0

    .line 158
    :goto_0
    sget-object v0, Lorg/apache/james/mime4j/stream/RawFieldParser;->DEFAULT:Lorg/apache/james/mime4j/stream/RawFieldParser;

    invoke-virtual {v0, p1}, Lorg/apache/james/mime4j/stream/RawFieldParser;->parseRawBody(Lorg/apache/james/mime4j/stream/RawField;)Lorg/apache/james/mime4j/stream/RawBody;

    move-result-object p1

    .line 159
    invoke-virtual {p1}, Lorg/apache/james/mime4j/stream/RawBody;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 160
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 161
    invoke-virtual {p1}, Lorg/apache/james/mime4j/stream/RawBody;->getParams()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/james/mime4j/stream/NameValuePair;

    .line 162
    invoke-virtual {v2}, Lorg/apache/james/mime4j/stream/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 163
    invoke-virtual {v2}, Lorg/apache/james/mime4j/stream/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    if-eqz v0, :cond_4

    .line 169
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2f

    .line 170
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v2, v3, :cond_2

    .line 173
    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    add-int/2addr v2, v4

    .line 174
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 175
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v2, p1

    move-object v3, v2

    :cond_3
    move v4, v5

    :goto_2
    if-nez v4, :cond_5

    move-object v0, p1

    move-object v2, v0

    goto :goto_3

    :cond_4
    move-object v2, p1

    :goto_3
    move-object v3, v2

    :cond_5
    const-string v4, "boundary"

    .line 187
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v0, :cond_8

    const-string v5, "multipart/"

    .line 189
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    if-nez v4, :cond_7

    :cond_6
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 192
    :cond_7
    iput-object v0, p0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->mimeType:Ljava/lang/String;

    .line 193
    iput-object v3, p0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->mediaType:Ljava/lang/String;

    .line 194
    iput-object v2, p0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->subType:Ljava/lang/String;

    .line 197
    :cond_8
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->mimeType:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/james/mime4j/util/MimeUtil;->isMultipart(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 198
    iput-object v4, p0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->boundary:Ljava/lang/String;

    :cond_9
    const-string v0, "charset"

    .line 201
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 202
    iput-object p1, p0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->charset:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 204
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 205
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a

    .line 206
    iput-object p1, p0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->charset:Ljava/lang/String;

    :cond_a
    return-void
.end method


# virtual methods
.method public addField(Lorg/apache/james/mime4j/stream/RawField;)Lorg/apache/james/mime4j/stream/Field;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .line 122
    invoke-virtual {p1}, Lorg/apache/james/mime4j/stream/RawField;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "content-transfer-encoding"

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->transferEncoding:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 125
    invoke-virtual {p1}, Lorg/apache/james/mime4j/stream/RawField;->getBody()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 127
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 128
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 129
    iput-object p1, p0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->transferEncoding:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, "content-length"

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v1, p0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->contentLength:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 133
    invoke-virtual {p1}, Lorg/apache/james/mime4j/stream/RawField;->getBody()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 135
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 137
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->contentLength:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 139
    :catch_0
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid content length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ignoring Content-Length header"

    invoke-virtual {v0, v1, v2}, Lorg/apache/james/mime4j/codec/DecodeMonitor;->warn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 141
    :cond_1
    new-instance v0, Lorg/apache/james/mime4j/MimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Content-Length header: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/MimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string v1, "content-type"

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->mimeType:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 146
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->parseContentType(Lorg/apache/james/mime4j/stream/Field;)V

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public build()Lorg/apache/james/mime4j/stream/BodyDescriptor;
    .locals 14

    .line 91
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->mimeType:Ljava/lang/String;

    .line 92
    iget-object v1, p0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->mediaType:Ljava/lang/String;

    .line 93
    iget-object v2, p0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->subType:Ljava/lang/String;

    .line 94
    iget-object v3, p0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->charset:Ljava/lang/String;

    const-string v4, "text"

    if-nez v0, :cond_1

    .line 96
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->parentMimeType:Ljava/lang/String;

    const-string v1, "multipart/digest"

    invoke-static {v1, v0}, Lorg/apache/james/mime4j/util/MimeUtil;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "message/rfc822"

    const-string v1, "message"

    const-string v2, "rfc822"

    goto :goto_0

    :cond_0
    const-string v0, "text/plain"

    const-string v2, "plain"

    move-object v6, v0

    move-object v8, v2

    move-object v7, v4

    goto :goto_1

    :cond_1
    :goto_0
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    :goto_1
    if-nez v3, :cond_2

    .line 106
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v3, "us-ascii"

    :cond_2
    move-object v10, v3

    .line 109
    new-instance v0, Lorg/apache/james/mime4j/stream/BasicBodyDescriptor;

    iget-object v9, p0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->boundary:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->transferEncoding:Ljava/lang/String;

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    const-string v1, "7bit"

    :goto_2
    move-object v11, v1

    iget-wide v12, p0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->contentLength:J

    move-object v5, v0

    invoke-direct/range {v5 .. v13}, Lorg/apache/james/mime4j/stream/BasicBodyDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public newChild()Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;
    .locals 3

    .line 87
    new-instance v0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;

    iget-object v1, p0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->mimeType:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    invoke-direct {v0, v1, v2}, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V

    return-object v0
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->mimeType:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->subType:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->mediaType:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->boundary:Ljava/lang/String;

    .line 81
    iput-object v0, p0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->charset:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->transferEncoding:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 83
    iput-wide v0, p0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->contentLength:J

    return-void
.end method
