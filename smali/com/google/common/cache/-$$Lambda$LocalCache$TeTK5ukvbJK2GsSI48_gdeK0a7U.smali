.class public final synthetic Lcom/google/common/cache/-$$Lambda$LocalCache$TeTK5ukvbJK2GsSI48_gdeK0a7U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/util/function/BiFunction;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/util/function/BiFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/cache/-$$Lambda$LocalCache$TeTK5ukvbJK2GsSI48_gdeK0a7U;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/common/cache/-$$Lambda$LocalCache$TeTK5ukvbJK2GsSI48_gdeK0a7U;->f$1:Ljava/util/function/BiFunction;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/common/cache/-$$Lambda$LocalCache$TeTK5ukvbJK2GsSI48_gdeK0a7U;->f$0:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/cache/-$$Lambda$LocalCache$TeTK5ukvbJK2GsSI48_gdeK0a7U;->f$1:Ljava/util/function/BiFunction;

    invoke-static {v0, v1, p1, p2}, Lcom/google/common/cache/LocalCache;->lambda$merge$2(Ljava/lang/Object;Ljava/util/function/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
