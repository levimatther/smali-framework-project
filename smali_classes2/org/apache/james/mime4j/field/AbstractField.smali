.class public abstract Lorg/apache/james/mime4j/field/AbstractField;
.super Ljava/lang/Object;
.source "AbstractField.java"

# interfaces
.implements Lorg/apache/james/mime4j/dom/field/ParsedField;


# instance fields
.field protected final monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

.field protected final rawField:Lorg/apache/james/mime4j/stream/Field;


# direct methods
.method protected constructor <init>(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/apache/james/mime4j/field/AbstractField;->rawField:Lorg/apache/james/mime4j/stream/Field;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    sget-object p2, Lorg/apache/james/mime4j/codec/DecodeMonitor;->SILENT:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    :goto_0
    iput-object p2, p0, Lorg/apache/james/mime4j/field/AbstractField;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/apache/james/mime4j/field/AbstractField;->rawField:Lorg/apache/james/mime4j/stream/Field;

    invoke-interface {v0}, Lorg/apache/james/mime4j/stream/Field;->getBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/apache/james/mime4j/field/AbstractField;->rawField:Lorg/apache/james/mime4j/stream/Field;

    invoke-interface {v0}, Lorg/apache/james/mime4j/stream/Field;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParseException()Lorg/apache/james/mime4j/dom/field/ParseException;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRaw()Lorg/apache/james/mime4j/util/ByteSequence;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/apache/james/mime4j/field/AbstractField;->rawField:Lorg/apache/james/mime4j/stream/Field;

    invoke-interface {v0}, Lorg/apache/james/mime4j/stream/Field;->getRaw()Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v0

    return-object v0
.end method

.method protected getRawField()Lorg/apache/james/mime4j/stream/RawField;
    .locals 3

    .line 85
    iget-object v0, p0, Lorg/apache/james/mime4j/field/AbstractField;->rawField:Lorg/apache/james/mime4j/stream/Field;

    instance-of v1, v0, Lorg/apache/james/mime4j/stream/RawField;

    if-eqz v1, :cond_0

    .line 86
    check-cast v0, Lorg/apache/james/mime4j/stream/RawField;

    return-object v0

    .line 88
    :cond_0
    new-instance v0, Lorg/apache/james/mime4j/stream/RawField;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/AbstractField;->rawField:Lorg/apache/james/mime4j/stream/Field;

    invoke-interface {v1}, Lorg/apache/james/mime4j/stream/Field;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/james/mime4j/field/AbstractField;->rawField:Lorg/apache/james/mime4j/stream/Field;

    invoke-interface {v2}, Lorg/apache/james/mime4j/stream/Field;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/james/mime4j/stream/RawField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public isValidField()Z
    .locals 1

    .line 74
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/AbstractField;->getParseException()Lorg/apache/james/mime4j/dom/field/ParseException;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/apache/james/mime4j/field/AbstractField;->rawField:Lorg/apache/james/mime4j/stream/Field;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
