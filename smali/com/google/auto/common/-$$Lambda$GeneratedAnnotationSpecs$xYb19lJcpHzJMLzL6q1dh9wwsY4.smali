.class public final synthetic Lcom/google/auto/common/-$$Lambda$GeneratedAnnotationSpecs$xYb19lJcpHzJMLzL6q1dh9wwsY4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/auto/common/-$$Lambda$GeneratedAnnotationSpecs$xYb19lJcpHzJMLzL6q1dh9wwsY4;->f$0:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/auto/common/-$$Lambda$GeneratedAnnotationSpecs$xYb19lJcpHzJMLzL6q1dh9wwsY4;->f$0:Ljava/lang/Class;

    check-cast p1, Ljavax/lang/model/element/TypeElement;

    invoke-static {v0, p1}, Lcom/google/auto/common/GeneratedAnnotationSpecs;->lambda$generatedAnnotationSpecBuilder$1(Ljava/lang/Class;Ljavax/lang/model/element/TypeElement;)Lcom/squareup/javapoet/AnnotationSpec$Builder;

    move-result-object p1

    return-object p1
.end method
