.class public interface abstract Lorg/apache/james/mime4j/dom/MessageWriter;
.super Ljava/lang/Object;
.source "MessageWriter.java"


# virtual methods
.method public abstract writeBody(Lorg/apache/james/mime4j/dom/Body;Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeEntity(Lorg/apache/james/mime4j/dom/Entity;Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeField(Lorg/apache/james/mime4j/stream/Field;Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeHeader(Lorg/apache/james/mime4j/dom/Header;Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeMessage(Lorg/apache/james/mime4j/dom/Message;Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeMultipart(Lorg/apache/james/mime4j/dom/Multipart;Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
