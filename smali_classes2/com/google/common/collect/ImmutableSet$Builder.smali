.class public Lcom/google/common/collect/ImmutableSet$Builder;
.super Lcom/google/common/collect/ImmutableCollection$Builder;
.source "ImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableCollection$Builder<",
        "TE;>;"
    }
.end annotation


# instance fields
.field forceCopy:Z

.field private impl:Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet$SetBuilderImpl<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    .line 480
    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableSet$Builder;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 1

    .line 483
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection$Builder;-><init>()V

    .line 484
    new-instance v0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;

    invoke-direct {v0, p1}, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/collect/ImmutableSet$Builder;->impl:Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;

    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    .line 487
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection$Builder;-><init>()V

    const/4 p1, 0x0

    .line 488
    iput-object p1, p0, Lcom/google/common/collect/ImmutableSet$Builder;->impl:Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 0

    .line 475
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 0

    .line 475
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSet$Builder;->add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/ImmutableSet$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 510
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet$Builder;->copyIfNecessary()V

    .line 512
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$Builder;->impl:Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/ImmutableSet$Builder;->impl:Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;

    return-object p0
.end method

.method public varargs add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lcom/google/common/collect/ImmutableSet$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 519
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableCollection$Builder;->add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;

    return-object p0
.end method

.method public bridge synthetic addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 0

    .line 475
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSet$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addAll(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 0

    .line 475
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSet$Builder;->addAll(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lcom/google/common/collect/ImmutableSet$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 534
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableCollection$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableCollection$Builder;

    return-object p0
.end method

.method public addAll(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSet$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Lcom/google/common/collect/ImmutableSet$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 541
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableCollection$Builder;->addAll(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableCollection$Builder;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/common/collect/ImmutableCollection;
    .locals 1

    .line 475
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 553
    iput-boolean v0, p0, Lcom/google/common/collect/ImmutableSet$Builder;->forceCopy:Z

    .line 554
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$Builder;->impl:Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;->review()Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableSet$Builder;->impl:Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;

    .line 555
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method combine(Lcom/google/common/collect/ImmutableSet$Builder;)Lcom/google/common/collect/ImmutableSet$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableSet$Builder<",
            "TE;>;)",
            "Lcom/google/common/collect/ImmutableSet$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 546
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet$Builder;->copyIfNecessary()V

    .line 547
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$Builder;->impl:Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;

    iget-object p1, p1, Lcom/google/common/collect/ImmutableSet$Builder;->impl:Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;->combine(Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;)Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/ImmutableSet$Builder;->impl:Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;

    return-object p0
.end method

.method copy()V
    .locals 1

    .line 504
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$Builder;->impl:Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;->copy()Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableSet$Builder;->impl:Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;

    return-void
.end method

.method final copyIfNecessary()V
    .locals 1

    .line 497
    iget-boolean v0, p0, Lcom/google/common/collect/ImmutableSet$Builder;->forceCopy:Z

    if-eqz v0, :cond_0

    .line 498
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet$Builder;->copy()V

    const/4 v0, 0x0

    .line 499
    iput-boolean v0, p0, Lcom/google/common/collect/ImmutableSet$Builder;->forceCopy:Z

    :cond_0
    return-void
.end method

.method forceJdk()V
    .locals 2

    .line 493
    new-instance v0, Lcom/google/common/collect/ImmutableSet$JdkBackedSetBuilderImpl;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableSet$Builder;->impl:Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableSet$JdkBackedSetBuilderImpl;-><init>(Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;)V

    iput-object v0, p0, Lcom/google/common/collect/ImmutableSet$Builder;->impl:Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;

    return-void
.end method
