.class public abstract Lorg/apache/james/mime4j/message/AbstractMessage;
.super Lorg/apache/james/mime4j/message/AbstractEntity;
.source "AbstractMessage.java"

# interfaces
.implements Lorg/apache/james/mime4j/dom/Message;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lorg/apache/james/mime4j/message/AbstractEntity;-><init>()V

    return-void
.end method

.method private getAddressList(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/address/AddressList;
    .locals 0

    .line 466
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/message/AbstractMessage;->obtainField(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/ParsedField;

    move-result-object p1

    check-cast p1, Lorg/apache/james/mime4j/dom/field/AddressListField;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 470
    :cond_0
    invoke-interface {p1}, Lorg/apache/james/mime4j/dom/field/AddressListField;->getAddressList()Lorg/apache/james/mime4j/dom/address/AddressList;

    move-result-object p1

    return-object p1
.end method

.method private getMailbox(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/address/Mailbox;
    .locals 0

    .line 420
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/message/AbstractMessage;->obtainField(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/ParsedField;

    move-result-object p1

    check-cast p1, Lorg/apache/james/mime4j/dom/field/MailboxField;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 424
    :cond_0
    invoke-interface {p1}, Lorg/apache/james/mime4j/dom/field/MailboxField;->getMailbox()Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-result-object p1

    return-object p1
.end method

.method private getMailboxList(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/address/MailboxList;
    .locals 0

    .line 438
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/message/AbstractMessage;->obtainField(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/ParsedField;

    move-result-object p1

    check-cast p1, Lorg/apache/james/mime4j/dom/field/MailboxListField;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 442
    :cond_0
    invoke-interface {p1}, Lorg/apache/james/mime4j/dom/field/MailboxListField;->getMailboxList()Lorg/apache/james/mime4j/dom/address/MailboxList;

    move-result-object p1

    return-object p1
.end method

.method private setAddressList(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/james/mime4j/dom/address/Address;",
            ">;)V"
        }
    .end annotation

    .line 484
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/AbstractMessage;->obtainHeader()Lorg/apache/james/mime4j/dom/Header;

    move-result-object v0

    if-eqz p2, :cond_1

    .line 486
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 489
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/james/mime4j/message/AbstractMessage;->newAddressList(Ljava/lang/String;Ljava/util/Collection;)Lorg/apache/james/mime4j/dom/field/AddressListField;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/james/mime4j/dom/Header;->setField(Lorg/apache/james/mime4j/stream/Field;)V

    goto :goto_1

    .line 487
    :cond_1
    :goto_0
    invoke-interface {v0, p1}, Lorg/apache/james/mime4j/dom/Header;->removeFields(Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private setAddressList(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/Address;)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 474
    :cond_0
    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/message/AbstractMessage;->setAddressList(Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method

.method private varargs setAddressList(Ljava/lang/String;[Lorg/apache/james/mime4j/dom/address/Address;)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 479
    :cond_0
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/message/AbstractMessage;->setAddressList(Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method

.method private setMailbox(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/Mailbox;)V
    .locals 1

    .line 428
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/AbstractMessage;->obtainHeader()Lorg/apache/james/mime4j/dom/Header;

    move-result-object v0

    if-nez p2, :cond_0

    .line 431
    invoke-interface {v0, p1}, Lorg/apache/james/mime4j/dom/Header;->removeFields(Ljava/lang/String;)I

    goto :goto_0

    .line 433
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/james/mime4j/message/AbstractMessage;->newMailbox(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/Mailbox;)Lorg/apache/james/mime4j/dom/field/MailboxField;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/james/mime4j/dom/Header;->setField(Lorg/apache/james/mime4j/stream/Field;)V

    :goto_0
    return-void
.end method

.method private setMailboxList(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lorg/apache/james/mime4j/dom/address/Mailbox;",
            ">;)V"
        }
    .end annotation

    .line 456
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/AbstractMessage;->obtainHeader()Lorg/apache/james/mime4j/dom/Header;

    move-result-object v0

    if-eqz p2, :cond_1

    .line 458
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 461
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/james/mime4j/message/AbstractMessage;->newMailboxList(Ljava/lang/String;Ljava/util/Collection;)Lorg/apache/james/mime4j/dom/field/MailboxListField;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/james/mime4j/dom/Header;->setField(Lorg/apache/james/mime4j/stream/Field;)V

    goto :goto_1

    .line 459
    :cond_1
    :goto_0
    invoke-interface {v0, p1}, Lorg/apache/james/mime4j/dom/Header;->removeFields(Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private setMailboxList(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/Mailbox;)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 446
    :cond_0
    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/message/AbstractMessage;->setMailboxList(Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method

.method private varargs setMailboxList(Ljava/lang/String;[Lorg/apache/james/mime4j/dom/address/Mailbox;)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 451
    :cond_0
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/message/AbstractMessage;->setMailboxList(Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public createMessageId(Ljava/lang/String;)V
    .locals 1

    .line 72
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/AbstractMessage;->obtainHeader()Lorg/apache/james/mime4j/dom/Header;

    move-result-object v0

    .line 74
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/message/AbstractMessage;->newMessageId(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/ParsedField;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/james/mime4j/dom/Header;->setField(Lorg/apache/james/mime4j/stream/Field;)V

    return-void
.end method

.method public getBcc()Lorg/apache/james/mime4j/dom/address/AddressList;
    .locals 1

    const-string v0, "Bcc"

    .line 333
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/message/AbstractMessage;->getAddressList(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/address/AddressList;

    move-result-object v0

    return-object v0
.end method

.method public getCc()Lorg/apache/james/mime4j/dom/address/AddressList;
    .locals 1

    const-string v0, "Cc"

    .line 286
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/message/AbstractMessage;->getAddressList(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/address/AddressList;

    move-result-object v0

    return-object v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    const-string v0, "Date"

    .line 120
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/message/AbstractMessage;->obtainField(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/ParsedField;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/dom/field/DateTimeField;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 124
    :cond_0
    invoke-interface {v0}, Lorg/apache/james/mime4j/dom/field/DateTimeField;->getDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getFrom()Lorg/apache/james/mime4j/dom/address/MailboxList;
    .locals 1

    const-string v0, "From"

    .line 192
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/message/AbstractMessage;->getMailboxList(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/address/MailboxList;

    move-result-object v0

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    const-string v0, "Message-ID"

    .line 55
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/message/AbstractMessage;->obtainField(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/ParsedField;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 59
    :cond_0
    invoke-interface {v0}, Lorg/apache/james/mime4j/stream/Field;->getBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReplyTo()Lorg/apache/james/mime4j/dom/address/AddressList;
    .locals 1

    const-string v0, "Reply-To"

    .line 380
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/message/AbstractMessage;->getAddressList(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/address/AddressList;

    move-result-object v0

    return-object v0
.end method

.method public getSender()Lorg/apache/james/mime4j/dom/address/Mailbox;
    .locals 1

    const-string v0, "Sender"

    .line 169
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/message/AbstractMessage;->getMailbox(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-result-object v0

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    const-string v0, "Subject"

    .line 86
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/message/AbstractMessage;->obtainField(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/ParsedField;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/dom/field/UnstructuredField;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 90
    :cond_0
    invoke-interface {v0}, Lorg/apache/james/mime4j/dom/field/UnstructuredField;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTo()Lorg/apache/james/mime4j/dom/address/AddressList;
    .locals 1

    const-string v0, "To"

    .line 239
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/message/AbstractMessage;->getAddressList(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/address/AddressList;

    move-result-object v0

    return-object v0
.end method

.method protected abstract newAddressList(Ljava/lang/String;Ljava/util/Collection;)Lorg/apache/james/mime4j/dom/field/AddressListField;
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
.end method

.method protected abstract newDate(Ljava/util/Date;Ljava/util/TimeZone;)Lorg/apache/james/mime4j/dom/field/DateTimeField;
.end method

.method protected abstract newMailbox(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/Mailbox;)Lorg/apache/james/mime4j/dom/field/MailboxField;
.end method

.method protected abstract newMailboxList(Ljava/lang/String;Ljava/util/Collection;)Lorg/apache/james/mime4j/dom/field/MailboxListField;
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
.end method

.method protected abstract newMessageId(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/ParsedField;
.end method

.method protected abstract newSubject(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/UnstructuredField;
.end method

.method public setBcc(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/james/mime4j/dom/address/Address;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Bcc"

    .line 369
    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/message/AbstractMessage;->setAddressList(Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method

.method public setBcc(Lorg/apache/james/mime4j/dom/address/Address;)V
    .locals 1

    const-string v0, "Bcc"

    .line 345
    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/message/AbstractMessage;->setAddressList(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/Address;)V

    return-void
.end method

.method public varargs setBcc([Lorg/apache/james/mime4j/dom/address/Address;)V
    .locals 1

    const-string v0, "Bcc"

    .line 357
    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/message/AbstractMessage;->setAddressList(Ljava/lang/String;[Lorg/apache/james/mime4j/dom/address/Address;)V

    return-void
.end method

.method public setCc(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/james/mime4j/dom/address/Address;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Cc"

    .line 322
    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/message/AbstractMessage;->setAddressList(Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method

.method public setCc(Lorg/apache/james/mime4j/dom/address/Address;)V
    .locals 1

    const-string v0, "Cc"

    .line 298
    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/message/AbstractMessage;->setAddressList(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/Address;)V

    return-void
.end method

.method public varargs setCc([Lorg/apache/james/mime4j/dom/address/Address;)V
    .locals 1

    const-string v0, "Cc"

    .line 310
    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/message/AbstractMessage;->setAddressList(Ljava/lang/String;[Lorg/apache/james/mime4j/dom/address/Address;)V

    return-void
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 1

    const/4 v0, 0x0

    .line 137
    invoke-virtual {p0, p1, v0}, Lorg/apache/james/mime4j/message/AbstractMessage;->setDate(Ljava/util/Date;Ljava/util/TimeZone;)V

    return-void
.end method

.method public setDate(Ljava/util/Date;Ljava/util/TimeZone;)V
    .locals 1

    .line 152
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/AbstractMessage;->obtainHeader()Lorg/apache/james/mime4j/dom/Header;

    move-result-object v0

    if-nez p1, :cond_0

    const-string p1, "Date"

    .line 155
    invoke-interface {v0, p1}, Lorg/apache/james/mime4j/dom/Header;->removeFields(Ljava/lang/String;)I

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/james/mime4j/message/AbstractMessage;->newDate(Ljava/util/Date;Ljava/util/TimeZone;)Lorg/apache/james/mime4j/dom/field/DateTimeField;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/james/mime4j/dom/Header;->setField(Lorg/apache/james/mime4j/stream/Field;)V

    :goto_0
    return-void
.end method

.method public setFrom(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/james/mime4j/dom/address/Mailbox;",
            ">;)V"
        }
    .end annotation

    const-string v0, "From"

    .line 228
    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/message/AbstractMessage;->setMailboxList(Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method

.method public setFrom(Lorg/apache/james/mime4j/dom/address/Mailbox;)V
    .locals 1

    const-string v0, "From"

    .line 204
    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/message/AbstractMessage;->setMailboxList(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/Mailbox;)V

    return-void
.end method

.method public varargs setFrom([Lorg/apache/james/mime4j/dom/address/Mailbox;)V
    .locals 1

    const-string v0, "From"

    .line 216
    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/message/AbstractMessage;->setMailboxList(Ljava/lang/String;[Lorg/apache/james/mime4j/dom/address/Mailbox;)V

    return-void
.end method

.method public setReplyTo(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/james/mime4j/dom/address/Address;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Reply-To"

    .line 416
    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/message/AbstractMessage;->setAddressList(Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method

.method public setReplyTo(Lorg/apache/james/mime4j/dom/address/Address;)V
    .locals 1

    const-string v0, "Reply-To"

    .line 392
    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/message/AbstractMessage;->setAddressList(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/Address;)V

    return-void
.end method

.method public varargs setReplyTo([Lorg/apache/james/mime4j/dom/address/Address;)V
    .locals 1

    const-string v0, "Reply-To"

    .line 404
    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/message/AbstractMessage;->setAddressList(Ljava/lang/String;[Lorg/apache/james/mime4j/dom/address/Address;)V

    return-void
.end method

.method public setSender(Lorg/apache/james/mime4j/dom/address/Mailbox;)V
    .locals 1

    const-string v0, "Sender"

    .line 181
    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/message/AbstractMessage;->setMailbox(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/Mailbox;)V

    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 1

    .line 104
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/AbstractMessage;->obtainHeader()Lorg/apache/james/mime4j/dom/Header;

    move-result-object v0

    if-nez p1, :cond_0

    const-string p1, "Subject"

    .line 107
    invoke-interface {v0, p1}, Lorg/apache/james/mime4j/dom/Header;->removeFields(Ljava/lang/String;)I

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/message/AbstractMessage;->newSubject(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/UnstructuredField;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/james/mime4j/dom/Header;->setField(Lorg/apache/james/mime4j/stream/Field;)V

    :goto_0
    return-void
.end method

.method public setTo(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/james/mime4j/dom/address/Address;",
            ">;)V"
        }
    .end annotation

    const-string v0, "To"

    .line 275
    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/message/AbstractMessage;->setAddressList(Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method

.method public setTo(Lorg/apache/james/mime4j/dom/address/Address;)V
    .locals 1

    const-string v0, "To"

    .line 251
    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/message/AbstractMessage;->setAddressList(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/Address;)V

    return-void
.end method

.method public varargs setTo([Lorg/apache/james/mime4j/dom/address/Address;)V
    .locals 1

    const-string v0, "To"

    .line 263
    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/message/AbstractMessage;->setAddressList(Ljava/lang/String;[Lorg/apache/james/mime4j/dom/address/Address;)V

    return-void
.end method
