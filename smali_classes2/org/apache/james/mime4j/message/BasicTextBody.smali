.class Lorg/apache/james/mime4j/message/BasicTextBody;
.super Lorg/apache/james/mime4j/dom/TextBody;
.source "BasicTextBody.java"


# instance fields
.field private final charset:Ljava/lang/String;

.field private final content:[B


# direct methods
.method constructor <init>([BLjava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lorg/apache/james/mime4j/dom/TextBody;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/apache/james/mime4j/message/BasicTextBody;->content:[B

    .line 39
    iput-object p2, p0, Lorg/apache/james/mime4j/message/BasicTextBody;->charset:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public copy()Lorg/apache/james/mime4j/dom/SingleBody;
    .locals 3

    .line 59
    new-instance v0, Lorg/apache/james/mime4j/message/BasicTextBody;

    iget-object v1, p0, Lorg/apache/james/mime4j/message/BasicTextBody;->content:[B

    iget-object v2, p0, Lorg/apache/james/mime4j/message/BasicTextBody;->charset:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/james/mime4j/message/BasicTextBody;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/apache/james/mime4j/message/BasicTextBody;->content:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public getMimeCharset()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/apache/james/mime4j/message/BasicTextBody;->charset:Ljava/lang/String;

    return-object v0
.end method

.method public getReader()Ljava/io/Reader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/BasicTextBody;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/james/mime4j/message/BasicTextBody;->charset:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v0
.end method
