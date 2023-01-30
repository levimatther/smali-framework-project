.class public Lorg/apache/james/mime4j/field/ContentLanguageFieldImpl;
.super Lorg/apache/james/mime4j/field/AbstractField;
.source "ContentLanguageFieldImpl.java"

# interfaces
.implements Lorg/apache/james/mime4j/dom/field/ContentLanguageField;


# static fields
.field public static final PARSER:Lorg/apache/james/mime4j/dom/FieldParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/james/mime4j/dom/FieldParser<",
            "Lorg/apache/james/mime4j/dom/field/ContentLanguageField;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private languages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private parseException:Lorg/apache/james/mime4j/field/language/parser/ParseException;

.field private parsed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    new-instance v0, Lorg/apache/james/mime4j/field/ContentLanguageFieldImpl$1;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/ContentLanguageFieldImpl$1;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/ContentLanguageFieldImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    return-void
.end method

.method constructor <init>(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/field/AbstractField;-><init>(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V

    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Lorg/apache/james/mime4j/field/ContentLanguageFieldImpl;->parsed:Z

    return-void
.end method

.method private parse()V
    .locals 3

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentLanguageFieldImpl;->parsed:Z

    .line 49
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/ContentLanguageFieldImpl;->languages:Ljava/util/List;

    .line 50
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/ContentLanguageFieldImpl;->getBody()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    new-instance v1, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;-><init>(Ljava/io/Reader;)V

    .line 54
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->parse()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/ContentLanguageFieldImpl;->languages:Ljava/util/List;
    :try_end_0
    .catch Lorg/apache/james/mime4j/field/language/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 56
    iput-object v0, p0, Lorg/apache/james/mime4j/field/ContentLanguageFieldImpl;->parseException:Lorg/apache/james/mime4j/field/language/parser/ParseException;

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public getLanguages()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 67
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentLanguageFieldImpl;->parsed:Z

    if-nez v0, :cond_0

    .line 68
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/ContentLanguageFieldImpl;->parse()V

    .line 70
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/ContentLanguageFieldImpl;->languages:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getParseException()Lorg/apache/james/mime4j/dom/field/ParseException;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentLanguageFieldImpl;->parseException:Lorg/apache/james/mime4j/field/language/parser/ParseException;

    return-object v0
.end method
