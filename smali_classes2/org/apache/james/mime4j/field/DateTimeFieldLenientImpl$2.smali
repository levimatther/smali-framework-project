.class final Lorg/apache/james/mime4j/field/DateTimeFieldLenientImpl$2;
.super Ljava/lang/Object;
.source "DateTimeFieldLenientImpl.java"

# interfaces
.implements Lorg/apache/james/mime4j/dom/FieldParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/james/mime4j/field/DateTimeFieldLenientImpl;->createParser(Ljava/util/Collection;)Lorg/apache/james/mime4j/dom/FieldParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/james/mime4j/dom/FieldParser<",
        "Lorg/apache/james/mime4j/dom/field/DateTimeField;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$dateParsers:Ljava/util/Collection;


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lorg/apache/james/mime4j/field/DateTimeFieldLenientImpl$2;->val$dateParsers:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Lorg/apache/james/mime4j/dom/field/DateTimeField;
    .locals 2

    .line 99
    new-instance v0, Lorg/apache/james/mime4j/field/DateTimeFieldLenientImpl;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/DateTimeFieldLenientImpl$2;->val$dateParsers:Ljava/util/Collection;

    invoke-direct {v0, p1, v1, p2}, Lorg/apache/james/mime4j/field/DateTimeFieldLenientImpl;-><init>(Lorg/apache/james/mime4j/stream/Field;Ljava/util/Collection;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V

    return-object v0
.end method

.method public bridge synthetic parse(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Lorg/apache/james/mime4j/dom/field/ParsedField;
    .locals 0

    .line 96
    invoke-virtual {p0, p1, p2}, Lorg/apache/james/mime4j/field/DateTimeFieldLenientImpl$2;->parse(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Lorg/apache/james/mime4j/dom/field/DateTimeField;

    move-result-object p1

    return-object p1
.end method
