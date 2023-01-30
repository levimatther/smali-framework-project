.class public abstract Lorg/apache/james/mime4j/message/AbstractEntity;
.super Ljava/lang/Object;
.source "AbstractEntity.java"

# interfaces
.implements Lorg/apache/james/mime4j/dom/Entity;


# instance fields
.field private body:Lorg/apache/james/mime4j/dom/Body;

.field private header:Lorg/apache/james/mime4j/dom/Header;

.field private parent:Lorg/apache/james/mime4j/dom/Entity;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lorg/apache/james/mime4j/message/AbstractEntity;->header:Lorg/apache/james/mime4j/dom/Header;

    .line 45
    iput-object v0, p0, Lorg/apache/james/mime4j/message/AbstractEntity;->body:Lorg/apache/james/mime4j/dom/Body;

    .line 46
    iput-object v0, p0, Lorg/apache/james/mime4j/message/AbstractEntity;->parent:Lorg/apache/james/mime4j/dom/Entity;

    return-void
.end method

.method private getContentTypeField()Lorg/apache/james/mime4j/dom/field/ContentTypeField;
    .locals 2

    .line 276
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/AbstractEntity;->getHeader()Lorg/apache/james/mime4j/dom/Header;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-interface {v0, v1}, Lorg/apache/james/mime4j/dom/Header;->getField(Ljava/lang/String;)Lorg/apache/james/mime4j/stream/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/dom/field/ContentTypeField;

    return-object v0
.end method


# virtual methods
.method protected abstract calcCharset(Lorg/apache/james/mime4j/dom/field/ContentTypeField;)Ljava/lang/String;
.end method

.method protected abstract calcMimeType(Lorg/apache/james/mime4j/dom/field/ContentTypeField;Lorg/apache/james/mime4j/dom/field/ContentTypeField;)Ljava/lang/String;
.end method

.method protected abstract calcTransferEncoding(Lorg/apache/james/mime4j/dom/field/ContentTransferEncodingField;)Ljava/lang/String;
.end method

.method public dispose()V
    .locals 1

    .line 498
    iget-object v0, p0, Lorg/apache/james/mime4j/message/AbstractEntity;->body:Lorg/apache/james/mime4j/dom/Body;

    if-eqz v0, :cond_0

    .line 499
    invoke-interface {v0}, Lorg/apache/james/mime4j/dom/Body;->dispose()V

    :cond_0
    return-void
.end method

.method public getBody()Lorg/apache/james/mime4j/dom/Body;
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/apache/james/mime4j/message/AbstractEntity;->body:Lorg/apache/james/mime4j/dom/Body;

    return-object v0
.end method

.method public getCharset()Ljava/lang/String;
    .locals 2

    .line 285
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/AbstractEntity;->getHeader()Lorg/apache/james/mime4j/dom/Header;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-interface {v0, v1}, Lorg/apache/james/mime4j/dom/Header;->getField(Ljava/lang/String;)Lorg/apache/james/mime4j/stream/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/dom/field/ContentTypeField;

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/message/AbstractEntity;->calcCharset(Lorg/apache/james/mime4j/dom/field/ContentTypeField;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentTransferEncoding()Ljava/lang/String;
    .locals 2

    .line 294
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/AbstractEntity;->getHeader()Lorg/apache/james/mime4j/dom/Header;

    move-result-object v0

    const-string v1, "Content-Transfer-Encoding"

    invoke-interface {v0, v1}, Lorg/apache/james/mime4j/dom/Header;->getField(Ljava/lang/String;)Lorg/apache/james/mime4j/stream/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/dom/field/ContentTransferEncodingField;

    .line 297
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/message/AbstractEntity;->calcTransferEncoding(Lorg/apache/james/mime4j/dom/field/ContentTransferEncodingField;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDispositionType()Ljava/lang/String;
    .locals 1

    const-string v0, "Content-Disposition"

    .line 320
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/message/AbstractEntity;->obtainField(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/ParsedField;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/dom/field/ContentDispositionField;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 324
    :cond_0
    invoke-interface {v0}, Lorg/apache/james/mime4j/dom/field/ContentDispositionField;->getDispositionType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    const-string v0, "Content-Disposition"

    .line 420
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/message/AbstractEntity;->obtainField(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/ParsedField;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/dom/field/ContentDispositionField;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 424
    :cond_0
    invoke-interface {v0}, Lorg/apache/james/mime4j/dom/field/ContentDispositionField;->getFilename()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeader()Lorg/apache/james/mime4j/dom/Header;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/apache/james/mime4j/message/AbstractEntity;->header:Lorg/apache/james/mime4j/dom/Header;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 3

    .line 265
    invoke-direct {p0}, Lorg/apache/james/mime4j/message/AbstractEntity;->getContentTypeField()Lorg/apache/james/mime4j/dom/field/ContentTypeField;

    move-result-object v0

    .line 267
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/AbstractEntity;->getParent()Lorg/apache/james/mime4j/dom/Entity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/AbstractEntity;->getParent()Lorg/apache/james/mime4j/dom/Entity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/james/mime4j/dom/Entity;->getHeader()Lorg/apache/james/mime4j/dom/Header;

    move-result-object v1

    const-string v2, "Content-Type"

    invoke-interface {v1, v2}, Lorg/apache/james/mime4j/dom/Header;->getField(Ljava/lang/String;)Lorg/apache/james/mime4j/stream/Field;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/dom/field/ContentTypeField;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 272
    :goto_0
    invoke-virtual {p0, v0, v1}, Lorg/apache/james/mime4j/message/AbstractEntity;->calcMimeType(Lorg/apache/james/mime4j/dom/field/ContentTypeField;Lorg/apache/james/mime4j/dom/field/ContentTypeField;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lorg/apache/james/mime4j/dom/Entity;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/apache/james/mime4j/message/AbstractEntity;->parent:Lorg/apache/james/mime4j/dom/Entity;

    return-object v0
.end method

.method public isMimeType(Ljava/lang/String;)Z
    .locals 1

    .line 469
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/AbstractEntity;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isMultipart()Z
    .locals 2

    .line 481
    invoke-direct {p0}, Lorg/apache/james/mime4j/message/AbstractEntity;->getContentTypeField()Lorg/apache/james/mime4j/dom/field/ContentTypeField;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 482
    invoke-interface {v0}, Lorg/apache/james/mime4j/dom/field/ContentTypeField;->getBoundary()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/AbstractEntity;->getMimeType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "multipart/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected abstract newContentDisposition(Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;Ljava/util/Date;Ljava/util/Date;)Lorg/apache/james/mime4j/dom/field/ContentDispositionField;
.end method

.method protected abstract newContentDisposition(Ljava/lang/String;Ljava/util/Map;)Lorg/apache/james/mime4j/dom/field/ContentDispositionField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/james/mime4j/dom/field/ContentDispositionField;"
        }
    .end annotation
.end method

.method protected abstract newContentTransferEncoding(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/ContentTransferEncodingField;
.end method

.method protected abstract newContentType(Ljava/lang/String;Ljava/util/Map;)Lorg/apache/james/mime4j/dom/field/ContentTypeField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/james/mime4j/dom/field/ContentTypeField;"
        }
    .end annotation
.end method

.method protected abstract newUniqueBoundary()Ljava/lang/String;
.end method

.method obtainField(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/ParsedField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F::",
            "Lorg/apache/james/mime4j/dom/field/ParsedField;",
            ">(",
            "Ljava/lang/String;",
            ")TF;"
        }
    .end annotation

    .line 527
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/AbstractEntity;->getHeader()Lorg/apache/james/mime4j/dom/Header;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 532
    :cond_0
    invoke-interface {v0, p1}, Lorg/apache/james/mime4j/dom/Header;->getField(Ljava/lang/String;)Lorg/apache/james/mime4j/stream/Field;

    move-result-object p1

    check-cast p1, Lorg/apache/james/mime4j/dom/field/ParsedField;

    return-object p1
.end method

.method obtainHeader()Lorg/apache/james/mime4j/dom/Header;
    .locals 1

    .line 510
    iget-object v0, p0, Lorg/apache/james/mime4j/message/AbstractEntity;->header:Lorg/apache/james/mime4j/dom/Header;

    if-nez v0, :cond_0

    .line 511
    new-instance v0, Lorg/apache/james/mime4j/message/HeaderImpl;

    invoke-direct {v0}, Lorg/apache/james/mime4j/message/HeaderImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/message/AbstractEntity;->header:Lorg/apache/james/mime4j/dom/Header;

    .line 513
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/message/AbstractEntity;->header:Lorg/apache/james/mime4j/dom/Header;

    return-object v0
.end method

.method public removeBody()Lorg/apache/james/mime4j/dom/Body;
    .locals 2

    .line 124
    iget-object v0, p0, Lorg/apache/james/mime4j/message/AbstractEntity;->body:Lorg/apache/james/mime4j/dom/Body;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 128
    :cond_0
    iput-object v1, p0, Lorg/apache/james/mime4j/message/AbstractEntity;->body:Lorg/apache/james/mime4j/dom/Body;

    .line 129
    invoke-interface {v0, v1}, Lorg/apache/james/mime4j/dom/Body;->setParent(Lorg/apache/james/mime4j/dom/Entity;)V

    return-object v0
.end method

.method public setBody(Lorg/apache/james/mime4j/dom/Body;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/apache/james/mime4j/message/AbstractEntity;->body:Lorg/apache/james/mime4j/dom/Body;

    if-nez v0, :cond_0

    .line 112
    iput-object p1, p0, Lorg/apache/james/mime4j/message/AbstractEntity;->body:Lorg/apache/james/mime4j/dom/Body;

    .line 113
    invoke-interface {p1, p0}, Lorg/apache/james/mime4j/dom/Body;->setParent(Lorg/apache/james/mime4j/dom/Entity;)V

    return-void

    .line 110
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "body already set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBody(Lorg/apache/james/mime4j/dom/Body;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 233
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/james/mime4j/message/AbstractEntity;->setBody(Lorg/apache/james/mime4j/dom/Body;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public setBody(Lorg/apache/james/mime4j/dom/Body;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/james/mime4j/dom/Body;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 251
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/message/AbstractEntity;->setBody(Lorg/apache/james/mime4j/dom/Body;)V

    .line 253
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/AbstractEntity;->obtainHeader()Lorg/apache/james/mime4j/dom/Header;

    move-result-object p1

    .line 254
    invoke-virtual {p0, p2, p3}, Lorg/apache/james/mime4j/message/AbstractEntity;->newContentType(Ljava/lang/String;Ljava/util/Map;)Lorg/apache/james/mime4j/dom/field/ContentTypeField;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/apache/james/mime4j/dom/Header;->setField(Lorg/apache/james/mime4j/stream/Field;)V

    return-void
.end method

.method public setContentDisposition(Ljava/lang/String;)V
    .locals 9

    .line 337
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/AbstractEntity;->obtainHeader()Lorg/apache/james/mime4j/dom/Header;

    move-result-object v0

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 338
    invoke-virtual/range {v1 .. v8}, Lorg/apache/james/mime4j/message/AbstractEntity;->newContentDisposition(Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;Ljava/util/Date;Ljava/util/Date;)Lorg/apache/james/mime4j/dom/field/ContentDispositionField;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/james/mime4j/dom/Header;->setField(Lorg/apache/james/mime4j/stream/Field;)V

    return-void
.end method

.method public setContentDisposition(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 355
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/AbstractEntity;->obtainHeader()Lorg/apache/james/mime4j/dom/Header;

    move-result-object v0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 356
    invoke-virtual/range {v1 .. v8}, Lorg/apache/james/mime4j/message/AbstractEntity;->newContentDisposition(Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;Ljava/util/Date;Ljava/util/Date;)Lorg/apache/james/mime4j/dom/field/ContentDispositionField;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/james/mime4j/dom/Header;->setField(Lorg/apache/james/mime4j/stream/Field;)V

    return-void
.end method

.method public setContentDisposition(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9

    .line 377
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/AbstractEntity;->obtainHeader()Lorg/apache/james/mime4j/dom/Header;

    move-result-object v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    .line 378
    invoke-virtual/range {v1 .. v8}, Lorg/apache/james/mime4j/message/AbstractEntity;->newContentDisposition(Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;Ljava/util/Date;Ljava/util/Date;)Lorg/apache/james/mime4j/dom/field/ContentDispositionField;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/james/mime4j/dom/Header;->setField(Lorg/apache/james/mime4j/stream/Field;)V

    return-void
.end method

.method public setContentDisposition(Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;Ljava/util/Date;Ljava/util/Date;)V
    .locals 1

    .line 407
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/AbstractEntity;->obtainHeader()Lorg/apache/james/mime4j/dom/Header;

    move-result-object v0

    .line 408
    invoke-virtual/range {p0 .. p7}, Lorg/apache/james/mime4j/message/AbstractEntity;->newContentDisposition(Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;Ljava/util/Date;Ljava/util/Date;)Lorg/apache/james/mime4j/dom/field/ContentDispositionField;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/james/mime4j/dom/Header;->setField(Lorg/apache/james/mime4j/stream/Field;)V

    return-void
.end method

.method public setContentTransferEncoding(Ljava/lang/String;)V
    .locals 1

    .line 308
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/AbstractEntity;->obtainHeader()Lorg/apache/james/mime4j/dom/Header;

    move-result-object v0

    .line 309
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/message/AbstractEntity;->newContentTransferEncoding(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/ContentTransferEncodingField;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/james/mime4j/dom/Header;->setField(Lorg/apache/james/mime4j/stream/Field;)V

    return-void
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 10

    .line 438
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/AbstractEntity;->obtainHeader()Lorg/apache/james/mime4j/dom/Header;

    move-result-object v0

    const-string v1, "Content-Disposition"

    .line 439
    invoke-interface {v0, v1}, Lorg/apache/james/mime4j/dom/Header;->getField(Ljava/lang/String;)Lorg/apache/james/mime4j/stream/Field;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/dom/field/ContentDispositionField;

    if-nez v1, :cond_0

    if-eqz p1, :cond_2

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v3, "attachment"

    move-object v2, p0

    move-object v4, p1

    .line 443
    invoke-virtual/range {v2 .. v9}, Lorg/apache/james/mime4j/message/AbstractEntity;->newContentDisposition(Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;Ljava/util/Date;Ljava/util/Date;)Lorg/apache/james/mime4j/dom/field/ContentDispositionField;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/james/mime4j/dom/Header;->setField(Lorg/apache/james/mime4j/stream/Field;)V

    goto :goto_1

    .line 448
    :cond_0
    invoke-interface {v1}, Lorg/apache/james/mime4j/dom/field/ContentDispositionField;->getDispositionType()Ljava/lang/String;

    move-result-object v2

    .line 449
    new-instance v3, Ljava/util/HashMap;

    invoke-interface {v1}, Lorg/apache/james/mime4j/dom/field/ContentDispositionField;->getParameters()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v1, "filename"

    if-nez p1, :cond_1

    .line 452
    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 454
    :cond_1
    invoke-interface {v3, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    :goto_0
    invoke-virtual {p0, v2, v3}, Lorg/apache/james/mime4j/message/AbstractEntity;->newContentDisposition(Ljava/lang/String;Ljava/util/Map;)Lorg/apache/james/mime4j/dom/field/ContentDispositionField;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/james/mime4j/dom/Header;->setField(Lorg/apache/james/mime4j/stream/Field;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setHeader(Lorg/apache/james/mime4j/dom/Header;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lorg/apache/james/mime4j/message/AbstractEntity;->header:Lorg/apache/james/mime4j/dom/Header;

    return-void
.end method

.method public setMessage(Lorg/apache/james/mime4j/dom/Message;)V
    .locals 2

    const-string v0, "message/rfc822"

    const/4 v1, 0x0

    .line 143
    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/james/mime4j/message/AbstractEntity;->setBody(Lorg/apache/james/mime4j/dom/Body;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public setMultipart(Lorg/apache/james/mime4j/dom/Multipart;)V
    .locals 3

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "multipart/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/apache/james/mime4j/dom/Multipart;->getSubType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/AbstractEntity;->newUniqueBoundary()Ljava/lang/String;

    move-result-object v1

    const-string v2, "boundary"

    invoke-static {v2, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 160
    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/james/mime4j/message/AbstractEntity;->setBody(Lorg/apache/james/mime4j/dom/Body;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public setMultipart(Lorg/apache/james/mime4j/dom/Multipart;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/james/mime4j/dom/Multipart;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "multipart/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/apache/james/mime4j/dom/Multipart;->getSubType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "boundary"

    .line 176
    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 177
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 178
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/AbstractEntity;->newUniqueBoundary()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v2, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p2, v2

    .line 181
    :cond_0
    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/james/mime4j/message/AbstractEntity;->setBody(Lorg/apache/james/mime4j/dom/Body;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public setParent(Lorg/apache/james/mime4j/dom/Entity;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lorg/apache/james/mime4j/message/AbstractEntity;->parent:Lorg/apache/james/mime4j/dom/Entity;

    return-void
.end method

.method public setText(Lorg/apache/james/mime4j/dom/TextBody;)V
    .locals 1

    const-string v0, "plain"

    .line 194
    invoke-virtual {p0, p1, v0}, Lorg/apache/james/mime4j/message/AbstractEntity;->setText(Lorg/apache/james/mime4j/dom/TextBody;Ljava/lang/String;)V

    return-void
.end method

.method public setText(Lorg/apache/james/mime4j/dom/TextBody;Ljava/lang/String;)V
    .locals 2

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "text/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 213
    invoke-virtual {p1}, Lorg/apache/james/mime4j/dom/TextBody;->getMimeCharset()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "us-ascii"

    .line 214
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "charset"

    .line 215
    invoke-static {v1, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 218
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/james/mime4j/message/AbstractEntity;->setBody(Lorg/apache/james/mime4j/dom/Body;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
