.class public Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;
.super Ljava/lang/Object;
.source "LoadingDialogUtil.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private dialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "LoadingDialogUtil"

    .line 36
    iput-object v0, p0, Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;->TAG:Ljava/lang/String;

    .line 38
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0067

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 39
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;->dialog:Landroid/app/Dialog;

    const/4 p1, 0x0

    .line 40
    invoke-virtual {v1, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 41
    iget-object v1, p0, Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 42
    iget-object p1, p0, Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    const-string v0, "LoadingDialogUtil"

    const-string v1, "dismiss"

    .line 53
    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public show()V
    .locals 2

    const-string v0, "LoadingDialogUtil"

    const-string v1, "show"

    .line 46
    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method
