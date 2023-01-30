.class public interface abstract Lorg/apache/james/mime4j/stream/EntityStateMachine;
.super Ljava/lang/Object;
.source "EntityStateMachine.java"


# virtual methods
.method public abstract advance()Lorg/apache/james/mime4j/stream/EntityStateMachine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation
.end method

.method public abstract getBodyDescriptor()Lorg/apache/james/mime4j/stream/BodyDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract getContentStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract getDecodedContentStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract getField()Lorg/apache/james/mime4j/stream/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract getState()Lorg/apache/james/mime4j/stream/EntityState;
.end method

.method public abstract setRecursionMode(Lorg/apache/james/mime4j/stream/RecursionMode;)V
.end method
