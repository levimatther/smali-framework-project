.class public final synthetic Lcom/google/common/collect/-$$Lambda$ImmutableListMultimap$thPuQPfWk1EI4g0Kc7jhgSPR9_U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/-$$Lambda$ImmutableListMultimap$thPuQPfWk1EI4g0Kc7jhgSPR9_U;->f$0:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/-$$Lambda$ImmutableListMultimap$thPuQPfWk1EI4g0Kc7jhgSPR9_U;->f$0:Ljava/util/function/Function;

    invoke-static {v0, p1}, Lcom/google/common/collect/ImmutableListMultimap;->lambda$flatteningToImmutableListMultimap$1(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
