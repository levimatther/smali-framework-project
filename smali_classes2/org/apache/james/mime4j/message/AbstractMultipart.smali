.class public abstract Lorg/apache/james/mime4j/message/AbstractMultipart;
.super Ljava/lang/Object;
.source "AbstractMultipart.java"

# interfaces
.implements Lorg/apache/james/mime4j/dom/Multipart;


# instance fields
.field protected bodyParts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/james/mime4j/dom/Entity;",
            ">;"
        }
    .end annotation
.end field

.field private parent:Lorg/apache/james/mime4j/dom/Entity;

.field private subType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/message/AbstractMultipart;->bodyParts:Ljava/util/List;

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lorg/apache/james/mime4j/message/AbstractMultipart;->parent:Lorg/apache/james/mime4j/dom/Entity;

    .line 43
    iput-object p1, p0, Lorg/apache/james/mime4j/message/AbstractMultipart;->subType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addBodyPart(Lorg/apache/james/mime4j/dom/Entity;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 127
    iget-object v0, p0, Lorg/apache/james/mime4j/message/AbstractMultipart;->bodyParts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v0, p0, Lorg/apache/james/mime4j/message/AbstractMultipart;->parent:Lorg/apache/james/mime4j/dom/Entity;

    invoke-interface {p1, v0}, Lorg/apache/james/mime4j/dom/Entity;->setParent(Lorg/apache/james/mime4j/dom/Entity;)V

    return-void

    .line 125
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public addBodyPart(Lorg/apache/james/mime4j/dom/Entity;I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 146
    iget-object v0, p0, Lorg/apache/james/mime4j/message/AbstractMultipart;->bodyParts:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 147
    iget-object p2, p0, Lorg/apache/james/mime4j/message/AbstractMultipart;->parent:Lorg/apache/james/mime4j/dom/Entity;

    invoke-interface {p1, p2}, Lorg/apache/james/mime4j/dom/Entity;->setParent(Lorg/apache/james/mime4j/dom/Entity;)V

    return-void

    .line 144
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public dispose()V
    .locals 2

    .line 232
    iget-object v0, p0, Lorg/apache/james/mime4j/message/AbstractMultipart;->bodyParts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/dom/Entity;

    .line 233
    invoke-interface {v1}, Lorg/apache/james/mime4j/dom/Entity;->dispose()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getBodyParts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/james/mime4j/dom/Entity;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lorg/apache/james/mime4j/message/AbstractMultipart;->bodyParts:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/apache/james/mime4j/message/AbstractMultipart;->bodyParts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public abstract getEpilogue()Ljava/lang/String;
.end method

.method public getParent()Lorg/apache/james/mime4j/dom/Entity;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/apache/james/mime4j/message/AbstractMultipart;->parent:Lorg/apache/james/mime4j/dom/Entity;

    return-object v0
.end method

.method public abstract getPreamble()Ljava/lang/String;
.end method

.method public getSubType()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/apache/james/mime4j/message/AbstractMultipart;->subType:Ljava/lang/String;

    return-object v0
.end method

.method public removeBodyPart(I)Lorg/apache/james/mime4j/dom/Entity;
    .locals 1

    .line 162
    iget-object v0, p0, Lorg/apache/james/mime4j/message/AbstractMultipart;->bodyParts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/james/mime4j/dom/Entity;

    const/4 v0, 0x0

    .line 163
    invoke-interface {p1, v0}, Lorg/apache/james/mime4j/dom/Entity;->setParent(Lorg/apache/james/mime4j/dom/Entity;)V

    return-object p1
.end method

.method public replaceBodyPart(Lorg/apache/james/mime4j/dom/Entity;I)Lorg/apache/james/mime4j/dom/Entity;
    .locals 1

    if-eqz p1, :cond_1

    .line 184
    iget-object v0, p0, Lorg/apache/james/mime4j/message/AbstractMultipart;->bodyParts:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/james/mime4j/dom/Entity;

    if-eq p1, p2, :cond_0

    .line 189
    iget-object v0, p0, Lorg/apache/james/mime4j/message/AbstractMultipart;->parent:Lorg/apache/james/mime4j/dom/Entity;

    invoke-interface {p1, v0}, Lorg/apache/james/mime4j/dom/Entity;->setParent(Lorg/apache/james/mime4j/dom/Entity;)V

    const/4 p1, 0x0

    .line 190
    invoke-interface {p2, p1}, Lorg/apache/james/mime4j/dom/Entity;->setParent(Lorg/apache/james/mime4j/dom/Entity;)V

    return-object p2

    .line 186
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot replace body part with itself"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 182
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setBodyParts(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/james/mime4j/dom/Entity;",
            ">;)V"
        }
    .end annotation

    .line 111
    iput-object p1, p0, Lorg/apache/james/mime4j/message/AbstractMultipart;->bodyParts:Ljava/util/List;

    .line 112
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/dom/Entity;

    .line 113
    iget-object v1, p0, Lorg/apache/james/mime4j/message/AbstractMultipart;->parent:Lorg/apache/james/mime4j/dom/Entity;

    invoke-interface {v0, v1}, Lorg/apache/james/mime4j/dom/Entity;->setParent(Lorg/apache/james/mime4j/dom/Entity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract setEpilogue(Ljava/lang/String;)V
.end method

.method public setParent(Lorg/apache/james/mime4j/dom/Entity;)V
    .locals 2

    .line 80
    iput-object p1, p0, Lorg/apache/james/mime4j/message/AbstractMultipart;->parent:Lorg/apache/james/mime4j/dom/Entity;

    .line 81
    iget-object v0, p0, Lorg/apache/james/mime4j/message/AbstractMultipart;->bodyParts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/dom/Entity;

    .line 82
    invoke-interface {v1, p1}, Lorg/apache/james/mime4j/dom/Entity;->setParent(Lorg/apache/james/mime4j/dom/Entity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract setPreamble(Ljava/lang/String;)V
.end method

.method public setSubType(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lorg/apache/james/mime4j/message/AbstractMultipart;->subType:Ljava/lang/String;

    return-void
.end method
