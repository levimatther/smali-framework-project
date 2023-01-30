.class public final synthetic Lcom/android/dialer/calldetails/-$$Lambda$ReportDialogFragment$qUtbibLsGpvBOtxe3YdowZr6fxM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic f$0:Lcom/android/dialer/calldetails/ReportDialogFragment;

.field public final synthetic f$1:Landroid/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/dialer/calldetails/ReportDialogFragment;Landroid/app/AlertDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/calldetails/-$$Lambda$ReportDialogFragment$qUtbibLsGpvBOtxe3YdowZr6fxM;->f$0:Lcom/android/dialer/calldetails/ReportDialogFragment;

    iput-object p2, p0, Lcom/android/dialer/calldetails/-$$Lambda$ReportDialogFragment$qUtbibLsGpvBOtxe3YdowZr6fxM;->f$1:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/dialer/calldetails/-$$Lambda$ReportDialogFragment$qUtbibLsGpvBOtxe3YdowZr6fxM;->f$0:Lcom/android/dialer/calldetails/ReportDialogFragment;

    iget-object v1, p0, Lcom/android/dialer/calldetails/-$$Lambda$ReportDialogFragment$qUtbibLsGpvBOtxe3YdowZr6fxM;->f$1:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1, p1}, Lcom/android/dialer/calldetails/ReportDialogFragment;->lambda$onCreateDialog$2$ReportDialogFragment(Landroid/app/AlertDialog;Landroid/content/DialogInterface;)V

    return-void
.end method
