.class public Lorg/apache/james/mime4j/field/ContentLocationFieldImpl;
.super Lorg/apache/james/mime4j/field/AbstractField;
.source "ContentLocationFieldImpl.java"

# interfaces
.implements Lorg/apache/james/mime4j/dom/field/ContentLocationField;


# static fields
.field public static final PARSER:Lorg/apache/james/mime4j/dom/FieldParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/james/mime4j/dom/FieldParser<",
            "Lorg/apache/james/mime4j/dom/field/ContentLocationField;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private location:Ljava/lang/String;

.field private parseException:Lorg/apache/james/mime4j/field/structured/parser/ParseException;

.field private parsed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    new-instance v0, Lorg/apache/james/mime4j/field/ContentLocationFieldImpl$1;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/ContentLocationFieldImpl$1;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/ContentLocationFieldImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    return-void
.end method

.method constructor <init>(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/field/AbstractField;-><init>(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V

    const/4 p1, 0x0

    .line 36
    iput-boolean p1, p0, Lorg/apache/james/mime4j/field/ContentLocationFieldImpl;->parsed:Z

    return-void
.end method

.method private parse()V
    .locals 3

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentLocationFieldImpl;->parsed:Z

    .line 46
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/ContentLocationFieldImpl;->getBody()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 47
    iput-object v1, p0, Lorg/apache/james/mime4j/field/ContentLocationFieldImpl;->location:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 49
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 50
    new-instance v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;-><init>(Ljava/io/Reader;)V

    .line 59
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->parse()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/ContentLocationFieldImpl;->location:Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/james/mime4j/field/structured/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 61
    iput-object v0, p0, Lorg/apache/james/mime4j/field/ContentLocationFieldImpl;->parseException:Lorg/apache/james/mime4j/field/structured/parser/ParseException;

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public getLocation()Ljava/lang/String;
    .locals 1

    .line 67
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentLocationFieldImpl;->parsed:Z

    if-nez v0, :cond_0

    .line 68
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/ContentLocationFieldImpl;->parse()V

    .line 70
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentLocationFieldImpl;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getParseException()Lorg/apache/james/mime4j/dom/field/ParseException;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentLocationFieldImpl;->parseException:Lorg/apache/james/mime4j/field/structured/parser/ParseException;

    return-object v0
.end method
