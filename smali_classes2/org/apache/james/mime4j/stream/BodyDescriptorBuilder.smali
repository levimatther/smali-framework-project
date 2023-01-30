.class public interface abstract Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;
.super Ljava/lang/Object;
.source "BodyDescriptorBuilder.java"


# virtual methods
.method public abstract addField(Lorg/apache/james/mime4j/stream/RawField;)Lorg/apache/james/mime4j/stream/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation
.end method

.method public abstract build()Lorg/apache/james/mime4j/stream/BodyDescriptor;
.end method

.method public abstract newChild()Lorg/apache/james/mime4j/stream/BodyDescriptorBuilder;
.end method

.method public abstract reset()V
.end method
