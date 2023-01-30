.class public final synthetic Lcom/android/dialer/calldetails/-$$Lambda$ReportDialogFragment$HuHOzg4Mnf7N4Tt5dTMGTY1jNWI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/dialer/common/concurrent/DialerExecutor$Worker;


# instance fields
.field public final synthetic f$0:Lcom/android/dialer/calldetails/ReportDialogFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/dialer/calldetails/ReportDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/calldetails/-$$Lambda$ReportDialogFragment$HuHOzg4Mnf7N4Tt5dTMGTY1jNWI;->f$0:Lcom/android/dialer/calldetails/ReportDialogFragment;

    return-void
.end method


# virtual methods
.method public final doInBackground(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/calldetails/-$$Lambda$ReportDialogFragment$HuHOzg4Mnf7N4Tt5dTMGTY1jNWI;->f$0:Lcom/android/dialer/calldetails/ReportDialogFragment;

    check-cast p1, Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/dialer/calldetails/ReportDialogFragment;->lambda$HuHOzg4Mnf7N4Tt5dTMGTY1jNWI(Lcom/android/dialer/calldetails/ReportDialogFragment;Landroid/content/Context;)Landroidx/core/util/Pair;

    move-result-object p1

    return-object p1
.end method
