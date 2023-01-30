.class public interface abstract Lorg/apache/james/mime4j/stream/FieldBuilder;
.super Ljava/lang/Object;
.source "FieldBuilder.java"


# virtual methods
.method public abstract append(Lorg/apache/james/mime4j/util/ByteArrayBuffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation
.end method

.method public abstract build()Lorg/apache/james/mime4j/stream/RawField;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation
.end method

.method public abstract getRaw()Lorg/apache/james/mime4j/util/ByteArrayBuffer;
.end method

.method public abstract reset()V
.end method
