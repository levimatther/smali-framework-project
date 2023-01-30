.class public interface abstract Lorg/apache/james/mime4j/dom/Entity;
.super Ljava/lang/Object;
.source "Entity.java"

# interfaces
.implements Lorg/apache/james/mime4j/dom/Disposable;


# virtual methods
.method public abstract getBody()Lorg/apache/james/mime4j/dom/Body;
.end method

.method public abstract getCharset()Ljava/lang/String;
.end method

.method public abstract getContentTransferEncoding()Ljava/lang/String;
.end method

.method public abstract getDispositionType()Ljava/lang/String;
.end method

.method public abstract getFilename()Ljava/lang/String;
.end method

.method public abstract getHeader()Lorg/apache/james/mime4j/dom/Header;
.end method

.method public abstract getMimeType()Ljava/lang/String;
.end method

.method public abstract getParent()Lorg/apache/james/mime4j/dom/Entity;
.end method

.method public abstract isMultipart()Z
.end method

.method public abstract removeBody()Lorg/apache/james/mime4j/dom/Body;
.end method

.method public abstract setBody(Lorg/apache/james/mime4j/dom/Body;)V
.end method

.method public abstract setHeader(Lorg/apache/james/mime4j/dom/Header;)V
.end method

.method public abstract setParent(Lorg/apache/james/mime4j/dom/Entity;)V
.end method
