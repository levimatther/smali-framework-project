.class public Lcom/android/incallui/RttRequestDialog;
.super Landroid/app/Dialog;
.source "RttRequestDialog.java"

# interfaces
.implements Landroid/widget/MenuBar$MenuBarListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/RttRequestDialog$ContactLookupCallback;
    }
.end annotation


# static fields
.field private static final ARG_CALL_ID:Ljava/lang/String; = "call_id"

.field private static final ARG_RTT_REQUEST_ID:Ljava/lang/String; = "rtt_request_id"


# instance fields
.field private mCallId:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mRttRequestId:I

.field private menuBar:Landroid/widget/MenuBar;

.field private rttRequestInformation:Landroid/widget/TextView;

.field private rttRequestTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/content/Context;)V
    .locals 1

    const v0, 0x7f1202ce

    .line 59
    invoke-direct {p0, p3, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 60
    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/android/incallui/RttRequestDialog;->mCallId:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lcom/android/incallui/RttRequestDialog;->mContext:Landroid/content/Context;

    .line 62
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/incallui/RttRequestDialog;->mRttRequestId:I

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/RttRequestDialog;Ljava/lang/CharSequence;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/android/incallui/RttRequestDialog;->setNameOrNumber(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private onNegativeButtonClick()V
    .locals 3

    const-string v0, "RttRequestDialog.onNegativeButtonClick"

    const-string v1, ""

    .line 140
    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/RttRequestDialog;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/incallui/call/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    .line 143
    iget v1, p0, Lcom/android/incallui/RttRequestDialog;->mRttRequestId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/incallui/call/DialerCall;->respondToRttRequest(ZI)V

    .line 144
    invoke-virtual {p0}, Lcom/android/incallui/RttRequestDialog;->dismiss()V

    return-void
.end method

.method private onPositiveButtonClick()V
    .locals 3

    const-string v0, "RttRequestDialog.onPositiveButtonClick"

    const-string v1, ""

    .line 133
    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/RttRequestDialog;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/incallui/call/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    .line 135
    iget v1, p0, Lcom/android/incallui/RttRequestDialog;->mRttRequestId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/incallui/call/DialerCall;->respondToRttRequest(ZI)V

    .line 136
    invoke-virtual {p0}, Lcom/android/incallui/RttRequestDialog;->dismiss()V

    return-void
.end method

.method private setNameOrNumber(Ljava/lang/CharSequence;)V
    .locals 4

    .line 184
    iget-object v0, p0, Lcom/android/incallui/RttRequestDialog;->rttRequestInformation:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/incallui/RttRequestDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const p1, 0x7f11040e

    invoke-virtual {v1, p1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .line 79
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public getCurrentFocus()Landroid/view/View;
    .locals 1

    .line 114
    invoke-super {p0}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onClickCSK()Z
    .locals 3

    const-string v0, "RttRequestDialog.onClickCSK"

    const-string v1, ""

    .line 154
    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/RttRequestDialog;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/incallui/call/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 157
    iget v2, p0, Lcom/android/incallui/RttRequestDialog;->mRttRequestId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/call/DialerCall;->respondToRttRequest(ZI)V

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/RttRequestDialog;->dismiss()V

    const/4 v0, 0x0

    return v0
.end method

.method public onClickLSK()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onClickRSK()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 84
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "RttRequestDialog.onCreateDialog"

    const-string v0, ""

    .line 85
    invoke-static {p1, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object p1, p0, Lcom/android/incallui/RttRequestDialog;->mContext:Landroid/content/Context;

    const v0, 0x7f0c008d

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0xe

    .line 87
    invoke-virtual {p0, v0}, Lcom/android/incallui/RttRequestDialog;->requestWindowFeature(I)Z

    .line 88
    invoke-virtual {p0}, Lcom/android/incallui/RttRequestDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 89
    invoke-virtual {p0}, Lcom/android/incallui/RttRequestDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 90
    invoke-virtual {p0}, Lcom/android/incallui/RttRequestDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 91
    invoke-virtual {p0}, Lcom/android/incallui/RttRequestDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 92
    invoke-virtual {p0, p1}, Lcom/android/incallui/RttRequestDialog;->setContentView(Landroid/view/View;)V

    const p1, 0x7f090121

    .line 93
    invoke-virtual {p0, p1}, Lcom/android/incallui/RttRequestDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/incallui/RttRequestDialog;->rttRequestTitle:Landroid/widget/TextView;

    const p1, 0x7f09020b

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/incallui/RttRequestDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/incallui/RttRequestDialog;->rttRequestInformation:Landroid/widget/TextView;

    .line 102
    invoke-virtual {p0}, Lcom/android/incallui/RttRequestDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object p1

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreateDialog mCallId = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/incallui/RttRequestDialog;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "RttRequestDialog"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v0

    iget-object v3, p0, Lcom/android/incallui/RttRequestDialog;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/incallui/call/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    .line 106
    new-instance v3, Lcom/android/incallui/RttRequestDialog$ContactLookupCallback;

    invoke-direct {v3, p0, v1}, Lcom/android/incallui/RttRequestDialog$ContactLookupCallback;-><init>(Lcom/android/incallui/RttRequestDialog;Lcom/android/incallui/RttRequestDialog$1;)V

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/incallui/ContactInfoCache;->findInfo(Lcom/android/incallui/call/DialerCall;ZLcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/incallui/RttRequestDialog;->getMenuBar()Landroid/widget/MenuBar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/incallui/RttRequestDialog;->menuBar:Landroid/widget/MenuBar;

    .line 108
    invoke-virtual {p1, p0}, Landroid/widget/MenuBar;->setMenuBarListener(Landroid/widget/MenuBar$MenuBarListener;)V

    .line 109
    iget-object p1, p0, Lcom/android/incallui/RttRequestDialog;->menuBar:Landroid/widget/MenuBar;

    const v0, 0x7f11006d

    invoke-virtual {p1, v2, v0, v2, v1}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 119
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/incallui/RttRequestDialog;->menuBar:Landroid/widget/MenuBar;

    invoke-virtual {v0, p1, p2}, Landroid/widget/MenuBar;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 127
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onOptionMenuClick(I)V
    .locals 0

    return-void
.end method

.method public onOptionMenuDismiss()V
    .locals 0

    return-void
.end method

.method public onOptionMenuShow()V
    .locals 0

    return-void
.end method

.method public show()V
    .locals 3

    .line 67
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    const-string v0, "RttRequestDialog"

    const-string v1, "Dialog show"

    .line 68
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {p0}, Lcom/android/incallui/RttRequestDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x50

    .line 70
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, -0x1

    .line 71
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x2

    .line 72
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 73
    invoke-virtual {p0}, Lcom/android/incallui/RttRequestDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 74
    invoke-virtual {p0}, Lcom/android/incallui/RttRequestDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
