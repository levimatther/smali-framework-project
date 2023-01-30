.class final Lorg/apache/james/mime4j/field/MimeVersionFieldImpl$1;
.super Ljava/lang/Object;
.source "MimeVersionFieldImpl.java"

# interfaces
.implements Lorg/apache/james/mime4j/dom/FieldParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/james/mime4j/field/MimeVersionFieldImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/james/mime4j/dom/FieldParser<",
        "Lorg/apache/james/mime4j/dom/field/MimeVersionField;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Lorg/apache/james/mime4j/dom/field/MimeVersionField;
    .locals 1

    .line 95
    new-instance v0, Lorg/apache/james/mime4j/field/MimeVersionFieldImpl;

    invoke-direct {v0, p1, p2}, Lorg/apache/james/mime4j/field/MimeVersionFieldImpl;-><init>(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V

    return-object v0
.end method

.method public bridge synthetic parse(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Lorg/apache/james/mime4j/dom/field/ParsedField;
    .locals 0

    .line 92
    invoke-virtual {p0, p1, p2}, Lorg/apache/james/mime4j/field/MimeVersionFieldImpl$1;->parse(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Lorg/apache/james/mime4j/dom/field/MimeVersionField;

    move-result-object p1

    return-object p1
.end method
