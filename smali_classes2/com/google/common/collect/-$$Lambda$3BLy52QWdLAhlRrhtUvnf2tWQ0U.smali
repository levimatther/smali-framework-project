.class public final synthetic Lcom/google/common/collect/-$$Lambda$3BLy52QWdLAhlRrhtUvnf2tWQ0U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic f$0:Lcom/google/common/collect/ImmutableSet$Indexed;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/collect/ImmutableSet$Indexed;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/-$$Lambda$3BLy52QWdLAhlRrhtUvnf2tWQ0U;->f$0:Lcom/google/common/collect/ImmutableSet$Indexed;

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/-$$Lambda$3BLy52QWdLAhlRrhtUvnf2tWQ0U;->f$0:Lcom/google/common/collect/ImmutableSet$Indexed;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSet$Indexed;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
