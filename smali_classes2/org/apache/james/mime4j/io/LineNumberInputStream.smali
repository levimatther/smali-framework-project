.class public Lorg/apache/james/mime4j/io/LineNumberInputStream;
.super Ljava/io/FilterInputStream;
.source "LineNumberInputStream.java"

# interfaces
.implements Lorg/apache/james/mime4j/io/LineNumberSource;


# instance fields
.field private lineNumber:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p1, 0x1

    .line 32
    iput p1, p0, Lorg/apache/james/mime4j/io/LineNumberInputStream;->lineNumber:I

    return-void
.end method


# virtual methods
.method public getLineNumber()I
    .locals 1

    .line 45
    iget v0, p0, Lorg/apache/james/mime4j/io/LineNumberInputStream;->lineNumber:I

    return v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lorg/apache/james/mime4j/io/LineNumberInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 52
    iget v1, p0, Lorg/apache/james/mime4j/io/LineNumberInputStream;->lineNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/james/mime4j/io/LineNumberInputStream;->lineNumber:I

    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lorg/apache/james/mime4j/io/LineNumberInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_1

    .line 61
    aget-byte v1, p1, v0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 62
    iget v1, p0, Lorg/apache/james/mime4j/io/LineNumberInputStream;->lineNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/james/mime4j/io/LineNumberInputStream;->lineNumber:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p3
.end method
