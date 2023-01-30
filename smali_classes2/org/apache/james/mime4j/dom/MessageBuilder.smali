.class public interface abstract Lorg/apache/james/mime4j/dom/MessageBuilder;
.super Ljava/lang/Object;
.source "MessageBuilder.java"


# virtual methods
.method public abstract newHeader()Lorg/apache/james/mime4j/dom/Header;
.end method

.method public abstract newHeader(Lorg/apache/james/mime4j/dom/Header;)Lorg/apache/james/mime4j/dom/Header;
.end method

.method public abstract newMessage()Lorg/apache/james/mime4j/dom/Message;
.end method

.method public abstract newMessage(Lorg/apache/james/mime4j/dom/Message;)Lorg/apache/james/mime4j/dom/Message;
.end method

.method public abstract newMultipart(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/Multipart;
.end method

.method public abstract newMultipart(Lorg/apache/james/mime4j/dom/Multipart;)Lorg/apache/james/mime4j/dom/Multipart;
.end method

.method public abstract parseHeader(Ljava/io/InputStream;)Lorg/apache/james/mime4j/dom/Header;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract parseMessage(Ljava/io/InputStream;)Lorg/apache/james/mime4j/dom/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
