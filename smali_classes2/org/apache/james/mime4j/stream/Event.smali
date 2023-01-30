.class public final Lorg/apache/james/mime4j/stream/Event;
.super Ljava/lang/Object;
.source "Event.java"


# static fields
.field public static final HEADERS_PREMATURE_END:Lorg/apache/james/mime4j/stream/Event;

.field public static final INVALID_HEADER:Lorg/apache/james/mime4j/stream/Event;

.field public static final MIME_BODY_PREMATURE_END:Lorg/apache/james/mime4j/stream/Event;

.field public static final OBSOLETE_HEADER:Lorg/apache/james/mime4j/stream/Event;


# instance fields
.field private final code:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lorg/apache/james/mime4j/stream/Event;

    const-string v1, "Body part ended prematurely. Boundary detected in header or EOF reached."

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/stream/Event;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/james/mime4j/stream/Event;->MIME_BODY_PREMATURE_END:Lorg/apache/james/mime4j/stream/Event;

    .line 32
    new-instance v0, Lorg/apache/james/mime4j/stream/Event;

    const-string v1, "Unexpected end of headers detected. Higher level boundary detected or EOF reached."

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/stream/Event;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/james/mime4j/stream/Event;->HEADERS_PREMATURE_END:Lorg/apache/james/mime4j/stream/Event;

    .line 36
    new-instance v0, Lorg/apache/james/mime4j/stream/Event;

    const-string v1, "Invalid header encountered"

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/stream/Event;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/james/mime4j/stream/Event;->INVALID_HEADER:Lorg/apache/james/mime4j/stream/Event;

    .line 39
    new-instance v0, Lorg/apache/james/mime4j/stream/Event;

    const-string v1, "Obsolete header encountered"

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/stream/Event;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/james/mime4j/stream/Event;->OBSOLETE_HEADER:Lorg/apache/james/mime4j/stream/Event;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 49
    iput-object p1, p0, Lorg/apache/james/mime4j/stream/Event;->code:Ljava/lang/String;

    return-void

    .line 47
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Code may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 61
    :cond_1
    instance-of v1, p1, Lorg/apache/james/mime4j/stream/Event;

    if-eqz v1, :cond_2

    .line 62
    check-cast p1, Lorg/apache/james/mime4j/stream/Event;

    .line 63
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/Event;->code:Ljava/lang/String;

    iget-object p1, p1, Lorg/apache/james/mime4j/stream/Event;->code:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/Event;->code:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/Event;->code:Ljava/lang/String;

    return-object v0
.end method
