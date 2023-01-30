.class Lorg/apache/james/mime4j/message/StringBody;
.super Lorg/apache/james/mime4j/dom/TextBody;
.source "StringBody.java"


# instance fields
.field private final charset:Ljava/nio/charset/Charset;

.field private final content:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lorg/apache/james/mime4j/dom/TextBody;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/apache/james/mime4j/message/StringBody;->content:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lorg/apache/james/mime4j/message/StringBody;->charset:Ljava/nio/charset/Charset;

    return-void
.end method


# virtual methods
.method public copy()Lorg/apache/james/mime4j/dom/SingleBody;
    .locals 3

    .line 59
    new-instance v0, Lorg/apache/james/mime4j/message/StringBody;

    iget-object v1, p0, Lorg/apache/james/mime4j/message/StringBody;->content:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/james/mime4j/message/StringBody;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Lorg/apache/james/mime4j/message/StringBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    new-instance v0, Lorg/apache/james/mime4j/message/StringInputStream;

    iget-object v1, p0, Lorg/apache/james/mime4j/message/StringBody;->content:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/james/mime4j/message/StringBody;->charset:Ljava/nio/charset/Charset;

    const/16 v3, 0x800

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/james/mime4j/message/StringInputStream;-><init>(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;I)V

    return-object v0
.end method

.method public getMimeCharset()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/apache/james/mime4j/message/StringBody;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReader()Ljava/io/Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    new-instance v0, Ljava/io/StringReader;

    iget-object v1, p0, Lorg/apache/james/mime4j/message/StringBody;->content:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
