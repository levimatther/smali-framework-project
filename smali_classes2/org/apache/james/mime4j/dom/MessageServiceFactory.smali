.class public abstract Lorg/apache/james/mime4j/dom/MessageServiceFactory;
.super Ljava/lang/Object;
.source "MessageServiceFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance()Lorg/apache/james/mime4j/dom/MessageServiceFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .line 34
    const-class v0, Lorg/apache/james/mime4j/dom/MessageServiceFactory;

    invoke-static {v0}, Lorg/apache/james/mime4j/dom/ServiceLoader;->load(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/dom/MessageServiceFactory;

    return-object v0
.end method


# virtual methods
.method public abstract newMessageBuilder()Lorg/apache/james/mime4j/dom/MessageBuilder;
.end method

.method public abstract newMessageWriter()Lorg/apache/james/mime4j/dom/MessageWriter;
.end method

.method public abstract setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method
