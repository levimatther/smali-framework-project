.class public interface abstract annotation Lorg/checkerframework/framework/qual/ImplicitFor;
.super Ljava/lang/Object;
.source "ImplicitFor.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lorg/checkerframework/framework/qual/ImplicitFor;
        literals = {}
        stringPatterns = {}
        typeNames = {}
        types = {}
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->ANNOTATION_TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract literals()[Lorg/checkerframework/framework/qual/LiteralKind;
.end method

.method public abstract stringPatterns()[Ljava/lang/String;
.end method

.method public abstract typeNames()[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract types()[Lorg/checkerframework/framework/qual/TypeKind;
.end method
