.class public final synthetic Lcom/google/common/collect/-$$Lambda$Collections2$FilteredCollection$KZZADvVoxzl7X9QJ7avS6lZW_Tk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/util/Collection;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Collection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/-$$Lambda$Collections2$FilteredCollection$KZZADvVoxzl7X9QJ7avS6lZW_Tk;->f$0:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/-$$Lambda$Collections2$FilteredCollection$KZZADvVoxzl7X9QJ7avS6lZW_Tk;->f$0:Ljava/util/Collection;

    invoke-static {v0, p1}, Lcom/google/common/collect/Collections2$FilteredCollection;->lambda$retainAll$1(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
