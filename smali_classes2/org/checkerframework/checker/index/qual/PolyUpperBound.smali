.class public interface abstract annotation Lorg/checkerframework/checker/index/qual/PolyUpperBound;
.super Ljava/lang/Object;
.source "PolyUpperBound.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE_USE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->TYPE_PARAMETER:Ljava/lang/annotation/ElementType;
    }
.end annotation

.annotation runtime Lorg/checkerframework/framework/qual/PolymorphicQualifier;
    value = Lorg/checkerframework/checker/index/qual/UpperBoundUnknown;
.end annotation
