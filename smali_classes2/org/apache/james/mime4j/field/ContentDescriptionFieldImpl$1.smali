.class final Lorg/apache/james/mime4j/field/ContentDescriptionFieldImpl$1;
.super Ljava/lang/Object;
.source "ContentDescriptionFieldImpl.java"

# interfaces
.implements Lorg/apache/james/mime4j/dom/FieldParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/james/mime4j/field/ContentDescriptionFieldImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/james/mime4j/dom/FieldParser<",
        "Lorg/apache/james/mime4j/dom/field/ContentDescriptionField;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Lorg/apache/james/mime4j/dom/field/ContentDescriptionField;
    .locals 1

    .line 59
    new-instance v0, Lorg/apache/james/mime4j/field/ContentDescriptionFieldImpl;

    invoke-direct {v0, p1, p2}, Lorg/apache/james/mime4j/field/ContentDescriptionFieldImpl;-><init>(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V

    return-object v0
.end method

.method public bridge synthetic parse(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Lorg/apache/james/mime4j/dom/field/ParsedField;
    .locals 0

    .line 56
    invoke-virtual {p0, p1, p2}, Lorg/apache/james/mime4j/field/ContentDescriptionFieldImpl$1;->parse(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Lorg/apache/james/mime4j/dom/field/ContentDescriptionField;

    move-result-object p1

    return-object p1
.end method
