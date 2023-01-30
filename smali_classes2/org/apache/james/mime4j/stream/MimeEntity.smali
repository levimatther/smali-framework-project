.class Lorg/apache/james/mime4j/stream/MimeEntity;
.super Ljava/lang/Object;
.source "MimeEntity.java"

# interfaces
.implements Lorg/apache/james/mime4j/stream/EntityStateMachine;


# instance fields
.field private body:Lorg/apache/james/mime4j/stream/BodyDescriptor;

.field private final bodyDescBuilder:Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;

.field private final config:Lorg/apache/james/mime4j/stream/MimeConfig;

.field private currentMimePartStream:Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;

.field private dataStream:Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;

.field private endOfHeader:Z

.field private final endState:Lorg/apache/james/mime4j/stream/EntityState;

.field private field:Lorg/apache/james/mime4j/stream/Field;

.field private final fieldBuilder:Lorg/apache/james/mime4j/stream/FieldBuilder;

.field private headerCount:I

.field private final inbuffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

.field private lineCount:I

.field private final lineSource:Lorg/apache/james/mime4j/io/LineNumberSource;

.field private final linebuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

.field private final monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

.field private recursionMode:Lorg/apache/james/mime4j/stream/RecursionMode;

.field private state:Lorg/apache/james/mime4j/stream/EntityState;

.field private tmpbuf:[B


# direct methods
.method constructor <init>(Lorg/apache/james/mime4j/io/LineNumberSource;Ljava/io/InputStream;Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;)V
    .locals 9

    .line 137
    new-instance v3, Lorg/apache/james/mime4j/stream/MimeConfig;

    invoke-direct {v3}, Lorg/apache/james/mime4j/stream/MimeConfig;-><init>()V

    sget-object v4, Lorg/apache/james/mime4j/stream/EntityState;->T_START_MESSAGE:Lorg/apache/james/mime4j/stream/EntityState;

    sget-object v5, Lorg/apache/james/mime4j/stream/EntityState;->T_END_MESSAGE:Lorg/apache/james/mime4j/stream/EntityState;

    sget-object v6, Lorg/apache/james/mime4j/codec/DecodeMonitor;->SILENT:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    new-instance v7, Lorg/apache/james/mime4j/stream/DefaultFieldBuilder;

    const/4 v0, -0x1

    invoke-direct {v7, v0}, Lorg/apache/james/mime4j/stream/DefaultFieldBuilder;-><init>(I)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lorg/apache/james/mime4j/stream/MimeEntity;-><init>(Lorg/apache/james/mime4j/io/LineNumberSource;Ljava/io/InputStream;Lorg/apache/james/mime4j/stream/MimeConfig;Lorg/apache/james/mime4j/stream/EntityState;Lorg/apache/james/mime4j/stream/EntityState;Lorg/apache/james/mime4j/codec/DecodeMonitor;Lorg/apache/james/mime4j/stream/FieldBuilder;Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;)V

    return-void
.end method

.method constructor <init>(Lorg/apache/james/mime4j/io/LineNumberSource;Ljava/io/InputStream;Lorg/apache/james/mime4j/stream/FieldBuilder;Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;)V
    .locals 9

    .line 126
    new-instance v3, Lorg/apache/james/mime4j/stream/MimeConfig;

    invoke-direct {v3}, Lorg/apache/james/mime4j/stream/MimeConfig;-><init>()V

    sget-object v4, Lorg/apache/james/mime4j/stream/EntityState;->T_START_MESSAGE:Lorg/apache/james/mime4j/stream/EntityState;

    sget-object v5, Lorg/apache/james/mime4j/stream/EntityState;->T_END_MESSAGE:Lorg/apache/james/mime4j/stream/EntityState;

    sget-object v6, Lorg/apache/james/mime4j/codec/DecodeMonitor;->SILENT:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lorg/apache/james/mime4j/stream/MimeEntity;-><init>(Lorg/apache/james/mime4j/io/LineNumberSource;Ljava/io/InputStream;Lorg/apache/james/mime4j/stream/MimeConfig;Lorg/apache/james/mime4j/stream/EntityState;Lorg/apache/james/mime4j/stream/EntityState;Lorg/apache/james/mime4j/codec/DecodeMonitor;Lorg/apache/james/mime4j/stream/FieldBuilder;Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;)V

    return-void
.end method

.method constructor <init>(Lorg/apache/james/mime4j/io/LineNumberSource;Ljava/io/InputStream;Lorg/apache/james/mime4j/stream/MimeConfig;Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;)V
    .locals 9

    .line 114
    sget-object v4, Lorg/apache/james/mime4j/stream/EntityState;->T_START_MESSAGE:Lorg/apache/james/mime4j/stream/EntityState;

    sget-object v5, Lorg/apache/james/mime4j/stream/EntityState;->T_END_MESSAGE:Lorg/apache/james/mime4j/stream/EntityState;

    invoke-virtual {p3}, Lorg/apache/james/mime4j/stream/MimeConfig;->isStrictParsing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/james/mime4j/codec/DecodeMonitor;->STRICT:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/james/mime4j/codec/DecodeMonitor;->SILENT:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    :goto_0
    move-object v6, v0

    new-instance v7, Lorg/apache/james/mime4j/stream/DefaultFieldBuilder;

    invoke-virtual {p3}, Lorg/apache/james/mime4j/stream/MimeConfig;->getMaxHeaderLen()I

    move-result v0

    invoke-direct {v7, v0}, Lorg/apache/james/mime4j/stream/DefaultFieldBuilder;-><init>(I)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lorg/apache/james/mime4j/stream/MimeEntity;-><init>(Lorg/apache/james/mime4j/io/LineNumberSource;Ljava/io/InputStream;Lorg/apache/james/mime4j/stream/MimeConfig;Lorg/apache/james/mime4j/stream/EntityState;Lorg/apache/james/mime4j/stream/EntityState;Lorg/apache/james/mime4j/codec/DecodeMonitor;Lorg/apache/james/mime4j/stream/FieldBuilder;Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;)V

    return-void
.end method

.method constructor <init>(Lorg/apache/james/mime4j/io/LineNumberSource;Ljava/io/InputStream;Lorg/apache/james/mime4j/stream/MimeConfig;Lorg/apache/james/mime4j/stream/EntityState;Lorg/apache/james/mime4j/stream/EntityState;Lorg/apache/james/mime4j/codec/DecodeMonitor;Lorg/apache/james/mime4j/stream/FieldBuilder;Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p3, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->config:Lorg/apache/james/mime4j/stream/MimeConfig;

    .line 77
    iput-object p4, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->state:Lorg/apache/james/mime4j/stream/EntityState;

    .line 78
    iput-object p5, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->endState:Lorg/apache/james/mime4j/stream/EntityState;

    .line 79
    iput-object p6, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    .line 80
    iput-object p7, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->fieldBuilder:Lorg/apache/james/mime4j/stream/FieldBuilder;

    .line 81
    iput-object p8, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->bodyDescBuilder:Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;

    .line 82
    new-instance p4, Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    const/16 p5, 0x40

    invoke-direct {p4, p5}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;-><init>(I)V

    iput-object p4, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->linebuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    const/4 p4, 0x0

    .line 83
    iput p4, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->lineCount:I

    .line 84
    iput-boolean p4, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->endOfHeader:Z

    .line 85
    iput p4, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->headerCount:I

    .line 86
    iput-object p1, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->lineSource:Lorg/apache/james/mime4j/io/LineNumberSource;

    .line 87
    new-instance p1, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {p3}, Lorg/apache/james/mime4j/stream/MimeConfig;->getMaxLineLen()I

    move-result p4

    const/16 p5, 0x1000

    invoke-direct {p1, p2, p5, p4}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;-><init>(Ljava/io/InputStream;II)V

    iput-object p1, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->inbuffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    .line 91
    new-instance p1, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;

    iget-object p2, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->inbuffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {p3}, Lorg/apache/james/mime4j/stream/MimeConfig;->getMaxLineLen()I

    move-result p3

    invoke-direct {p1, p2, p3}, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;-><init>(Ljava/io/InputStream;I)V

    iput-object p1, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->dataStream:Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;

    return-void
.end method

.method constructor <init>(Lorg/apache/james/mime4j/io/LineNumberSource;Ljava/io/InputStream;Lorg/apache/james/mime4j/stream/MimeConfig;Lorg/apache/james/mime4j/stream/EntityState;Lorg/apache/james/mime4j/stream/EntityState;Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;)V
    .locals 10

    .line 103
    invoke-virtual {p3}, Lorg/apache/james/mime4j/stream/MimeConfig;->isStrictParsing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/james/mime4j/codec/DecodeMonitor;->STRICT:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/james/mime4j/codec/DecodeMonitor;->SILENT:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    :goto_0
    move-object v7, v0

    new-instance v8, Lorg/apache/james/mime4j/stream/DefaultFieldBuilder;

    invoke-virtual {p3}, Lorg/apache/james/mime4j/stream/MimeConfig;->getMaxHeaderLen()I

    move-result v0

    invoke-direct {v8, v0}, Lorg/apache/james/mime4j/stream/DefaultFieldBuilder;-><init>(I)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lorg/apache/james/mime4j/stream/MimeEntity;-><init>(Lorg/apache/james/mime4j/io/LineNumberSource;Ljava/io/InputStream;Lorg/apache/james/mime4j/stream/MimeConfig;Lorg/apache/james/mime4j/stream/EntityState;Lorg/apache/james/mime4j/stream/EntityState;Lorg/apache/james/mime4j/codec/DecodeMonitor;Lorg/apache/james/mime4j/stream/FieldBuilder;Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;)V

    return-void
.end method

.method private advanceToBoundary()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 385
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->dataStream:Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->eof()Z

    move-result v0

    if-nez v0, :cond_1

    .line 386
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->tmpbuf:[B

    if-nez v0, :cond_0

    const/16 v0, 0x800

    new-array v0, v0, [B

    .line 387
    iput-object v0, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->tmpbuf:[B

    .line 389
    :cond_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/stream/MimeEntity;->getLimitedContentStream()Ljava/io/InputStream;

    move-result-object v0

    .line 390
    :goto_0
    iget-object v1, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->tmpbuf:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private clearMimePartStream()V
    .locals 3

    const/4 v0, 0x0

    .line 378
    iput-object v0, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->currentMimePartStream:Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;

    .line 379
    new-instance v0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;

    iget-object v1, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->inbuffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    iget-object v2, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->config:Lorg/apache/james/mime4j/stream/MimeConfig;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/stream/MimeConfig;->getMaxLineLen()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->dataStream:Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;

    return-void
.end method

.method private createMimePartStream()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 364
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->body:Lorg/apache/james/mime4j/stream/BodyDescriptor;

    invoke-interface {v0}, Lorg/apache/james/mime4j/stream/BodyDescriptor;->getBoundary()Ljava/lang/String;

    move-result-object v0

    .line 366
    :try_start_0
    new-instance v1, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;

    iget-object v2, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->inbuffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    iget-object v3, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->config:Lorg/apache/james/mime4j/stream/MimeConfig;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/stream/MimeConfig;->isStrictParsing()Z

    move-result v3

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;-><init>(Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;Ljava/lang/String;Z)V

    iput-object v1, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->currentMimePartStream:Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    new-instance v0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;

    iget-object v1, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->currentMimePartStream:Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;

    iget-object v2, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->config:Lorg/apache/james/mime4j/stream/MimeConfig;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/stream/MimeConfig;->getMaxLineLen()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->dataStream:Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;

    return-void

    :catch_0
    move-exception v0

    .line 370
    new-instance v1, Lorg/apache/james/mime4j/MimeException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/james/mime4j/MimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private decodedStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 2

    .line 404
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->body:Lorg/apache/james/mime4j/stream/BodyDescriptor;

    invoke-interface {v0}, Lorg/apache/james/mime4j/stream/BodyDescriptor;->getTransferEncoding()Ljava/lang/String;

    move-result-object v0

    .line 405
    invoke-static {v0}, Lorg/apache/james/mime4j/util/MimeUtil;->isBase64Encoding(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 406
    new-instance v0, Lorg/apache/james/mime4j/codec/Base64InputStream;

    iget-object v1, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    invoke-direct {v0, p1, v1}, Lorg/apache/james/mime4j/codec/Base64InputStream;-><init>(Ljava/io/InputStream;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V

    :goto_0
    move-object p1, v0

    goto :goto_1

    .line 407
    :cond_0
    invoke-static {v0}, Lorg/apache/james/mime4j/util/MimeUtil;->isQuotedPrintableEncoded(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 408
    new-instance v0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;

    iget-object v1, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    invoke-direct {v0, p1, v1}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-object p1
.end method

.method private getDataStream()Lorg/apache/james/mime4j/io/LineReaderInputStream;
    .locals 1

    .line 168
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->dataStream:Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;

    return-object v0
.end method

.method private getLimitedContentStream()Ljava/io/InputStream;
    .locals 4

    .line 437
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->config:Lorg/apache/james/mime4j/stream/MimeConfig;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/stream/MimeConfig;->getMaxContentLen()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 439
    new-instance v2, Lorg/apache/james/mime4j/io/LimitedInputStream;

    iget-object v3, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->dataStream:Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;

    invoke-direct {v2, v3, v0, v1}, Lorg/apache/james/mime4j/io/LimitedInputStream;-><init>(Ljava/io/InputStream;J)V

    return-object v2

    .line 441
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->dataStream:Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;

    return-object v0
.end method

.method private getLineNumber()I
    .locals 1

    .line 161
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->lineSource:Lorg/apache/james/mime4j/io/LineNumberSource;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 164
    :cond_0
    invoke-interface {v0}, Lorg/apache/james/mime4j/io/LineNumberSource;->getLineNumber()I

    move-result v0

    return v0
.end method

.method private nextMessage()Lorg/apache/james/mime4j/stream/EntityStateMachine;
    .locals 3

    .line 398
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->currentMimePartStream:Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->inbuffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    .line 399
    :goto_0
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/stream/MimeEntity;->decodedStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    .line 400
    sget-object v1, Lorg/apache/james/mime4j/stream/EntityState;->T_START_MESSAGE:Lorg/apache/james/mime4j/stream/EntityState;

    sget-object v2, Lorg/apache/james/mime4j/stream/EntityState;->T_END_MESSAGE:Lorg/apache/james/mime4j/stream/EntityState;

    invoke-direct {p0, v1, v2, v0}, Lorg/apache/james/mime4j/stream/MimeEntity;->nextMimeEntity(Lorg/apache/james/mime4j/stream/EntityState;Lorg/apache/james/mime4j/stream/EntityState;Ljava/io/InputStream;)Lorg/apache/james/mime4j/stream/EntityStateMachine;

    move-result-object v0

    return-object v0
.end method

.method private nextMimeEntity()Lorg/apache/james/mime4j/stream/EntityStateMachine;
    .locals 3

    .line 414
    sget-object v0, Lorg/apache/james/mime4j/stream/EntityState;->T_START_BODYPART:Lorg/apache/james/mime4j/stream/EntityState;

    sget-object v1, Lorg/apache/james/mime4j/stream/EntityState;->T_END_BODYPART:Lorg/apache/james/mime4j/stream/EntityState;

    iget-object v2, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->currentMimePartStream:Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/james/mime4j/stream/MimeEntity;->nextMimeEntity(Lorg/apache/james/mime4j/stream/EntityState;Lorg/apache/james/mime4j/stream/EntityState;Ljava/io/InputStream;)Lorg/apache/james/mime4j/stream/EntityStateMachine;

    move-result-object v0

    return-object v0
.end method

.method private nextMimeEntity(Lorg/apache/james/mime4j/stream/EntityState;Lorg/apache/james/mime4j/stream/EntityState;Ljava/io/InputStream;)Lorg/apache/james/mime4j/stream/EntityStateMachine;
    .locals 10

    .line 418
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->recursionMode:Lorg/apache/james/mime4j/stream/RecursionMode;

    sget-object v1, Lorg/apache/james/mime4j/stream/RecursionMode;->M_RAW:Lorg/apache/james/mime4j/stream/RecursionMode;

    if-ne v0, v1, :cond_0

    .line 419
    new-instance p1, Lorg/apache/james/mime4j/stream/RawEntity;

    invoke-direct {p1, p3}, Lorg/apache/james/mime4j/stream/RawEntity;-><init>(Ljava/io/InputStream;)V

    return-object p1

    .line 422
    :cond_0
    new-instance v9, Lorg/apache/james/mime4j/stream/MimeEntity;

    iget-object v1, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->lineSource:Lorg/apache/james/mime4j/io/LineNumberSource;

    iget-object v3, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->config:Lorg/apache/james/mime4j/stream/MimeConfig;

    iget-object v6, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    iget-object v7, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->fieldBuilder:Lorg/apache/james/mime4j/stream/FieldBuilder;

    iget-object v0, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->bodyDescBuilder:Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;

    invoke-interface {v0}, Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;->newChild()Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;

    move-result-object v8

    move-object v0, v9

    move-object v2, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v8}, Lorg/apache/james/mime4j/stream/MimeEntity;-><init>(Lorg/apache/james/mime4j/io/LineNumberSource;Ljava/io/InputStream;Lorg/apache/james/mime4j/stream/MimeConfig;Lorg/apache/james/mime4j/stream/EntityState;Lorg/apache/james/mime4j/stream/EntityState;Lorg/apache/james/mime4j/codec/DecodeMonitor;Lorg/apache/james/mime4j/stream/FieldBuilder;Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;)V

    .line 431
    iget-object p1, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->recursionMode:Lorg/apache/james/mime4j/stream/RecursionMode;

    invoke-virtual {v9, p1}, Lorg/apache/james/mime4j/stream/MimeEntity;->setRecursionMode(Lorg/apache/james/mime4j/stream/RecursionMode;)V

    return-object v9
.end method

.method private readRawField()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .line 203
    iget-boolean v0, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->endOfHeader:Z

    if-nez v0, :cond_6

    .line 205
    invoke-direct {p0}, Lorg/apache/james/mime4j/stream/MimeEntity;->getDataStream()Lorg/apache/james/mime4j/io/LineReaderInputStream;

    move-result-object v0

    .line 210
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->linebuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 212
    iget-object v1, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->fieldBuilder:Lorg/apache/james/mime4j/stream/FieldBuilder;

    iget-object v2, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->linebuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-interface {v1, v2}, Lorg/apache/james/mime4j/stream/FieldBuilder;->append(Lorg/apache/james/mime4j/util/ByteArrayBuffer;)V

    .line 214
    :cond_1
    iget-object v1, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->linebuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->clear()V

    .line 215
    iget-object v1, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->linebuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/io/LineReaderInputStream;->readLine(Lorg/apache/james/mime4j/util/ByteArrayBuffer;)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v1, v2, :cond_2

    .line 216
    sget-object v0, Lorg/apache/james/mime4j/stream/Event;->HEADERS_PREMATURE_END:Lorg/apache/james/mime4j/stream/Event;

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/stream/MimeEntity;->monitor(Lorg/apache/james/mime4j/stream/Event;)V

    .line 217
    iput-boolean v3, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->endOfHeader:Z

    goto :goto_0

    .line 220
    :cond_2
    iget-object v1, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->linebuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 221
    iget-object v2, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->linebuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v2, v4}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->byteAt(I)B

    move-result v2

    const/16 v4, 0xa

    if-ne v2, v4, :cond_3

    add-int/lit8 v1, v1, -0x1

    :cond_3
    if-lez v1, :cond_4

    .line 224
    iget-object v2, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->linebuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v2, v4}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->byteAt(I)B

    move-result v2

    const/16 v4, 0xd

    if-ne v2, v4, :cond_4

    add-int/lit8 v1, v1, -0x1

    :cond_4
    if-nez v1, :cond_5

    .line 229
    iput-boolean v3, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->endOfHeader:Z

    goto :goto_0

    .line 232
    :cond_5
    iget v1, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->lineCount:I

    add-int/2addr v1, v3

    iput v1, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->lineCount:I

    if-le v1, v3, :cond_0

    .line 234
    iget-object v1, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->linebuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->byteAt(I)B

    move-result v1
    :try_end_0
    .catch Lorg/apache/james/mime4j/io/MaxLineLimitException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 242
    new-instance v1, Lorg/apache/james/mime4j/MimeException;

    invoke-direct {v1, v0}, Lorg/apache/james/mime4j/MimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 204
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public static final stateToString(Lorg/apache/james/mime4j/stream/EntityState;)Ljava/lang/String;
    .locals 1

    .line 519
    sget-object v0, Lorg/apache/james/mime4j/stream/MimeEntity$1;->$SwitchMap$org$apache$james$mime4j$stream$EntityState:[I

    invoke-virtual {p0}, Lorg/apache/james/mime4j/stream/EntityState;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const-string p0, "Unknown"

    goto :goto_0

    :pswitch_0
    const-string p0, "End bodypart"

    goto :goto_0

    :pswitch_1
    const-string p0, "Raw entity"

    goto :goto_0

    :pswitch_2
    const-string p0, "End message"

    goto :goto_0

    :pswitch_3
    const-string p0, "End of stream"

    goto :goto_0

    :pswitch_4
    const-string p0, "End multipart"

    goto :goto_0

    :pswitch_5
    const-string p0, "Body"

    goto :goto_0

    :pswitch_6
    const-string p0, "Epilogue"

    goto :goto_0

    :pswitch_7
    const-string p0, "Preamble"

    goto :goto_0

    :pswitch_8
    const-string p0, "Start multipart"

    goto :goto_0

    :pswitch_9
    const-string p0, "End header"

    goto :goto_0

    :pswitch_a
    const-string p0, "Field"

    goto :goto_0

    :pswitch_b
    const-string p0, "Start header"

    goto :goto_0

    :pswitch_c
    const-string p0, "Start bodypart"

    goto :goto_0

    :pswitch_d
    const-string p0, "Start message"

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public advance()Lorg/apache/james/mime4j/stream/EntityStateMachine;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .line 286
    sget-object v0, Lorg/apache/james/mime4j/stream/MimeEntity$1;->$SwitchMap$org$apache$james$mime4j$stream$EntityState:[I

    iget-object v1, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->state:Lorg/apache/james/mime4j/stream/EntityState;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/stream/EntityState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 354
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->state:Lorg/apache/james/mime4j/stream/EntityState;

    iget-object v1, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->endState:Lorg/apache/james/mime4j/stream/EntityState;

    if-ne v0, v1, :cond_9

    .line 355
    sget-object v0, Lorg/apache/james/mime4j/stream/EntityState;->T_END_OF_STREAM:Lorg/apache/james/mime4j/stream/EntityState;

    iput-object v0, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->state:Lorg/apache/james/mime4j/stream/EntityState;

    goto/16 :goto_2

    .line 351
    :pswitch_0
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->endState:Lorg/apache/james/mime4j/stream/EntityState;

    iput-object v0, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->state:Lorg/apache/james/mime4j/stream/EntityState;

    goto/16 :goto_2

    .line 315
    :pswitch_1
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->dataStream:Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->isUsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    invoke-direct {p0}, Lorg/apache/james/mime4j/stream/MimeEntity;->advanceToBoundary()V

    .line 317
    sget-object v0, Lorg/apache/james/mime4j/stream/EntityState;->T_END_MULTIPART:Lorg/apache/james/mime4j/stream/EntityState;

    iput-object v0, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->state:Lorg/apache/james/mime4j/stream/EntityState;

    goto/16 :goto_2

    .line 320
    :cond_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/stream/MimeEntity;->createMimePartStream()V

    .line 321
    sget-object v0, Lorg/apache/james/mime4j/stream/EntityState;->T_PREAMBLE:Lorg/apache/james/mime4j/stream/EntityState;

    iput-object v0, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->state:Lorg/apache/james/mime4j/stream/EntityState;

    .line 323
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->currentMimePartStream:Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->isEmptyStream()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 331
    :cond_1
    :pswitch_2
    invoke-direct {p0}, Lorg/apache/james/mime4j/stream/MimeEntity;->advanceToBoundary()V

    .line 332
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->currentMimePartStream:Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->eof()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->currentMimePartStream:Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->isLastPart()Z

    move-result v0

    if-nez v0, :cond_2

    .line 333
    sget-object v0, Lorg/apache/james/mime4j/stream/Event;->MIME_BODY_PREMATURE_END:Lorg/apache/james/mime4j/stream/Event;

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/stream/MimeEntity;->monitor(Lorg/apache/james/mime4j/stream/Event;)V

    goto :goto_0

    .line 335
    :cond_2
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->currentMimePartStream:Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->isLastPart()Z

    move-result v0

    if-nez v0, :cond_3

    .line 336
    invoke-direct {p0}, Lorg/apache/james/mime4j/stream/MimeEntity;->clearMimePartStream()V

    .line 337
    invoke-direct {p0}, Lorg/apache/james/mime4j/stream/MimeEntity;->createMimePartStream()V

    .line 338
    invoke-direct {p0}, Lorg/apache/james/mime4j/stream/MimeEntity;->nextMimeEntity()Lorg/apache/james/mime4j/stream/EntityStateMachine;

    move-result-object v0

    return-object v0

    .line 341
    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->currentMimePartStream:Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->isFullyConsumed()Z

    move-result v0

    .line 342
    invoke-direct {p0}, Lorg/apache/james/mime4j/stream/MimeEntity;->clearMimePartStream()V

    .line 343
    sget-object v1, Lorg/apache/james/mime4j/stream/EntityState;->T_EPILOGUE:Lorg/apache/james/mime4j/stream/EntityState;

    iput-object v1, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->state:Lorg/apache/james/mime4j/stream/EntityState;

    if-nez v0, :cond_4

    goto :goto_2

    .line 347
    :cond_4
    :pswitch_3
    sget-object v0, Lorg/apache/james/mime4j/stream/EntityState;->T_END_MULTIPART:Lorg/apache/james/mime4j/stream/EntityState;

    iput-object v0, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->state:Lorg/apache/james/mime4j/stream/EntityState;

    goto :goto_2

    .line 299
    :pswitch_4
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->bodyDescBuilder:Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;

    invoke-interface {v0}, Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;->build()Lorg/apache/james/mime4j/stream/BodyDescriptor;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->body:Lorg/apache/james/mime4j/stream/BodyDescriptor;

    .line 300
    invoke-interface {v0}, Lorg/apache/james/mime4j/stream/BodyDescriptor;->getMimeType()Ljava/lang/String;

    move-result-object v0

    .line 301
    iget-object v1, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->recursionMode:Lorg/apache/james/mime4j/stream/RecursionMode;

    sget-object v2, Lorg/apache/james/mime4j/stream/RecursionMode;->M_FLAT:Lorg/apache/james/mime4j/stream/RecursionMode;

    if-ne v1, v2, :cond_5

    .line 302
    sget-object v0, Lorg/apache/james/mime4j/stream/EntityState;->T_BODY:Lorg/apache/james/mime4j/stream/EntityState;

    iput-object v0, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->state:Lorg/apache/james/mime4j/stream/EntityState;

    goto :goto_2

    .line 303
    :cond_5
    invoke-static {v0}, Lorg/apache/james/mime4j/util/MimeUtil;->isMultipart(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 304
    sget-object v0, Lorg/apache/james/mime4j/stream/EntityState;->T_START_MULTIPART:Lorg/apache/james/mime4j/stream/EntityState;

    iput-object v0, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->state:Lorg/apache/james/mime4j/stream/EntityState;

    .line 305
    invoke-direct {p0}, Lorg/apache/james/mime4j/stream/MimeEntity;->clearMimePartStream()V

    goto :goto_2

    .line 306
    :cond_6
    iget-object v1, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->recursionMode:Lorg/apache/james/mime4j/stream/RecursionMode;

    sget-object v2, Lorg/apache/james/mime4j/stream/RecursionMode;->M_NO_RECURSE:Lorg/apache/james/mime4j/stream/RecursionMode;

    if-eq v1, v2, :cond_7

    invoke-static {v0}, Lorg/apache/james/mime4j/util/MimeUtil;->isMessage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 308
    sget-object v0, Lorg/apache/james/mime4j/stream/EntityState;->T_BODY:Lorg/apache/james/mime4j/stream/EntityState;

    iput-object v0, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->state:Lorg/apache/james/mime4j/stream/EntityState;

    .line 309
    invoke-direct {p0}, Lorg/apache/james/mime4j/stream/MimeEntity;->nextMessage()Lorg/apache/james/mime4j/stream/EntityStateMachine;

    move-result-object v0

    return-object v0

    .line 311
    :cond_7
    sget-object v0, Lorg/apache/james/mime4j/stream/EntityState;->T_BODY:Lorg/apache/james/mime4j/stream/EntityState;

    iput-object v0, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->state:Lorg/apache/james/mime4j/stream/EntityState;

    goto :goto_2

    .line 294
    :pswitch_5
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->bodyDescBuilder:Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;

    invoke-interface {v0}, Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;->reset()V

    .line 296
    :pswitch_6
    invoke-virtual {p0}, Lorg/apache/james/mime4j/stream/MimeEntity;->nextField()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lorg/apache/james/mime4j/stream/EntityState;->T_FIELD:Lorg/apache/james/mime4j/stream/EntityState;

    goto :goto_1

    :cond_8
    sget-object v0, Lorg/apache/james/mime4j/stream/EntityState;->T_END_HEADER:Lorg/apache/james/mime4j/stream/EntityState;

    :goto_1
    iput-object v0, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->state:Lorg/apache/james/mime4j/stream/EntityState;

    goto :goto_2

    .line 291
    :pswitch_7
    sget-object v0, Lorg/apache/james/mime4j/stream/EntityState;->T_START_HEADER:Lorg/apache/james/mime4j/stream/EntityState;

    iput-object v0, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->state:Lorg/apache/james/mime4j/stream/EntityState;

    goto :goto_2

    .line 288
    :pswitch_8
    sget-object v0, Lorg/apache/james/mime4j/stream/EntityState;->T_START_HEADER:Lorg/apache/james/mime4j/stream/EntityState;

    iput-object v0, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->state:Lorg/apache/james/mime4j/stream/EntityState;

    :goto_2
    const/4 v0, 0x0

    return-object v0

    .line 358
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->state:Lorg/apache/james/mime4j/stream/EntityState;

    invoke-static {v2}, Lorg/apache/james/mime4j/stream/MimeEntity;->stateToString(Lorg/apache/james/mime4j/stream/EntityState;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getBodyDescriptor()Lorg/apache/james/mime4j/stream/BodyDescriptor;
    .locals 3

    .line 457
    sget-object v0, Lorg/apache/james/mime4j/stream/MimeEntity$1;->$SwitchMap$org$apache$james$mime4j$stream$EntityState:[I

    invoke-virtual {p0}, Lorg/apache/james/mime4j/stream/MimeEntity;->getState()Lorg/apache/james/mime4j/stream/EntityState;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/james/mime4j/stream/EntityState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 465
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->state:Lorg/apache/james/mime4j/stream/EntityState;

    invoke-static {v2}, Lorg/apache/james/mime4j/stream/MimeEntity;->stateToString(Lorg/apache/james/mime4j/stream/EntityState;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 463
    :pswitch_1
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->body:Lorg/apache/james/mime4j/stream/BodyDescriptor;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getContentStream()Ljava/io/InputStream;
    .locals 3

    .line 488
    sget-object v0, Lorg/apache/james/mime4j/stream/MimeEntity$1;->$SwitchMap$org$apache$james$mime4j$stream$EntityState:[I

    iget-object v1, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->state:Lorg/apache/james/mime4j/stream/EntityState;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/stream/EntityState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 495
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->state:Lorg/apache/james/mime4j/stream/EntityState;

    invoke-static {v2}, Lorg/apache/james/mime4j/stream/MimeEntity;->stateToString(Lorg/apache/james/mime4j/stream/EntityState;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 493
    :pswitch_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/stream/MimeEntity;->getLimitedContentStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getDecodedContentStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 503
    invoke-virtual {p0}, Lorg/apache/james/mime4j/stream/MimeEntity;->getContentStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/stream/MimeEntity;->decodedStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getField()Lorg/apache/james/mime4j/stream/Field;
    .locals 3

    .line 476
    sget-object v0, Lorg/apache/james/mime4j/stream/MimeEntity$1;->$SwitchMap$org$apache$james$mime4j$stream$EntityState:[I

    invoke-virtual {p0}, Lorg/apache/james/mime4j/stream/MimeEntity;->getState()Lorg/apache/james/mime4j/stream/EntityState;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/james/mime4j/stream/EntityState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 478
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->field:Lorg/apache/james/mime4j/stream/Field;

    return-object v0

    .line 480
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->state:Lorg/apache/james/mime4j/stream/EntityState;

    invoke-static {v2}, Lorg/apache/james/mime4j/stream/MimeEntity;->stateToString(Lorg/apache/james/mime4j/stream/EntityState;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRecursionMode()Lorg/apache/james/mime4j/stream/RecursionMode;
    .locals 1

    .line 149
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->recursionMode:Lorg/apache/james/mime4j/stream/RecursionMode;

    return-object v0
.end method

.method public getState()Lorg/apache/james/mime4j/stream/EntityState;
    .locals 1

    .line 145
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->state:Lorg/apache/james/mime4j/stream/EntityState;

    return-object v0
.end method

.method protected message(Lorg/apache/james/mime4j/stream/Event;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const-string p1, "Event is unexpectedly null."

    goto :goto_0

    .line 183
    :cond_0
    invoke-virtual {p1}, Lorg/apache/james/mime4j/stream/Event;->toString()Ljava/lang/String;

    move-result-object p1

    .line 186
    :goto_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/stream/MimeEntity;->getLineNumber()I

    move-result v0

    if-gtz v0, :cond_1

    return-object p1

    .line 190
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected monitor(Lorg/apache/james/mime4j/stream/Event;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/codec/DecodeMonitor;->isListening()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/stream/MimeEntity;->message(Lorg/apache/james/mime4j/stream/Event;)Ljava/lang/String;

    move-result-object v0

    .line 196
    iget-object v1, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    const-string v2, "ignoring"

    invoke-virtual {v1, v0, v2}, Lorg/apache/james/mime4j/codec/DecodeMonitor;->warn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 197
    :cond_0
    new-instance v0, Lorg/apache/james/mime4j/stream/MimeParseEventException;

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/stream/MimeParseEventException;-><init>(Lorg/apache/james/mime4j/stream/Event;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method protected nextField()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->config:Lorg/apache/james/mime4j/stream/MimeConfig;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/stream/MimeConfig;->getMaxHeaderCount()I

    move-result v0

    .line 250
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->endOfHeader:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    return v2

    :cond_1
    if-lez v0, :cond_3

    .line 253
    iget v1, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->headerCount:I

    if-ge v1, v0, :cond_2

    goto :goto_1

    .line 254
    :cond_2
    new-instance v0, Lorg/apache/james/mime4j/io/MaxHeaderLimitException;

    const-string v1, "Maximum header limit exceeded"

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/io/MaxHeaderLimitException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_3
    :goto_1
    iget v1, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->headerCount:I

    const/4 v3, 0x1

    add-int/2addr v1, v3

    iput v1, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->headerCount:I

    .line 257
    iget-object v1, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->fieldBuilder:Lorg/apache/james/mime4j/stream/FieldBuilder;

    invoke-interface {v1}, Lorg/apache/james/mime4j/stream/FieldBuilder;->reset()V

    .line 258
    invoke-direct {p0}, Lorg/apache/james/mime4j/stream/MimeEntity;->readRawField()V

    .line 260
    :try_start_0
    iget-object v1, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->fieldBuilder:Lorg/apache/james/mime4j/stream/FieldBuilder;

    invoke-interface {v1}, Lorg/apache/james/mime4j/stream/FieldBuilder;->build()Lorg/apache/james/mime4j/stream/RawField;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 264
    :cond_4
    invoke-virtual {v1}, Lorg/apache/james/mime4j/stream/RawField;->getDelimiterIdx()I

    move-result v4

    invoke-virtual {v1}, Lorg/apache/james/mime4j/stream/RawField;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v4, v5, :cond_5

    .line 265
    sget-object v4, Lorg/apache/james/mime4j/stream/Event;->OBSOLETE_HEADER:Lorg/apache/james/mime4j/stream/Event;

    invoke-virtual {p0, v4}, Lorg/apache/james/mime4j/stream/MimeEntity;->monitor(Lorg/apache/james/mime4j/stream/Event;)V

    .line 267
    :cond_5
    iget-object v4, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->bodyDescBuilder:Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;

    invoke-interface {v4, v1}, Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;->addField(Lorg/apache/james/mime4j/stream/RawField;)Lorg/apache/james/mime4j/stream/Field;

    move-result-object v4

    if-eqz v4, :cond_6

    move-object v1, v4

    .line 268
    :cond_6
    iput-object v1, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->field:Lorg/apache/james/mime4j/stream/Field;
    :try_end_0
    .catch Lorg/apache/james/mime4j/MimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    .line 271
    :catch_0
    sget-object v1, Lorg/apache/james/mime4j/stream/Event;->INVALID_HEADER:Lorg/apache/james/mime4j/stream/Event;

    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/stream/MimeEntity;->monitor(Lorg/apache/james/mime4j/stream/Event;)V

    .line 272
    iget-object v1, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->config:Lorg/apache/james/mime4j/stream/MimeConfig;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/stream/MimeConfig;->isMalformedHeaderStartsBody()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    invoke-direct {p0}, Lorg/apache/james/mime4j/stream/MimeEntity;->getDataStream()Lorg/apache/james/mime4j/io/LineReaderInputStream;

    move-result-object v0

    .line 274
    iget-object v1, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->fieldBuilder:Lorg/apache/james/mime4j/stream/FieldBuilder;

    invoke-interface {v1}, Lorg/apache/james/mime4j/stream/FieldBuilder;->getRaw()Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 276
    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/io/LineReaderInputStream;->unread(Lorg/apache/james/mime4j/util/ByteArrayBuffer;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v2

    .line 277
    :cond_7
    new-instance v0, Lorg/apache/james/mime4j/stream/MimeParseEventException;

    sget-object v1, Lorg/apache/james/mime4j/stream/Event;->INVALID_HEADER:Lorg/apache/james/mime4j/stream/Event;

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/stream/MimeParseEventException;-><init>(Lorg/apache/james/mime4j/stream/Event;)V

    throw v0
.end method

.method public setRecursionMode(Lorg/apache/james/mime4j/stream/RecursionMode;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->recursionMode:Lorg/apache/james/mime4j/stream/RecursionMode;

    return-void
.end method

.method public stop()V
    .locals 1

    .line 157
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->inbuffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->truncate()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->state:Lorg/apache/james/mime4j/stream/EntityState;

    invoke-static {v1}, Lorg/apache/james/mime4j/stream/MimeEntity;->stateToString(Lorg/apache/james/mime4j/stream/EntityState;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->body:Lorg/apache/james/mime4j/stream/BodyDescriptor;

    invoke-interface {v2}, Lorg/apache/james/mime4j/stream/BodyDescriptor;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->body:Lorg/apache/james/mime4j/stream/BodyDescriptor;

    invoke-interface {v1}, Lorg/apache/james/mime4j/stream/BodyDescriptor;->getBoundary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
