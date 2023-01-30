.class public Lorg/apache/james/mime4j/field/MimeVersionFieldImpl;
.super Lorg/apache/james/mime4j/field/AbstractField;
.source "MimeVersionFieldImpl.java"

# interfaces
.implements Lorg/apache/james/mime4j/dom/field/MimeVersionField;


# static fields
.field public static final DEFAULT_MAJOR_VERSION:I = 0x1

.field public static final DEFAULT_MINOR_VERSION:I

.field public static final PARSER:Lorg/apache/james/mime4j/dom/FieldParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/james/mime4j/dom/FieldParser<",
            "Lorg/apache/james/mime4j/dom/field/MimeVersionField;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private major:I

.field private minor:I

.field private parsed:Z

.field private parsedException:Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 92
    new-instance v0, Lorg/apache/james/mime4j/field/MimeVersionFieldImpl$1;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/MimeVersionFieldImpl$1;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/MimeVersionFieldImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    return-void
.end method

.method constructor <init>(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/field/AbstractField;-><init>(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V

    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lorg/apache/james/mime4j/field/MimeVersionFieldImpl;->parsed:Z

    const/4 p2, 0x1

    .line 41
    iput p2, p0, Lorg/apache/james/mime4j/field/MimeVersionFieldImpl;->major:I

    .line 42
    iput p1, p0, Lorg/apache/james/mime4j/field/MimeVersionFieldImpl;->minor:I

    return-void
.end method

.method private parse()V
    .locals 3

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/MimeVersionFieldImpl;->parsed:Z

    .line 51
    iput v0, p0, Lorg/apache/james/mime4j/field/MimeVersionFieldImpl;->major:I

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lorg/apache/james/mime4j/field/MimeVersionFieldImpl;->minor:I

    .line 53
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/MimeVersionFieldImpl;->getBody()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 55
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 56
    new-instance v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;-><init>(Ljava/io/Reader;)V

    .line 58
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->parse()V

    .line 59
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->getMajorVersion()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 61
    iput v1, p0, Lorg/apache/james/mime4j/field/MimeVersionFieldImpl;->major:I

    .line 63
    :cond_0
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->getMinorVersion()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 65
    iput v0, p0, Lorg/apache/james/mime4j/field/MimeVersionFieldImpl;->minor:I
    :try_end_0
    .catch Lorg/apache/james/mime4j/MimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 68
    new-instance v1, Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;

    invoke-direct {v1, v0}, Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;-><init>(Ljava/lang/Throwable;)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/MimeVersionFieldImpl;->parsedException:Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getMajorVersion()I
    .locals 1

    .line 81
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/MimeVersionFieldImpl;->parsed:Z

    if-nez v0, :cond_0

    .line 82
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/MimeVersionFieldImpl;->parse()V

    .line 84
    :cond_0
    iget v0, p0, Lorg/apache/james/mime4j/field/MimeVersionFieldImpl;->major:I

    return v0
.end method

.method public getMinorVersion()I
    .locals 1

    .line 74
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/MimeVersionFieldImpl;->parsed:Z

    if-nez v0, :cond_0

    .line 75
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/MimeVersionFieldImpl;->parse()V

    .line 77
    :cond_0
    iget v0, p0, Lorg/apache/james/mime4j/field/MimeVersionFieldImpl;->minor:I

    return v0
.end method

.method public getParseException()Lorg/apache/james/mime4j/dom/field/ParseException;
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/apache/james/mime4j/field/MimeVersionFieldImpl;->parsedException:Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;

    return-object v0
.end method
