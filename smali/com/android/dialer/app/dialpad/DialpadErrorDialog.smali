.class public Lcom/android/dialer/app/dialpad/DialpadErrorDialog;
.super Landroid/app/TctDialog;
.source "DialpadErrorDialog.java"


# instance fields
.field public context:Landroid/content/Context;

.field private isSpeedDial:Z

.field private mNumber:I

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Landroid/app/TctDialog;-><init>(Landroid/content/Context;)V

    .line 24
    iput-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadErrorDialog;->context:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 3

    .line 28
    invoke-direct {p0, p1}, Landroid/app/TctDialog;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadErrorDialog;->context:Landroid/content/Context;

    .line 30
    iput p2, p0, Lcom/android/dialer/app/dialpad/DialpadErrorDialog;->mType:I

    .line 31
    iput p3, p0, Lcom/android/dialer/app/dialpad/DialpadErrorDialog;->mNumber:I

    .line 32
    iput-boolean p4, p0, Lcom/android/dialer/app/dialpad/DialpadErrorDialog;->isSpeedDial:Z

    const/4 p3, 0x1

    const v0, 0x7f11006d

    const/4 v1, 0x0

    if-eq p2, p3, :cond_3

    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    const/4 p4, 0x3

    if-eq p2, p4, :cond_0

    goto :goto_1

    :cond_0
    const p2, 0x7f110484

    .line 51
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 52
    invoke-virtual {p0, p2}, Lcom/android/dialer/app/dialpad/DialpadErrorDialog;->setDialogTitle(Ljava/lang/CharSequence;)Landroid/app/TctDialog;

    const p2, 0x7f110483

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    .line 53
    iget v2, p0, Lcom/android/dialer/app/dialpad/DialpadErrorDialog;->mNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p3, p4

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/dialer/app/dialpad/DialpadErrorDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/TctDialog;

    const p1, 0x7f110343

    .line 55
    invoke-virtual {p0, p1, v1}, Lcom/android/dialer/app/dialpad/DialpadErrorDialog;->setLeftButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/TctDialog;

    .line 56
    invoke-virtual {p0, v0, v1}, Lcom/android/dialer/app/dialpad/DialpadErrorDialog;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/TctDialog;

    goto :goto_1

    :cond_1
    if-eqz p4, :cond_2

    const p2, 0x7f1101eb

    .line 43
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const p2, 0x7f1101f1

    .line 45
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 47
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/dialer/app/dialpad/DialpadErrorDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/TctDialog;

    .line 48
    invoke-virtual {p0, v0, v1}, Lcom/android/dialer/app/dialpad/DialpadErrorDialog;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/TctDialog;

    goto :goto_1

    :cond_3
    const p2, 0x7f1101e8

    .line 37
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/dialer/app/dialpad/DialpadErrorDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/TctDialog;

    .line 39
    invoke-virtual {p0, v0, v1}, Lcom/android/dialer/app/dialpad/DialpadErrorDialog;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/TctDialog;

    :goto_1
    return-void
.end method


# virtual methods
.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p1, v0, :cond_0

    .line 70
    iget v2, p0, Lcom/android/dialer/app/dialpad/DialpadErrorDialog;->mType:I

    if-eq v2, v1, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadErrorDialog;->dismiss()V

    :cond_0
    if-ne p1, v1, :cond_3

    .line 74
    iget v2, p0, Lcom/android/dialer/app/dialpad/DialpadErrorDialog;->mType:I

    if-ne v2, v1, :cond_1

    .line 75
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadErrorDialog;->dismiss()V

    goto :goto_1

    :cond_1
    if-ne v2, v0, :cond_2

    .line 77
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x4000000

    .line 78
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 80
    :try_start_0
    iget-object v1, p0, Lcom/android/dialer/app/dialpad/DialpadErrorDialog;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "DialpadErrorDialog"

    const-string v1, "Could not find voice mail setup activity"

    .line 82
    invoke-static {v0, v1}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    :goto_0
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadErrorDialog;->dismiss()V

    goto :goto_1

    :cond_2
    const/4 v0, 0x3

    if-ne v2, v0, :cond_3

    .line 86
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/dialer/app/dialpad/DialpadErrorDialog;->context:Landroid/content/Context;

    const-class v2, Lcom/android/dialer/app/settings/SpeedDialListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    iget-object v1, p0, Lcom/android/dialer/app/dialpad/DialpadErrorDialog;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/dialer/app/dialpad/DialpadErrorDialog;->dismiss()V

    .line 91
    :cond_3
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/app/TctDialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public show()V
    .locals 0

    .line 65
    invoke-super {p0}, Landroid/app/TctDialog;->show()V

    return-void
.end method
