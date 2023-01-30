.class public Lorg/apache/james/mime4j/field/ContentIdFieldImpl;
.super Lorg/apache/james/mime4j/field/AbstractField;
.source "ContentIdFieldImpl.java"

# interfaces
.implements Lorg/apache/james/mime4j/dom/field/ContentIdField;


# static fields
.field public static final PARSER:Lorg/apache/james/mime4j/dom/FieldParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/james/mime4j/dom/FieldParser<",
            "Lorg/apache/james/mime4j/dom/field/ContentIdField;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private id:Ljava/lang/String;

.field private parsed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    new-instance v0, Lorg/apache/james/mime4j/field/ContentIdFieldImpl$1;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/ContentIdFieldImpl$1;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/ContentIdFieldImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    return-void
.end method

.method constructor <init>(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/field/AbstractField;-><init>(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V

    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lorg/apache/james/mime4j/field/ContentIdFieldImpl;->parsed:Z

    return-void
.end method

.method private parse()V
    .locals 1

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentIdFieldImpl;->parsed:Z

    .line 41
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/ContentIdFieldImpl;->getBody()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/ContentIdFieldImpl;->id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lorg/apache/james/mime4j/field/ContentIdFieldImpl;->id:Ljava/lang/String;

    :goto_0
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 50
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentIdFieldImpl;->parsed:Z

    if-nez v0, :cond_0

    .line 51
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/ContentIdFieldImpl;->parse()V

    .line 53
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentIdFieldImpl;->id:Ljava/lang/String;

    return-object v0
.end method
