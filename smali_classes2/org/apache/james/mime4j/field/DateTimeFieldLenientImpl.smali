.class public Lorg/apache/james/mime4j/field/DateTimeFieldLenientImpl;
.super Lorg/apache/james/mime4j/field/AbstractField;
.source "DateTimeFieldLenientImpl.java"

# interfaces
.implements Lorg/apache/james/mime4j/dom/field/DateTimeField;


# static fields
.field private static final DEFAULT_DATE_FORMATS:[Ljava/lang/String;

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

.field private final datePatterns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private parsed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "EEE, dd MMM yyyy HH:mm:ss ZZZZ"

    const-string v1, "dd MMM yyyy HH:mm:ss ZZZZ"

    .line 41
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/field/DateTimeFieldLenientImpl;->DEFAULT_DATE_FORMATS:[Ljava/lang/String;

    .line 86
    new-instance v0, Lorg/apache/james/mime4j/field/DateTimeFieldLenientImpl$1;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/DateTimeFieldLenientImpl$1;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/DateTimeFieldLenientImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    return-void
.end method

.method constructor <init>(Lorg/apache/james/mime4j/stream/Field;Ljava/util/Collection;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/james/mime4j/stream/Field;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/james/mime4j/codec/DecodeMonitor;",
            ")V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p3}, Lorg/apache/james/mime4j/field/AbstractField;-><init>(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V

    const/4 p1, 0x0

    .line 47
    iput-boolean p1, p0, Lorg/apache/james/mime4j/field/DateTimeFieldLenientImpl;->parsed:Z

    .line 53
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lorg/apache/james/mime4j/field/DateTimeFieldLenientImpl;->datePatterns:Ljava/util/List;

    if-eqz p2, :cond_0

    .line 55
    invoke-interface {p3, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 57
    :cond_0
    sget-object p2, Lorg/apache/james/mime4j/field/DateTimeFieldLenientImpl;->DEFAULT_DATE_FORMATS:[Ljava/lang/String;

    array-length p3, p2

    :goto_0
    if-ge p1, p3, :cond_1

    aget-object v0, p2, p1

    .line 58
    iget-object v1, p0, Lorg/apache/james/mime4j/field/DateTimeFieldLenientImpl;->datePatterns:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static createParser(Ljava/util/Collection;)Lorg/apache/james/mime4j/dom/FieldParser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/james/mime4j/dom/FieldParser<",
            "Lorg/apache/james/mime4j/dom/field/DateTimeField;",
            ">;"
        }
    .end annotation

    .line 96
    new-instance v0, Lorg/apache/james/mime4j/field/DateTimeFieldLenientImpl$2;

    invoke-direct {v0, p0}, Lorg/apache/james/mime4j/field/DateTimeFieldLenientImpl$2;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private parse()V
    .locals 6

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/DateTimeFieldLenientImpl;->parsed:Z

    const/4 v1, 0x0

    .line 72
    iput-object v1, p0, Lorg/apache/james/mime4j/field/DateTimeFieldLenientImpl;->date:Ljava/util/Date;

    .line 73
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/DateTimeFieldLenientImpl;->getBody()Ljava/lang/String;

    move-result-object v1

    .line 74
    iget-object v2, p0, Lorg/apache/james/mime4j/field/DateTimeFieldLenientImpl;->datePatterns:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :catch_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 76
    :try_start_0
    new-instance v4, Ljava/text/SimpleDateFormat;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v3, "GMT"

    .line 77
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 78
    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 79
    invoke-virtual {v4, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/james/mime4j/field/DateTimeFieldLenientImpl;->date:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 1

    .line 64
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/DateTimeFieldLenientImpl;->parsed:Z

    if-nez v0, :cond_0

    .line 65
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/DateTimeFieldLenientImpl;->parse()V

    .line 67
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/DateTimeFieldLenientImpl;->date:Ljava/util/Date;

    return-object v0
.end method
