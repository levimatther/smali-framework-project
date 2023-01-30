.class public interface abstract Lorg/apache/james/mime4j/dom/FieldParser;
.super Ljava/lang/Object;
.source "FieldParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/james/mime4j/dom/field/ParsedField;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract parse(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Lorg/apache/james/mime4j/dom/field/ParsedField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/james/mime4j/stream/Field;",
            "Lorg/apache/james/mime4j/codec/DecodeMonitor;",
            ")TT;"
        }
    .end annotation
.end method
