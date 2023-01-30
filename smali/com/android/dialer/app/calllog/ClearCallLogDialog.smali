.class public Lcom/android/dialer/app/calllog/ClearCallLogDialog;
.super Landroid/app/DialogFragment;
.source "ClearCallLogDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/app/calllog/ClearCallLogDialog$Listener;
    }
.end annotation


# instance fields
.field private listener:Lcom/android/dialer/app/calllog/ClearCallLogDialog$Listener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/app/calllog/ClearCallLogDialog;)Lcom/android/dialer/app/calllog/ClearCallLogDialog$Listener;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/dialer/app/calllog/ClearCallLogDialog;->listener:Lcom/android/dialer/app/calllog/ClearCallLogDialog$Listener;

    return-object p0
.end method

.method public static show(Landroid/app/FragmentManager;Lcom/android/dialer/app/calllog/ClearCallLogDialog$Listener;)V
    .locals 1

    .line 45
    new-instance v0, Lcom/android/dialer/app/calllog/ClearCallLogDialog;

    invoke-direct {v0}, Lcom/android/dialer/app/calllog/ClearCallLogDialog;-><init>()V

    .line 46
    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/app/calllog/ClearCallLogDialog$Listener;

    iput-object p1, v0, Lcom/android/dialer/app/calllog/ClearCallLogDialog;->listener:Lcom/android/dialer/app/calllog/ClearCallLogDialog$Listener;

    const-string p1, "deleteCallLog"

    .line 47
    invoke-virtual {v0, p0, p1}, Lcom/android/dialer/app/calllog/ClearCallLogDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 52
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/ClearCallLogDialog;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 53
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/ClearCallLogDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 54
    new-instance v1, Lcom/android/dialer/app/calllog/ClearCallLogDialog$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/dialer/app/calllog/ClearCallLogDialog$1;-><init>(Lcom/android/dialer/app/calllog/ClearCallLogDialog;Landroid/content/ContentResolver;Landroid/content/Context;)V

    .line 96
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/ClearCallLogDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f110133

    .line 100
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f110006

    const/4 v2, 0x0

    .line 101
    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f110007

    .line 102
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 104
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 105
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
