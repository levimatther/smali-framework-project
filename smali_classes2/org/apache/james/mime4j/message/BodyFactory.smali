.class public interface abstract Lorg/apache/james/mime4j/message/BodyFactory;
.super Ljava/lang/Object;
.source "BodyFactory.java"


# virtual methods
.method public abstract binaryBody(Ljava/io/InputStream;)Lorg/apache/james/mime4j/dom/BinaryBody;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract textBody(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/james/mime4j/dom/TextBody;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
