.class public Lorg/apache/james/mime4j/stream/MimeParseEventException;
.super Lorg/apache/james/mime4j/MimeException;
.source "MimeParseEventException.java"


# static fields
.field private static final serialVersionUID:J = 0x404bb151428032ceL


# instance fields
.field private final event:Lorg/apache/james/mime4j/stream/Event;


# direct methods
.method public constructor <init>(Lorg/apache/james/mime4j/stream/Event;)V
    .locals 1

    .line 39
    invoke-virtual {p1}, Lorg/apache/james/mime4j/stream/Event;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/MimeException;-><init>(Ljava/lang/String;)V

    .line 40
    iput-object p1, p0, Lorg/apache/james/mime4j/stream/MimeParseEventException;->event:Lorg/apache/james/mime4j/stream/Event;

    return-void
.end method


# virtual methods
.method public getEvent()Lorg/apache/james/mime4j/stream/Event;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/MimeParseEventException;->event:Lorg/apache/james/mime4j/stream/Event;

    return-object v0
.end method
