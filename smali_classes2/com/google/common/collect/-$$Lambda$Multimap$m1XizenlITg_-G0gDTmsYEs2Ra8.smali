.class public final synthetic Lcom/google/common/collect/-$$Lambda$Multimap$m1XizenlITg_-G0gDTmsYEs2Ra8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/BiConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/-$$Lambda$Multimap$m1XizenlITg_-G0gDTmsYEs2Ra8;->f$0:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/-$$Lambda$Multimap$m1XizenlITg_-G0gDTmsYEs2Ra8;->f$0:Ljava/util/function/BiConsumer;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {v0, p1}, Lcom/google/common/collect/Multimap;->lambda$forEach$0(Ljava/util/function/BiConsumer;Ljava/util/Map$Entry;)V

    return-void
.end method
