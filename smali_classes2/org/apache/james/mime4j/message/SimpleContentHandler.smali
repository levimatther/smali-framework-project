.class public abstract Lorg/apache/james/mime4j/message/SimpleContentHandler;
.super Lorg/apache/james/mime4j/parser/AbstractContentHandler;
.source "SimpleContentHandler.java"


# instance fields
.field private currHeader:Lorg/apache/james/mime4j/dom/Header;

.field private final fieldParser:Lorg/apache/james/mime4j/dom/FieldParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/james/mime4j/dom/FieldParser<",
            "+",
            "Lorg/apache/james/mime4j/dom/field/ParsedField;",
            ">;"
        }
    .end annotation
.end field

.field private final monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, v0, v0}, Lorg/apache/james/mime4j/message/SimpleContentHandler;-><init>(Lorg/apache/james/mime4j/dom/FieldParser;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/dom/FieldParser;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/james/mime4j/dom/FieldParser<",
            "+",
            "Lorg/apache/james/mime4j/dom/field/ParsedField;",
            ">;",
            "Lorg/apache/james/mime4j/codec/DecodeMonitor;",
            ")V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Lorg/apache/james/mime4j/parser/AbstractContentHandler;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    invoke-static {}, Lorg/apache/james/mime4j/field/LenientFieldParser;->getParser()Lorg/apache/james/mime4j/dom/FieldParser;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/apache/james/mime4j/message/SimpleContentHandler;->fieldParser:Lorg/apache/james/mime4j/dom/FieldParser;

    if-eqz p2, :cond_1

    goto :goto_1

    .line 48
    :cond_1
    sget-object p2, Lorg/apache/james/mime4j/codec/DecodeMonitor;->SILENT:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    :goto_1
    iput-object p2, p0, Lorg/apache/james/mime4j/message/SimpleContentHandler;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    return-void
.end method


# virtual methods
.method public final endHeader()V
    .locals 2

    .line 91
    iget-object v0, p0, Lorg/apache/james/mime4j/message/SimpleContentHandler;->currHeader:Lorg/apache/james/mime4j/dom/Header;

    const/4 v1, 0x0

    .line 92
    iput-object v1, p0, Lorg/apache/james/mime4j/message/SimpleContentHandler;->currHeader:Lorg/apache/james/mime4j/dom/Header;

    .line 93
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/message/SimpleContentHandler;->headers(Lorg/apache/james/mime4j/dom/Header;)V

    return-void
.end method

.method public final field(Lorg/apache/james/mime4j/stream/Field;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .line 78
    instance-of v0, p1, Lorg/apache/james/mime4j/dom/field/ParsedField;

    if-eqz v0, :cond_0

    .line 79
    check-cast p1, Lorg/apache/james/mime4j/dom/field/ParsedField;

    goto :goto_0

    .line 81
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/message/SimpleContentHandler;->fieldParser:Lorg/apache/james/mime4j/dom/FieldParser;

    iget-object v1, p0, Lorg/apache/james/mime4j/message/SimpleContentHandler;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    invoke-interface {v0, p1, v1}, Lorg/apache/james/mime4j/dom/FieldParser;->parse(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Lorg/apache/james/mime4j/dom/field/ParsedField;

    move-result-object p1

    .line 83
    :goto_0
    iget-object v0, p0, Lorg/apache/james/mime4j/message/SimpleContentHandler;->currHeader:Lorg/apache/james/mime4j/dom/Header;

    invoke-interface {v0, p1}, Lorg/apache/james/mime4j/dom/Header;->addField(Lorg/apache/james/mime4j/stream/Field;)V

    return-void
.end method

.method public abstract headers(Lorg/apache/james/mime4j/dom/Header;)V
.end method

.method public final startHeader()V
    .locals 1

    .line 69
    new-instance v0, Lorg/apache/james/mime4j/message/HeaderImpl;

    invoke-direct {v0}, Lorg/apache/james/mime4j/message/HeaderImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/message/SimpleContentHandler;->currHeader:Lorg/apache/james/mime4j/dom/Header;

    return-void
.end method
