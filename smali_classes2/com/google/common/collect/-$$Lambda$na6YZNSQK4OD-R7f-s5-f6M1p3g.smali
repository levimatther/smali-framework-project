.class public final synthetic Lcom/google/common/collect/-$$Lambda$na6YZNSQK4OD-R7f-s5-f6M1p3g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ObjIntConsumer;


# instance fields
.field public final synthetic f$0:Lcom/google/common/collect/Multiset;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/collect/Multiset;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/-$$Lambda$na6YZNSQK4OD-R7f-s5-f6M1p3g;->f$0:Lcom/google/common/collect/Multiset;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/-$$Lambda$na6YZNSQK4OD-R7f-s5-f6M1p3g;->f$0:Lcom/google/common/collect/Multiset;

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/Multiset;->add(Ljava/lang/Object;I)I

    return-void
.end method
