.class public Lcom/squareup/javapoet/JavaFile$2;
.super Ljavax/tools/SimpleJavaFileObject;
.source "JavaFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/javapoet/JavaFile;->toJavaFileObject()Ljavax/tools/JavaFileObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final lastModified:J

.field public final synthetic this$0:Lcom/squareup/javapoet/JavaFile;


# direct methods
.method public constructor <init>(Lcom/squareup/javapoet/JavaFile;Ljava/net/URI;Ljavax/tools/JavaFileObject$Kind;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/squareup/javapoet/JavaFile$2;->this$0:Lcom/squareup/javapoet/JavaFile;

    invoke-direct {p0, p2, p3}, Ljavax/tools/SimpleJavaFileObject;-><init>(Ljava/net/URI;Ljavax/tools/JavaFileObject$Kind;)V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/squareup/javapoet/JavaFile$2;->lastModified:J

    return-void
.end method


# virtual methods
.method public bridge synthetic getCharContent(Z)Ljava/lang/CharSequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/squareup/javapoet/JavaFile$2;->getCharContent(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCharContent(Z)Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/squareup/javapoet/JavaFile$2;->this$0:Lcom/squareup/javapoet/JavaFile;

    invoke-virtual {p1}, Lcom/squareup/javapoet/JavaFile;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLastModified()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/squareup/javapoet/JavaFile$2;->lastModified:J

    return-wide v0
.end method

.method public openInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/squareup/javapoet/JavaFile$2;->getCharContent(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method
