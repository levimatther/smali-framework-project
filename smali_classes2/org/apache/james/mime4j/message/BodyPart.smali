.class public Lorg/apache/james/mime4j/message/BodyPart;
.super Lorg/apache/james/mime4j/message/AbstractEntity;
.source "BodyPart.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lorg/apache/james/mime4j/message/AbstractEntity;-><init>()V

    return-void
.end method


# virtual methods
.method protected calcCharset(Lorg/apache/james/mime4j/dom/field/ContentTypeField;)Ljava/lang/String;
    .locals 0

    .line 87
    invoke-static {p1}, Lorg/apache/james/mime4j/field/ContentTypeFieldImpl;->getCharset(Lorg/apache/james/mime4j/dom/field/ContentTypeField;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected calcMimeType(Lorg/apache/james/mime4j/dom/field/ContentTypeField;Lorg/apache/james/mime4j/dom/field/ContentTypeField;)Ljava/lang/String;
    .locals 0

    .line 82
    invoke-static {p1, p2}, Lorg/apache/james/mime4j/field/ContentTypeFieldImpl;->getMimeType(Lorg/apache/james/mime4j/dom/field/ContentTypeField;Lorg/apache/james/mime4j/dom/field/ContentTypeField;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected calcTransferEncoding(Lorg/apache/james/mime4j/dom/field/ContentTransferEncodingField;)Ljava/lang/String;
    .locals 0

    .line 77
    invoke-static {p1}, Lorg/apache/james/mime4j/field/ContentTransferEncodingFieldImpl;->getEncoding(Lorg/apache/james/mime4j/dom/field/ContentTransferEncodingField;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected newContentDisposition(Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;Ljava/util/Date;Ljava/util/Date;)Lorg/apache/james/mime4j/dom/field/ContentDispositionField;
    .locals 0

    .line 53
    invoke-static/range {p1 .. p7}, Lorg/apache/james/mime4j/field/Fields;->contentDisposition(Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;Ljava/util/Date;Ljava/util/Date;)Lorg/apache/james/mime4j/dom/field/ContentDispositionField;

    move-result-object p1

    return-object p1
.end method

.method protected newContentDisposition(Ljava/lang/String;Ljava/util/Map;)Lorg/apache/james/mime4j/dom/field/ContentDispositionField;
    .locals 0
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

    .line 60
    invoke-static {p1, p2}, Lorg/apache/james/mime4j/field/Fields;->contentDisposition(Ljava/lang/String;Ljava/util/Map;)Lorg/apache/james/mime4j/dom/field/ContentDispositionField;

    move-result-object p1

    return-object p1
.end method

.method protected newContentTransferEncoding(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/ContentTransferEncodingField;
    .locals 0

    .line 72
    invoke-static {p1}, Lorg/apache/james/mime4j/field/Fields;->contentTransferEncoding(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/ContentTransferEncodingField;

    move-result-object p1

    return-object p1
.end method

.method protected newContentType(Ljava/lang/String;Ljava/util/Map;)Lorg/apache/james/mime4j/dom/field/ContentTypeField;
    .locals 0
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

    .line 66
    invoke-static {p1, p2}, Lorg/apache/james/mime4j/field/Fields;->contentType(Ljava/lang/String;Ljava/util/Map;)Lorg/apache/james/mime4j/dom/field/ContentTypeField;

    move-result-object p1

    return-object p1
.end method

.method protected newUniqueBoundary()Ljava/lang/String;
    .locals 1

    .line 46
    invoke-static {}, Lorg/apache/james/mime4j/util/MimeUtil;->createUniqueBoundary()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
