.class public final synthetic Lcom/google/common/collect/-$$Lambda$ImmutableSortedMultiset$k2J7QxvCzqBQvGMY4cDh9lR8cUA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Comparator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/-$$Lambda$ImmutableSortedMultiset$k2J7QxvCzqBQvGMY4cDh9lR8cUA;->f$0:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/-$$Lambda$ImmutableSortedMultiset$k2J7QxvCzqBQvGMY4cDh9lR8cUA;->f$0:Ljava/util/Comparator;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSortedMultiset;->lambda$toImmutableSortedMultiset$1(Ljava/util/Comparator;)Lcom/google/common/collect/Multiset;

    move-result-object v0

    return-object v0
.end method
