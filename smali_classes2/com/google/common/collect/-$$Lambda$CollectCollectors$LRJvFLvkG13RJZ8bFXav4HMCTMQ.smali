.class public final synthetic Lcom/google/common/collect/-$$Lambda$CollectCollectors$LRJvFLvkG13RJZ8bFXav4HMCTMQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Function;

.field public final synthetic f$1:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Function;Ljava/util/function/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/-$$Lambda$CollectCollectors$LRJvFLvkG13RJZ8bFXav4HMCTMQ;->f$0:Ljava/util/function/Function;

    iput-object p2, p0, Lcom/google/common/collect/-$$Lambda$CollectCollectors$LRJvFLvkG13RJZ8bFXav4HMCTMQ;->f$1:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/-$$Lambda$CollectCollectors$LRJvFLvkG13RJZ8bFXav4HMCTMQ;->f$0:Ljava/util/function/Function;

    iget-object v1, p0, Lcom/google/common/collect/-$$Lambda$CollectCollectors$LRJvFLvkG13RJZ8bFXav4HMCTMQ;->f$1:Ljava/util/function/Function;

    check-cast p1, Lcom/google/common/collect/ImmutableSortedMap$Builder;

    invoke-static {v0, v1, p1, p2}, Lcom/google/common/collect/CollectCollectors;->lambda$toImmutableSortedMap$3(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableSortedMap$Builder;Ljava/lang/Object;)V

    return-void
.end method
