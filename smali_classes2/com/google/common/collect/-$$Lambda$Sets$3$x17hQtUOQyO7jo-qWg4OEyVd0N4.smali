.class public final synthetic Lcom/google/common/collect/-$$Lambda$Sets$3$x17hQtUOQyO7jo-qWg4OEyVd0N4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/-$$Lambda$Sets$3$x17hQtUOQyO7jo-qWg4OEyVd0N4;->f$0:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/-$$Lambda$Sets$3$x17hQtUOQyO7jo-qWg4OEyVd0N4;->f$0:Ljava/util/Set;

    invoke-static {v0, p1}, Lcom/google/common/collect/Sets$3;->lambda$parallelStream$1(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
