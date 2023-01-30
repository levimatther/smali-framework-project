.class public Lorg/apache/james/mime4j/field/ContentTransferEncodingFieldImpl;
.super Lorg/apache/james/mime4j/field/AbstractField;
.source "ContentTransferEncodingFieldImpl.java"

# interfaces
.implements Lorg/apache/james/mime4j/dom/field/ContentTransferEncodingField;


# static fields
.field public static final PARSER:Lorg/apache/james/mime4j/dom/FieldParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/james/mime4j/dom/FieldParser<",
            "Lorg/apache/james/mime4j/dom/field/ContentTransferEncodingField;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private encoding:Ljava/lang/String;

.field private parsed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    new-instance v0, Lorg/apache/james/mime4j/field/ContentTransferEncodingFieldImpl$1;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/ContentTransferEncodingFieldImpl$1;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/ContentTransferEncodingFieldImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    return-void
.end method

.method constructor <init>(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/field/AbstractField;-><init>(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V

    const/4 p1, 0x0

    .line 35
    iput-boolean p1, p0, Lorg/apache/james/mime4j/field/ContentTransferEncodingFieldImpl;->parsed:Z

    return-void
.end method

.method public static getEncoding(Lorg/apache/james/mime4j/dom/field/ContentTransferEncodingField;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 70
    invoke-interface {p0}, Lorg/apache/james/mime4j/dom/field/ContentTransferEncodingField;->getEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-interface {p0}, Lorg/apache/james/mime4j/dom/field/ContentTransferEncodingField;->getEncoding()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "7bit"

    return-object p0
.end method

.method private parse()V
    .locals 2

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentTransferEncodingFieldImpl;->parsed:Z

    .line 44
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/ContentTransferEncodingFieldImpl;->getBody()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/ContentTransferEncodingFieldImpl;->encoding:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lorg/apache/james/mime4j/field/ContentTransferEncodingFieldImpl;->encoding:Ljava/lang/String;

    :goto_0
    return-void
.end method


# virtual methods
.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 56
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentTransferEncodingFieldImpl;->parsed:Z

    if-nez v0, :cond_0

    .line 57
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/ContentTransferEncodingFieldImpl;->parse()V

    .line 59
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentTransferEncodingFieldImpl;->encoding:Ljava/lang/String;

    return-object v0
.end method
