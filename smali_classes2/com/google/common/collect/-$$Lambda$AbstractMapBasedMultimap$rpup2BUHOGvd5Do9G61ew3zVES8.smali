.class public final synthetic Lcom/google/common/collect/-$$Lambda$AbstractMapBasedMultimap$rpup2BUHOGvd5Do9G61ew3zVES8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/BiConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/-$$Lambda$AbstractMapBasedMultimap$rpup2BUHOGvd5Do9G61ew3zVES8;->f$0:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/-$$Lambda$AbstractMapBasedMultimap$rpup2BUHOGvd5Do9G61ew3zVES8;->f$0:Ljava/util/function/BiConsumer;

    check-cast p2, Ljava/util/Collection;

    invoke-static {v0, p1, p2}, Lcom/google/common/collect/AbstractMapBasedMultimap;->lambda$forEach$3(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/util/Collection;)V

    return-void
.end method
