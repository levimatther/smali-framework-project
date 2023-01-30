.class public Lorg/apache/james/mime4j/field/DateTimeFieldImpl;
.super Lorg/apache/james/mime4j/field/AbstractField;
.source "DateTimeFieldImpl.java"

# interfaces
.implements Lorg/apache/james/mime4j/dom/field/DateTimeField;


# static fields
.field public static final PARSER:Lorg/apache/james/mime4j/dom/FieldParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/james/mime4j/dom/FieldParser<",
            "Lorg/apache/james/mime4j/dom/field/DateTimeField;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private date:Ljava/util/Date;

.field private parseException:Lorg/apache/james/mime4j/field/datetime/parser/ParseException;

.field private parsed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 82
    new-instance v0, Lorg/apache/james/mime4j/field/DateTimeFieldImpl$1;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/DateTimeFieldImpl$1;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/DateTimeFieldImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    return-void
.end method

.method constructor <init>(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/field/AbstractField;-><init>(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V

    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lorg/apache/james/mime4j/field/DateTimeFieldImpl;->parsed:Z

    return-void
.end method

.method private parse()V
    .locals 3

    .line 68
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/DateTimeFieldImpl;->getBody()Ljava/lang/String;

    move-result-object v0

    .line 71
    :try_start_0
    new-instance v1, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->parseAll()Lorg/apache/james/mime4j/dom/datetime/DateTime;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/james/mime4j/dom/datetime/DateTime;->getDate()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/DateTimeFieldImpl;->date:Ljava/util/Date;
    :try_end_0
    .catch Lorg/apache/james/mime4j/field/datetime/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/james/mime4j/field/datetime/parser/TokenMgrError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 76
    new-instance v1, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/datetime/parser/TokenMgrError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/DateTimeFieldImpl;->parseException:Lorg/apache/james/mime4j/field/datetime/parser/ParseException;

    goto :goto_0

    :catch_1
    move-exception v0

    .line 74
    iput-object v0, p0, Lorg/apache/james/mime4j/field/DateTimeFieldImpl;->parseException:Lorg/apache/james/mime4j/field/datetime/parser/ParseException;

    :goto_0
    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/DateTimeFieldImpl;->parsed:Z

    return-void
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 1

    .line 50
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/DateTimeFieldImpl;->parsed:Z

    if-nez v0, :cond_0

    .line 51
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/DateTimeFieldImpl;->parse()V

    .line 53
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/DateTimeFieldImpl;->date:Ljava/util/Date;

    return-object v0
.end method

.method public bridge synthetic getParseException()Lorg/apache/james/mime4j/dom/field/ParseException;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/DateTimeFieldImpl;->getParseException()Lorg/apache/james/mime4j/field/datetime/parser/ParseException;

    move-result-object v0

    return-object v0
.end method

.method public getParseException()Lorg/apache/james/mime4j/field/datetime/parser/ParseException;
    .locals 1

    .line 61
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/DateTimeFieldImpl;->parsed:Z

    if-nez v0, :cond_0

    .line 62
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/DateTimeFieldImpl;->parse()V

    .line 64
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/DateTimeFieldImpl;->parseException:Lorg/apache/james/mime4j/field/datetime/parser/ParseException;

    return-object v0
.end method
