.class public interface abstract Lorg/apache/james/mime4j/dom/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Lorg/apache/james/mime4j/dom/Entity;
.implements Lorg/apache/james/mime4j/dom/Body;


# virtual methods
.method public abstract createMessageId(Ljava/lang/String;)V
.end method

.method public abstract getBcc()Lorg/apache/james/mime4j/dom/address/AddressList;
.end method

.method public abstract getCc()Lorg/apache/james/mime4j/dom/address/AddressList;
.end method

.method public abstract getDate()Ljava/util/Date;
.end method

.method public abstract getFrom()Lorg/apache/james/mime4j/dom/address/MailboxList;
.end method

.method public abstract getMessageId()Ljava/lang/String;
.end method

.method public abstract getReplyTo()Lorg/apache/james/mime4j/dom/address/AddressList;
.end method

.method public abstract getSender()Lorg/apache/james/mime4j/dom/address/Mailbox;
.end method

.method public abstract getSubject()Ljava/lang/String;
.end method

.method public abstract getTo()Lorg/apache/james/mime4j/dom/address/AddressList;
.end method

.method public abstract setBcc(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/james/mime4j/dom/address/Address;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setBcc(Lorg/apache/james/mime4j/dom/address/Address;)V
.end method

.method public varargs abstract setBcc([Lorg/apache/james/mime4j/dom/address/Address;)V
.end method

.method public abstract setCc(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/james/mime4j/dom/address/Address;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setCc(Lorg/apache/james/mime4j/dom/address/Address;)V
.end method

.method public varargs abstract setCc([Lorg/apache/james/mime4j/dom/address/Address;)V
.end method

.method public abstract setDate(Ljava/util/Date;)V
.end method

.method public abstract setDate(Ljava/util/Date;Ljava/util/TimeZone;)V
.end method

.method public abstract setFrom(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/james/mime4j/dom/address/Mailbox;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setFrom(Lorg/apache/james/mime4j/dom/address/Mailbox;)V
.end method

.method public varargs abstract setFrom([Lorg/apache/james/mime4j/dom/address/Mailbox;)V
.end method

.method public abstract setReplyTo(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/james/mime4j/dom/address/Address;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setReplyTo(Lorg/apache/james/mime4j/dom/address/Address;)V
.end method

.method public varargs abstract setReplyTo([Lorg/apache/james/mime4j/dom/address/Address;)V
.end method

.method public abstract setSender(Lorg/apache/james/mime4j/dom/address/Mailbox;)V
.end method

.method public abstract setSubject(Ljava/lang/String;)V
.end method

.method public abstract setTo(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/james/mime4j/dom/address/Address;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setTo(Lorg/apache/james/mime4j/dom/address/Address;)V
.end method

.method public varargs abstract setTo([Lorg/apache/james/mime4j/dom/address/Address;)V
.end method
