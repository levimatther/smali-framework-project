.class public interface abstract Lcom/google/auto/common/BasicAnnotationProcessor$ProcessingStep;
.super Ljava/lang/Object;
.source "BasicAnnotationProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auto/common/BasicAnnotationProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProcessingStep"
.end annotation


# virtual methods
.method public abstract annotations()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract process(Lcom/google/common/collect/SetMultimap;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/SetMultimap<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljavax/lang/model/element/Element;",
            ">;)",
            "Ljava/util/Set<",
            "+",
            "Ljavax/lang/model/element/Element;",
            ">;"
        }
    .end annotation
.end method
