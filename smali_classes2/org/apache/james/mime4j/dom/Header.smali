.class public interface abstract Lorg/apache/james/mime4j/dom/Header;
.super Ljava/lang/Object;
.source "Header.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/apache/james/mime4j/stream/Field;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract addField(Lorg/apache/james/mime4j/stream/Field;)V
.end method

.method public abstract getField(Ljava/lang/String;)Lorg/apache/james/mime4j/stream/Field;
.end method

.method public abstract getFields()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/james/mime4j/stream/Field;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFields(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/james/mime4j/stream/Field;",
            ">;"
        }
    .end annotation
.end method

.method public abstract iterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/james/mime4j/stream/Field;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeFields(Ljava/lang/String;)I
.end method

.method public abstract setField(Lorg/apache/james/mime4j/stream/Field;)V
.end method
