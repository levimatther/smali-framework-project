.class public final synthetic Lcom/android/dialer/blocking/-$$Lambda$BlockedNumbersAutoMigrator$zaSs002ouJWjTK8tnZo-pf949Qs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/dialer/common/concurrent/DialerExecutor$SuccessListener;


# instance fields
.field public final synthetic f$0:Lcom/android/dialer/blocking/BlockedNumbersAutoMigrator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/dialer/blocking/BlockedNumbersAutoMigrator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/blocking/-$$Lambda$BlockedNumbersAutoMigrator$zaSs002ouJWjTK8tnZo-pf949Qs;->f$0:Lcom/android/dialer/blocking/BlockedNumbersAutoMigrator;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/blocking/-$$Lambda$BlockedNumbersAutoMigrator$zaSs002ouJWjTK8tnZo-pf949Qs;->f$0:Lcom/android/dialer/blocking/BlockedNumbersAutoMigrator;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/android/dialer/blocking/BlockedNumbersAutoMigrator;->lambda$zaSs002ouJWjTK8tnZo-pf949Qs(Lcom/android/dialer/blocking/BlockedNumbersAutoMigrator;Z)V

    return-void
.end method
