.class public interface abstract annotation Lorg/checkerframework/checker/signature/qual/FieldDescriptorForPrimitive;
.super Ljava/lang/Object;
.source "FieldDescriptorForPrimitive.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE_USE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->TYPE_PARAMETER:Ljava/lang/annotation/ElementType;
    }
.end annotation

.annotation runtime Lorg/checkerframework/framework/qual/ImplicitFor;
    stringPatterns = {
        "^[BCDFIJSZ]$"
    }
.end annotation

.annotation runtime Lorg/checkerframework/framework/qual/SubtypeOf;
    value = {
        Lorg/checkerframework/checker/signature/qual/FieldDescriptorForPrimitiveOrArrayInUnnamedPackage;,
        Lorg/checkerframework/checker/signature/qual/Identifier;
    }
.end annotation
