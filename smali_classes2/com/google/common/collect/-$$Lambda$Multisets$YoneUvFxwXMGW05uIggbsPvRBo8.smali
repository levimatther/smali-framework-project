.class public final synthetic Lcom/google/common/collect/-$$Lambda$Multisets$YoneUvFxwXMGW05uIggbsPvRBo8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Function;

.field public final synthetic f$1:Ljava/util/function/ToIntFunction;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Function;Ljava/util/function/ToIntFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/-$$Lambda$Multisets$YoneUvFxwXMGW05uIggbsPvRBo8;->f$0:Ljava/util/function/Function;

    iput-object p2, p0, Lcom/google/common/collect/-$$Lambda$Multisets$YoneUvFxwXMGW05uIggbsPvRBo8;->f$1:Ljava/util/function/ToIntFunction;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/-$$Lambda$Multisets$YoneUvFxwXMGW05uIggbsPvRBo8;->f$0:Ljava/util/function/Function;

    iget-object v1, p0, Lcom/google/common/collect/-$$Lambda$Multisets$YoneUvFxwXMGW05uIggbsPvRBo8;->f$1:Ljava/util/function/ToIntFunction;

    check-cast p1, Lcom/google/common/collect/Multiset;

    invoke-static {v0, v1, p1, p2}, Lcom/google/common/collect/Multisets;->lambda$toMultiset$0(Ljava/util/function/Function;Ljava/util/function/ToIntFunction;Lcom/google/common/collect/Multiset;Ljava/lang/Object;)V

    return-void
.end method
