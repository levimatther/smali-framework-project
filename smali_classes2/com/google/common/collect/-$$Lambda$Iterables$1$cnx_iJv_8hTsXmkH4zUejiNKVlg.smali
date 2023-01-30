.class public final synthetic Lcom/google/common/collect/-$$Lambda$Iterables$1$cnx_iJv_8hTsXmkH4zUejiNKVlg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Ljava/lang/Iterable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/-$$Lambda$Iterables$1$cnx_iJv_8hTsXmkH4zUejiNKVlg;->f$0:Ljava/lang/Iterable;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/-$$Lambda$Iterables$1$cnx_iJv_8hTsXmkH4zUejiNKVlg;->f$0:Ljava/lang/Iterable;

    invoke-static {v0}, Lcom/google/common/collect/Iterables$1;->lambda$spliterator$0(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method
