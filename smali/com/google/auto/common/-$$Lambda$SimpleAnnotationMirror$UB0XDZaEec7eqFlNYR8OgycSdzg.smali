.class public final synthetic Lcom/google/auto/common/-$$Lambda$SimpleAnnotationMirror$UB0XDZaEec7eqFlNYR8OgycSdzg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/auto/common/-$$Lambda$SimpleAnnotationMirror$UB0XDZaEec7eqFlNYR8OgycSdzg;->f$0:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/auto/common/-$$Lambda$SimpleAnnotationMirror$UB0XDZaEec7eqFlNYR8OgycSdzg;->f$0:Ljava/util/Map;

    check-cast p1, Ljavax/lang/model/element/ExecutableElement;

    invoke-static {v0, p1}, Lcom/google/auto/common/SimpleAnnotationMirror;->lambda$new$1(Ljava/util/Map;Ljavax/lang/model/element/ExecutableElement;)Ljavax/lang/model/element/AnnotationValue;

    move-result-object p1

    return-object p1
.end method
