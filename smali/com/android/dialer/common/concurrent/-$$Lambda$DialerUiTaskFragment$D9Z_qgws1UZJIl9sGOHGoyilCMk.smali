.class public final synthetic Lcom/android/dialer/common/concurrent/-$$Lambda$DialerUiTaskFragment$D9Z_qgws1UZJIl9sGOHGoyilCMk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/dialer/common/concurrent/DialerUiTaskFragment;

.field public final synthetic f$1:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/dialer/common/concurrent/DialerUiTaskFragment;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/common/concurrent/-$$Lambda$DialerUiTaskFragment$D9Z_qgws1UZJIl9sGOHGoyilCMk;->f$0:Lcom/android/dialer/common/concurrent/DialerUiTaskFragment;

    iput-object p2, p0, Lcom/android/dialer/common/concurrent/-$$Lambda$DialerUiTaskFragment$D9Z_qgws1UZJIl9sGOHGoyilCMk;->f$1:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/dialer/common/concurrent/-$$Lambda$DialerUiTaskFragment$D9Z_qgws1UZJIl9sGOHGoyilCMk;->f$0:Lcom/android/dialer/common/concurrent/DialerUiTaskFragment;

    iget-object v1, p0, Lcom/android/dialer/common/concurrent/-$$Lambda$DialerUiTaskFragment$D9Z_qgws1UZJIl9sGOHGoyilCMk;->f$1:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Lcom/android/dialer/common/concurrent/DialerUiTaskFragment;->lambda$runTask$5$DialerUiTaskFragment(Ljava/lang/Throwable;)V

    return-void
.end method
