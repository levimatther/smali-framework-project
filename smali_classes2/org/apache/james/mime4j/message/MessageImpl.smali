.class public Lorg/apache/james/mime4j/message/MessageImpl;
.super Lorg/apache/james/mime4j/message/AbstractMessage;
.source "MessageImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 57
    invoke-direct {p0}, Lorg/apache/james/mime4j/message/AbstractMessage;-><init>()V

    .line 58
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/MessageImpl;->obtainHeader()Lorg/apache/james/mime4j/dom/Header;

    move-result-object v0

    .line 59
    new-instance v1, Lorg/apache/james/mime4j/stream/RawField;

    const-string v2, "MIME-Version"

    const-string v3, "1.0"

    invoke-direct {v1, v2, v3}, Lorg/apache/james/mime4j/stream/RawField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    sget-object v2, Lorg/apache/james/mime4j/field/MimeVersionFieldLenientImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    sget-object v3, Lorg/apache/james/mime4j/codec/DecodeMonitor;->SILENT:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    invoke-interface {v2, v1, v3}, Lorg/apache/james/mime4j/dom/FieldParser;->parse(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Lorg/apache/james/mime4j/dom/field/ParsedField;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/james/mime4j/dom/Header;->addField(Lorg/apache/james/mime4j/stream/Field;)V

    return-void
.end method


# virtual methods
.method protected calcCharset(Lorg/apache/james/mime4j/dom/field/ContentTypeField;)Ljava/lang/String;
    .locals 0

    .line 138
    invoke-static {p1}, Lorg/apache/james/mime4j/field/ContentTypeFieldImpl;->getCharset(Lorg/apache/james/mime4j/dom/field/ContentTypeField;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected calcMimeType(Lorg/apache/james/mime4j/dom/field/ContentTypeField;Lorg/apache/james/mime4j/dom/field/ContentTypeField;)Ljava/lang/String;
    .locals 0

    .line 133
    invoke-static {p1, p2}, Lorg/apache/james/mime4j/field/ContentTypeFieldImpl;->getMimeType(Lorg/apache/james/mime4j/dom/field/ContentTypeField;Lorg/apache/james/mime4j/dom/field/ContentTypeField;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected calcTransferEncoding(Lorg/apache/james/mime4j/dom/field/ContentTransferEncodingField;)Ljava/lang/String;
    .locals 0

    .line 128
    invoke-static {p1}, Lorg/apache/james/mime4j/field/ContentTransferEncodingFieldImpl;->getEncoding(Lorg/apache/james/mime4j/dom/field/ContentTransferEncodingField;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected newAddressList(Ljava/lang/String;Ljava/util/Collection;)Lorg/apache/james/mime4j/dom/field/AddressListField;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/james/mime4j/dom/address/Address;",
            ">;)",
            "Lorg/apache/james/mime4j/dom/field/AddressListField;"
        }
    .end annotation

    .line 92
    invoke-static {p1, p2}, Lorg/apache/james/mime4j/field/Fields;->addressList(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/dom/field/AddressListField;

    move-result-object p1

    return-object p1
.end method

.method protected newContentDisposition(Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;Ljava/util/Date;Ljava/util/Date;)Lorg/apache/james/mime4j/dom/field/ContentDispositionField;
    .locals 0

    .line 104
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

    .line 111
    invoke-static {p1, p2}, Lorg/apache/james/mime4j/field/Fields;->contentDisposition(Ljava/lang/String;Ljava/util/Map;)Lorg/apache/james/mime4j/dom/field/ContentDispositionField;

    move-result-object p1

    return-object p1
.end method

.method protected newContentTransferEncoding(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/ContentTransferEncodingField;
    .locals 0

    .line 123
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

    .line 117
    invoke-static {p1, p2}, Lorg/apache/james/mime4j/field/Fields;->contentType(Ljava/lang/String;Ljava/util/Map;)Lorg/apache/james/mime4j/dom/field/ContentTypeField;

    move-result-object p1

    return-object p1
.end method

.method protected newDate(Ljava/util/Date;Ljava/util/TimeZone;)Lorg/apache/james/mime4j/dom/field/DateTimeField;
    .locals 1

    const-string v0, "Date"

    .line 75
    invoke-static {v0, p1, p2}, Lorg/apache/james/mime4j/field/Fields;->date(Ljava/lang/String;Ljava/util/Date;Ljava/util/TimeZone;)Lorg/apache/james/mime4j/dom/field/DateTimeField;

    move-result-object p1

    return-object p1
.end method

.method protected newMailbox(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/Mailbox;)Lorg/apache/james/mime4j/dom/field/MailboxField;
    .locals 0

    .line 80
    invoke-static {p1, p2}, Lorg/apache/james/mime4j/field/Fields;->mailbox(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/Mailbox;)Lorg/apache/james/mime4j/dom/field/MailboxField;

    move-result-object p1

    return-object p1
.end method

.method protected newMailboxList(Ljava/lang/String;Ljava/util/Collection;)Lorg/apache/james/mime4j/dom/field/MailboxListField;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lorg/apache/james/mime4j/dom/address/Mailbox;",
            ">;)",
            "Lorg/apache/james/mime4j/dom/field/MailboxListField;"
        }
    .end annotation

    .line 86
    invoke-static {p1, p2}, Lorg/apache/james/mime4j/field/Fields;->mailboxList(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/dom/field/MailboxListField;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic newMessageId(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/ParsedField;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/message/MessageImpl;->newMessageId(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/UnstructuredField;

    move-result-object p1

    return-object p1
.end method

.method protected newMessageId(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/UnstructuredField;
    .locals 0

    .line 70
    invoke-static {p1}, Lorg/apache/james/mime4j/field/Fields;->messageId(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/UnstructuredField;

    move-result-object p1

    return-object p1
.end method

.method protected newSubject(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/UnstructuredField;
    .locals 0

    .line 97
    invoke-static {p1}, Lorg/apache/james/mime4j/field/Fields;->subject(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/UnstructuredField;

    move-result-object p1

    return-object p1
.end method

.method protected newUniqueBoundary()Ljava/lang/String;
    .locals 1

    .line 65
    invoke-static {}, Lorg/apache/james/mime4j/util/MimeUtil;->createUniqueBoundary()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
