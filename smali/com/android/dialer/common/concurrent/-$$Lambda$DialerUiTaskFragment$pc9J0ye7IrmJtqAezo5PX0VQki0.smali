.class public final synthetic Lcom/android/dialer/common/concurrent/-$$Lambda$DialerUiTaskFragment$pc9J0ye7IrmJtqAezo5PX0VQki0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/dialer/common/concurrent/DialerUiTaskFragment;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/dialer/common/concurrent/DialerUiTaskFragment;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/common/concurrent/-$$Lambda$DialerUiTaskFragment$pc9J0ye7IrmJtqAezo5PX0VQki0;->f$0:Lcom/android/dialer/common/concurrent/DialerUiTaskFragment;

    iput-object p2, p0, Lcom/android/dialer/common/concurrent/-$$Lambda$DialerUiTaskFragment$pc9J0ye7IrmJtqAezo5PX0VQki0;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/dialer/common/concurrent/-$$Lambda$DialerUiTaskFragment$pc9J0ye7IrmJtqAezo5PX0VQki0;->f$0:Lcom/android/dialer/common/concurrent/DialerUiTaskFragment;

    iget-object v1, p0, Lcom/android/dialer/common/concurrent/-$$Lambda$DialerUiTaskFragment$pc9J0ye7IrmJtqAezo5PX0VQki0;->f$1:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/dialer/common/concurrent/DialerUiTaskFragment;->lambda$executeParallel$2$DialerUiTaskFragment(Ljava/lang/Object;)V

    return-void
.end method
