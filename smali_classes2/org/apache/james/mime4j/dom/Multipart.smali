.class public interface abstract Lorg/apache/james/mime4j/dom/Multipart;
.super Ljava/lang/Object;
.source "Multipart.java"

# interfaces
.implements Lorg/apache/james/mime4j/dom/Body;


# virtual methods
.method public abstract addBodyPart(Lorg/apache/james/mime4j/dom/Entity;)V
.end method

.method public abstract addBodyPart(Lorg/apache/james/mime4j/dom/Entity;I)V
.end method

.method public abstract getBodyParts()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/james/mime4j/dom/Entity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCount()I
.end method

.method public abstract getEpilogue()Ljava/lang/String;
.end method

.method public abstract getPreamble()Ljava/lang/String;
.end method

.method public abstract getSubType()Ljava/lang/String;
.end method

.method public abstract removeBodyPart(I)Lorg/apache/james/mime4j/dom/Entity;
.end method

.method public abstract replaceBodyPart(Lorg/apache/james/mime4j/dom/Entity;I)Lorg/apache/james/mime4j/dom/Entity;
.end method

.method public abstract setBodyParts(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/james/mime4j/dom/Entity;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setEpilogue(Ljava/lang/String;)V
.end method

.method public abstract setPreamble(Ljava/lang/String;)V
.end method
