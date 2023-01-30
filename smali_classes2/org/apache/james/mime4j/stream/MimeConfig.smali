.class public final Lorg/apache/james/mime4j/stream/MimeConfig;
.super Ljava/lang/Object;
.source "MimeConfig.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private countLineNumbers:Z

.field private headlessParsing:Ljava/lang/String;

.field private malformedHeaderStartsBody:Z

.field private maxContentLen:J

.field private maxHeaderCount:I

.field private maxHeaderLen:I

.field private maxLineLen:I

.field private strictParsing:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->strictParsing:Z

    .line 40
    iput-boolean v0, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->countLineNumbers:Z

    .line 41
    iput-boolean v0, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->malformedHeaderStartsBody:Z

    const/16 v0, 0x3e8

    .line 42
    iput v0, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->maxLineLen:I

    .line 43
    iput v0, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->maxHeaderCount:I

    const/16 v0, 0x2710

    .line 44
    iput v0, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->maxHeaderLen:I

    const-wide/16 v0, -0x1

    .line 45
    iput-wide v0, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->maxContentLen:J

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->headlessParsing:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 27
    invoke-virtual {p0}, Lorg/apache/james/mime4j/stream/MimeConfig;->clone()Lorg/apache/james/mime4j/stream/MimeConfig;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/james/mime4j/stream/MimeConfig;
    .locals 1

    .line 261
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/stream/MimeConfig;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 264
    :catch_0
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public getHeadlessParsing()Ljava/lang/String;
    .locals 1

    .line 240
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->headlessParsing:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxContentLen()J
    .locals 2

    .line 192
    iget-wide v0, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->maxContentLen:J

    return-wide v0
.end method

.method public getMaxHeaderCount()I
    .locals 1

    .line 135
    iget v0, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->maxHeaderCount:I

    return v0
.end method

.method public getMaxHeaderLen()I
    .locals 1

    .line 161
    iget v0, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->maxHeaderLen:I

    return v0
.end method

.method public getMaxLineLen()I
    .locals 1

    .line 109
    iget v0, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->maxLineLen:I

    return v0
.end method

.method public isCountLineNumbers()Z
    .locals 1

    .line 216
    iget-boolean v0, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->countLineNumbers:Z

    return v0
.end method

.method public isMalformedHeaderStartsBody()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->malformedHeaderStartsBody:Z

    return v0
.end method

.method public isStrictParsing()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->strictParsing:Z

    return v0
.end method

.method public setCountLineNumbers(Z)V
    .locals 0

    .line 229
    iput-boolean p1, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->countLineNumbers:Z

    return-void
.end method

.method public setHeadlessParsing(Ljava/lang/String;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->headlessParsing:Ljava/lang/String;

    return-void
.end method

.method public setMalformedHeaderStartsBody(Z)V
    .locals 0

    .line 71
    iput-boolean p1, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->malformedHeaderStartsBody:Z

    return-void
.end method

.method public setMaxContentLen(J)V
    .locals 0

    .line 207
    iput-wide p1, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->maxContentLen:J

    return-void
.end method

.method public setMaxHeaderCount(I)V
    .locals 0

    .line 150
    iput p1, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->maxHeaderCount:I

    return-void
.end method

.method public setMaxHeaderLen(I)V
    .locals 0

    .line 181
    iput p1, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->maxHeaderLen:I

    return-void
.end method

.method public setMaxLineLen(I)V
    .locals 0

    .line 124
    iput p1, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->maxLineLen:I

    return-void
.end method

.method public setStrictParsing(Z)V
    .locals 0

    .line 98
    iput-boolean p1, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->strictParsing:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[strict parsing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->strictParsing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", max line length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->maxLineLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", max header count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->maxHeaderCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", max content length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->maxContentLen:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", count line numbers: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->countLineNumbers:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
