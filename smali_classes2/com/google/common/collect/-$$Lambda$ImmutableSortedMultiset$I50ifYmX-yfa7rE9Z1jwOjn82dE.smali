.class public final synthetic Lcom/google/common/collect/-$$Lambda$ImmutableSortedMultiset$I50ifYmX-yfa7rE9Z1jwOjn82dE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Comparator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/-$$Lambda$ImmutableSortedMultiset$I50ifYmX-yfa7rE9Z1jwOjn82dE;->f$0:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/-$$Lambda$ImmutableSortedMultiset$I50ifYmX-yfa7rE9Z1jwOjn82dE;->f$0:Ljava/util/Comparator;

    check-cast p1, Lcom/google/common/collect/Multiset;

    invoke-static {v0, p1}, Lcom/google/common/collect/ImmutableSortedMultiset;->lambda$toImmutableSortedMultiset$4(Ljava/util/Comparator;Lcom/google/common/collect/Multiset;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object p1

    return-object p1
.end method
