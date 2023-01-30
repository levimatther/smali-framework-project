.class public Lcom/android/incallui/InComingRttCallDialog;
.super Landroid/app/Dialog;
.source "InComingRttCallDialog.java"

# interfaces
.implements Landroid/widget/MenuBar$MenuBarListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/InComingRttCallDialog$ContactLookupCallback;
    }
.end annotation


# static fields
.field private static final ARG_CALL_ID:Ljava/lang/String; = "call_id"

.field private static final ARG_RTT_REQUEST_ID:Ljava/lang/String; = "rtt_request_id"


# instance fields
.field private mCallId:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private menuBar:Landroid/widget/MenuBar;

.field private rttRequestInformation:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f1202ce

    .line 53
    invoke-direct {p0, p2, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 54
    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/android/incallui/InComingRttCallDialog;->mCallId:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/android/incallui/InComingRttCallDialog;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/InComingRttCallDialog;Ljava/lang/CharSequence;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/android/incallui/InComingRttCallDialog;->setNameOrNumber(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setNameOrNumber(Ljava/lang/CharSequence;)V
    .locals 4

    .line 149
    iget-object v0, p0, Lcom/android/incallui/InComingRttCallDialog;->rttRequestInformation:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/incallui/InComingRttCallDialog;->mContext:Landroid/content/Context;

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

    .line 71
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public getCurrentFocus()Landroid/view/View;
    .locals 1

    .line 98
    invoke-super {p0}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onClickCSK()Z
    .locals 1

    .line 124
    invoke-virtual {p0}, Lcom/android/incallui/InComingRttCallDialog;->dismiss()V

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

    .line 76
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "InComingRttCallDialog.onCreateDialog"

    const-string v0, ""

    .line 77
    invoke-static {p1, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object p1, p0, Lcom/android/incallui/InComingRttCallDialog;->mContext:Landroid/content/Context;

    const v0, 0x7f0c008c

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0xe

    .line 79
    invoke-virtual {p0, v0}, Lcom/android/incallui/InComingRttCallDialog;->requestWindowFeature(I)Z

    .line 80
    invoke-virtual {p0}, Lcom/android/incallui/InComingRttCallDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 81
    invoke-virtual {p0}, Lcom/android/incallui/InComingRttCallDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 82
    invoke-virtual {p0}, Lcom/android/incallui/InComingRttCallDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 83
    invoke-virtual {p0}, Lcom/android/incallui/InComingRttCallDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 84
    invoke-virtual {p0, p1}, Lcom/android/incallui/InComingRttCallDialog;->setContentView(Landroid/view/View;)V

    const p1, 0x7f09020b

    .line 85
    invoke-virtual {p0, p1}, Lcom/android/incallui/InComingRttCallDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/incallui/InComingRttCallDialog;->rttRequestInformation:Landroid/widget/TextView;

    .line 87
    invoke-virtual {p0}, Lcom/android/incallui/InComingRttCallDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object p1

    .line 89
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v0

    iget-object v3, p0, Lcom/android/incallui/InComingRttCallDialog;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/incallui/call/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    .line 90
    new-instance v3, Lcom/android/incallui/InComingRttCallDialog$ContactLookupCallback;

    invoke-direct {v3, p0, v1}, Lcom/android/incallui/InComingRttCallDialog$ContactLookupCallback;-><init>(Lcom/android/incallui/InComingRttCallDialog;Lcom/android/incallui/InComingRttCallDialog$1;)V

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/incallui/ContactInfoCache;->findInfo(Lcom/android/incallui/call/DialerCall;ZLcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/incallui/InComingRttCallDialog;->getMenuBar()Landroid/widget/MenuBar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/incallui/InComingRttCallDialog;->menuBar:Landroid/widget/MenuBar;

    .line 92
    invoke-virtual {p1, p0}, Landroid/widget/MenuBar;->setMenuBarListener(Landroid/widget/MenuBar$MenuBarListener;)V

    .line 93
    iget-object p1, p0, Lcom/android/incallui/InComingRttCallDialog;->menuBar:Landroid/widget/MenuBar;

    const v0, 0x7f11006d

    invoke-virtual {p1, v2, v0, v2, v1}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/android/incallui/InComingRttCallDialog;->dismiss()V

    .line 106
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/incallui/InComingRttCallDialog;->menuBar:Landroid/widget/MenuBar;

    invoke-virtual {v0, p1, p2}, Landroid/widget/MenuBar;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 114
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

    .line 60
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 61
    invoke-virtual {p0}, Lcom/android/incallui/InComingRttCallDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x50

    .line 62
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, -0x1

    .line 63
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x2

    .line 64
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 65
    invoke-virtual {p0}, Lcom/android/incallui/InComingRttCallDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 66
    invoke-virtual {p0}, Lcom/android/incallui/InComingRttCallDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
