.class public Lorg/apache/james/mime4j/field/ContentLengthFieldImpl;
.super Lorg/apache/james/mime4j/field/AbstractField;
.source "ContentLengthFieldImpl.java"

# interfaces
.implements Lorg/apache/james/mime4j/dom/field/ContentLengthField;


# static fields
.field public static final PARSER:Lorg/apache/james/mime4j/dom/FieldParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/james/mime4j/dom/FieldParser<",
            "Lorg/apache/james/mime4j/dom/field/ContentLengthField;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private contentLength:J

.field private parsed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    new-instance v0, Lorg/apache/james/mime4j/field/ContentLengthFieldImpl$1;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/ContentLengthFieldImpl$1;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/ContentLengthFieldImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    return-void
.end method

.method constructor <init>(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/field/AbstractField;-><init>(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V

    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lorg/apache/james/mime4j/field/ContentLengthFieldImpl;->parsed:Z

    return-void
.end method

.method private parse()V
    .locals 8

    const-string v0, "ignoring Content-Length header"

    const/4 v1, 0x1

    .line 40
    iput-boolean v1, p0, Lorg/apache/james/mime4j/field/ContentLengthFieldImpl;->parsed:Z

    const-wide/16 v1, -0x1

    .line 41
    iput-wide v1, p0, Lorg/apache/james/mime4j/field/ContentLengthFieldImpl;->contentLength:J

    .line 42
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/ContentLengthFieldImpl;->getBody()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 45
    :try_start_0
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/apache/james/mime4j/field/ContentLengthFieldImpl;->contentLength:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 47
    iput-wide v1, p0, Lorg/apache/james/mime4j/field/ContentLengthFieldImpl;->contentLength:J

    .line 48
    iget-object v1, p0, Lorg/apache/james/mime4j/field/ContentLengthFieldImpl;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/codec/DecodeMonitor;->isListening()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    iget-object v1, p0, Lorg/apache/james/mime4j/field/ContentLengthFieldImpl;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Negative content length: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/apache/james/mime4j/codec/DecodeMonitor;->warn(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 54
    :catch_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/ContentLengthFieldImpl;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/codec/DecodeMonitor;->isListening()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    iget-object v1, p0, Lorg/apache/james/mime4j/field/ContentLengthFieldImpl;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid content length: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/apache/james/mime4j/codec/DecodeMonitor;->warn(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public getContentLength()J
    .locals 2

    .line 63
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentLengthFieldImpl;->parsed:Z

    if-nez v0, :cond_0

    .line 64
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/ContentLengthFieldImpl;->parse()V

    .line 66
    :cond_0
    iget-wide v0, p0, Lorg/apache/james/mime4j/field/ContentLengthFieldImpl;->contentLength:J

    return-wide v0
.end method
