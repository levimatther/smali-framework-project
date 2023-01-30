.class public final synthetic Lcom/android/dialer/calldetails/-$$Lambda$ReportDialogFragment$my6O1VtbMf1psk3UjDS39ZuEpHw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/dialer/common/concurrent/DialerExecutor$SuccessListener;


# instance fields
.field public final synthetic f$0:Lcom/android/dialer/calldetails/ReportDialogFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/dialer/calldetails/ReportDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/calldetails/-$$Lambda$ReportDialogFragment$my6O1VtbMf1psk3UjDS39ZuEpHw;->f$0:Lcom/android/dialer/calldetails/ReportDialogFragment;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/calldetails/-$$Lambda$ReportDialogFragment$my6O1VtbMf1psk3UjDS39ZuEpHw;->f$0:Lcom/android/dialer/calldetails/ReportDialogFragment;

    check-cast p1, Lcom/android/dialer/phonenumbercache/CachedNumberLookupService$CachedContactInfo;

    invoke-static {v0, p1}, Lcom/android/dialer/calldetails/ReportDialogFragment;->lambda$my6O1VtbMf1psk3UjDS39ZuEpHw(Lcom/android/dialer/calldetails/ReportDialogFragment;Lcom/android/dialer/phonenumbercache/CachedNumberLookupService$CachedContactInfo;)V

    return-void
.end method
