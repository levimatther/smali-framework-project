.class public final synthetic Lcom/google/common/cache/-$$Lambda$LocalCache$5vp99pKXUK9ge6_GCg4e2j56npU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Function;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Function;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/cache/-$$Lambda$LocalCache$5vp99pKXUK9ge6_GCg4e2j56npU;->f$0:Ljava/util/function/Function;

    iput-object p2, p0, Lcom/google/common/cache/-$$Lambda$LocalCache$5vp99pKXUK9ge6_GCg4e2j56npU;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/common/cache/-$$Lambda$LocalCache$5vp99pKXUK9ge6_GCg4e2j56npU;->f$0:Ljava/util/function/Function;

    iget-object v1, p0, Lcom/google/common/cache/-$$Lambda$LocalCache$5vp99pKXUK9ge6_GCg4e2j56npU;->f$1:Ljava/lang/Object;

    invoke-static {v0, v1, p1, p2}, Lcom/google/common/cache/LocalCache;->lambda$computeIfAbsent$0(Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
