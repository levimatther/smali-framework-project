.class Lorg/apache/james/mime4j/message/BasicBinaryBody;
.super Lorg/apache/james/mime4j/dom/BinaryBody;
.source "BasicBinaryBody.java"


# instance fields
.field private final content:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/apache/james/mime4j/dom/BinaryBody;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/apache/james/mime4j/message/BasicBinaryBody;->content:[B

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/james/mime4j/dom/SingleBody;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/BasicBinaryBody;->copy()Lorg/apache/james/mime4j/message/BasicBinaryBody;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/apache/james/mime4j/message/BasicBinaryBody;
    .locals 2

    .line 44
    new-instance v0, Lorg/apache/james/mime4j/message/BasicBinaryBody;

    iget-object v1, p0, Lorg/apache/james/mime4j/message/BasicBinaryBody;->content:[B

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/message/BasicBinaryBody;-><init>([B)V

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/apache/james/mime4j/message/BasicBinaryBody;->content:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method
