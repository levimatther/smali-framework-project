.class public Lcom/android/dialer/app/DialpadActivity;
.super Lcom/android/dialer/util/TransactionSafeActivity;
.source "DialpadActivity.java"

# interfaces
.implements Lcom/android/dialer/app/list/SearchFragment$HostInterface;
.implements Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;
.implements Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;
.implements Landroid/widget/MenuBar$MenuBarListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/app/DialpadActivity$MyReceiver;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "DialpadActivity"


# instance fields
.field private mDialerDatabaseHelper:Lcom/android/dialer/database/DialerDatabaseHelper;

.field private mDialpadFragment:Lcom/android/dialer/app/dialpad/DialpadFragment;

.field private mDialpadfinishReceiver:Lcom/android/dialer/app/DialpadActivity$MyReceiver;

.field private mPhoneNumberInteraction:Lcom/android/dialer/interactions/PhoneNumberInteraction;

.field private mSmartDialSearchFragment:Lcom/android/dialer/app/list/SmartDialSearchFragment;

.field private mUri:Landroid/net/Uri;

.field private menuBar:Landroid/widget/MenuBar;

.field private rttCallDialog:Lcom/android/incallui/RttCallDialog;

.field update_thread:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/android/dialer/util/TransactionSafeActivity;-><init>()V

    .line 113
    new-instance v0, Lcom/android/dialer/app/DialpadActivity$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/app/DialpadActivity$1;-><init>(Lcom/android/dialer/app/DialpadActivity;)V

    iput-object v0, p0, Lcom/android/dialer/app/DialpadActivity;->update_thread:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/app/DialpadActivity;)Lcom/android/dialer/database/DialerDatabaseHelper;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/dialer/app/DialpadActivity;->mDialerDatabaseHelper:Lcom/android/dialer/database/DialerDatabaseHelper;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/dialer/app/DialpadActivity;)Lcom/android/dialer/app/dialpad/DialpadFragment;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/dialer/app/DialpadActivity;->mDialpadFragment:Lcom/android/dialer/app/dialpad/DialpadFragment;

    return-object p0
.end method


# virtual methods
.method public getActionBarHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDialpadHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isActionBarShowing()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDialpadShown()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "DialtactsActivity.onAttachFragment"

    const-string v2, "fragment: %s"

    .line 311
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 312
    instance-of v0, p1, Lcom/android/dialer/app/list/SmartDialSearchFragment;

    if-eqz v0, :cond_0

    .line 313
    check-cast p1, Lcom/android/dialer/app/list/SmartDialSearchFragment;

    iput-object p1, p0, Lcom/android/dialer/app/DialpadActivity;->mSmartDialSearchFragment:Lcom/android/dialer/app/list/SmartDialSearchFragment;

    .line 314
    invoke-virtual {p1, p0}, Lcom/android/dialer/app/list/SmartDialSearchFragment;->setOnPhoneNumberPickerActionListener(Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;)V

    :cond_0
    return-void
.end method

.method public onClickCSK()Z
    .locals 1

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
    .locals 2

    .line 63
    invoke-super {p0, p1}, Lcom/android/dialer/util/TransactionSafeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/dialer/app/DialpadActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "DialpadActivity"

    const-string v1, "onCreate"

    .line 65
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 66
    invoke-virtual {p0, p1}, Lcom/android/dialer/app/DialpadActivity;->requestWindowFeature(I)Z

    .line 67
    invoke-virtual {p0}, Lcom/android/dialer/app/DialpadActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 69
    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->hide()V

    .line 72
    :cond_0
    new-instance p1, Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-direct {p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/app/DialpadActivity;->mDialpadFragment:Lcom/android/dialer/app/dialpad/DialpadFragment;

    const p1, 0x7f0c006f

    .line 73
    invoke-virtual {p0, p1}, Lcom/android/dialer/app/DialpadActivity;->setContentView(I)V

    .line 74
    invoke-virtual {p0}, Lcom/android/dialer/app/DialpadActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/dialer/app/DialpadActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    const v0, 0x7f090136

    iget-object v1, p0, Lcom/android/dialer/app/DialpadActivity;->mDialpadFragment:Lcom/android/dialer/app/dialpad/DialpadFragment;

    .line 76
    invoke-virtual {p1, v0, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 78
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    .line 79
    invoke-static {p0}, Lcom/android/dialer/database/Database;->get(Landroid/content/Context;)Lcom/android/dialer/database/DatabaseBindings;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/android/dialer/database/DatabaseBindings;->getDatabaseHelper(Landroid/content/Context;)Lcom/android/dialer/database/DialerDatabaseHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/app/DialpadActivity;->mDialerDatabaseHelper:Lcom/android/dialer/database/DialerDatabaseHelper;

    .line 81
    invoke-virtual {p0}, Lcom/android/dialer/app/DialpadActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x400

    .line 82
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 84
    invoke-virtual {p0}, Lcom/android/dialer/app/DialpadActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/dialer/app/DialpadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 86
    iget-object p1, p0, Lcom/android/dialer/app/DialpadActivity;->mDialpadfinishReceiver:Lcom/android/dialer/app/DialpadActivity$MyReceiver;

    if-nez p1, :cond_1

    .line 87
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "com.android.dialer.finish"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 89
    new-instance v0, Lcom/android/dialer/app/DialpadActivity$MyReceiver;

    invoke-direct {v0, p0}, Lcom/android/dialer/app/DialpadActivity$MyReceiver;-><init>(Lcom/android/dialer/app/DialpadActivity;)V

    iput-object v0, p0, Lcom/android/dialer/app/DialpadActivity;->mDialpadfinishReceiver:Lcom/android/dialer/app/DialpadActivity$MyReceiver;

    .line 90
    invoke-virtual {p0, v0, p1}, Lcom/android/dialer/app/DialpadActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/android/dialer/app/DialpadActivity;->mDialpadfinishReceiver:Lcom/android/dialer/app/DialpadActivity$MyReceiver;

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0, v0}, Lcom/android/dialer/app/DialpadActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 138
    :cond_0
    invoke-super {p0}, Lcom/android/dialer/util/TransactionSafeActivity;->onDestroy()V

    return-void
.end method

.method public onHomeInActionBarSelected()V
    .locals 0

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 210
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x18

    if-eq p1, v0, :cond_0

    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/dialer/app/DialpadActivity;->mDialpadFragment:Lcom/android/dialer/app/dialpad/DialpadFragment;

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {v0, p1, p2}, Lcom/android/dialer/app/dialpad/DialpadFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z

    const/4 p1, 0x1

    return p1

    .line 220
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/dialer/util/TransactionSafeActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x18

    if-eq p1, v0, :cond_0

    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/dialer/app/DialpadActivity;->mDialpadFragment:Lcom/android/dialer/app/dialpad/DialpadFragment;

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0, p1, p2}, Lcom/android/dialer/app/dialpad/DialpadFragment;->onKeyUp(ILandroid/view/KeyEvent;)Z

    const/4 p1, 0x1

    return p1

    .line 204
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/dialer/util/TransactionSafeActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    .line 97
    invoke-super {p0, p1}, Lcom/android/dialer/util/TransactionSafeActivity;->onNewIntent(Landroid/content/Intent;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DialpadActivity"

    const-string v2, "onNewIntent"

    .line 98
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    invoke-virtual {p0, p1}, Lcom/android/dialer/app/DialpadActivity;->setIntent(Landroid/content/Intent;)V

    .line 101
    iget-object p1, p0, Lcom/android/dialer/app/DialpadActivity;->mDialpadFragment:Lcom/android/dialer/app/dialpad/DialpadFragment;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->setStartFromActivity(Z)V

    return-void
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

.method protected onPause()V
    .locals 3

    .line 124
    invoke-super {p0}, Lcom/android/dialer/util/TransactionSafeActivity;->onPause()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DialpadActivity"

    const-string v2, "onPause"

    .line 126
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onPickDataUri(Landroid/net/Uri;ZLcom/android/dialer/callintent/CallSpecificAppData;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/android/dialer/app/DialpadActivity;->mUri:Landroid/net/Uri;

    .line 229
    invoke-static {p0, p1, p2, p3}, Lcom/android/dialer/interactions/PhoneNumberInteraction;->startInteractionForPhoneCall(Lcom/android/dialer/util/TransactionSafeActivity;Landroid/net/Uri;ZLcom/android/dialer/callintent/CallSpecificAppData;)Lcom/android/dialer/interactions/PhoneNumberInteraction;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/app/DialpadActivity;->mPhoneNumberInteraction:Lcom/android/dialer/interactions/PhoneNumberInteraction;

    return-void
.end method

.method public onPickPhoneNumber(Ljava/lang/String;ZLcom/android/dialer/callintent/CallSpecificAppData;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, ""

    .line 245
    :cond_0
    invoke-static {}, Lcom/android/tct/common/RttManager;->getInstance()Lcom/android/tct/common/RttManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/dialer/app/DialpadActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tct/common/RttManager;->shouldShowRttCallButton(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 246
    new-instance v0, Landroid/widget/MenuBar;

    invoke-direct {v0, p0}, Landroid/widget/MenuBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/dialer/app/DialpadActivity;->menuBar:Landroid/widget/MenuBar;

    .line 247
    new-instance v0, Lcom/android/dialer/app/DialpadActivity$2;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/android/dialer/app/DialpadActivity$2;-><init>(Lcom/android/dialer/app/DialpadActivity;Ljava/lang/String;Lcom/android/dialer/callintent/CallSpecificAppData;Z)V

    .line 272
    new-instance p1, Lcom/android/incallui/RttCallDialog;

    invoke-direct {p1, p0, v0}, Lcom/android/incallui/RttCallDialog;-><init>(Landroid/content/Context;Lcom/android/incallui/RttCallDialog$RttDialogListener;)V

    iput-object p1, p0, Lcom/android/dialer/app/DialpadActivity;->rttCallDialog:Lcom/android/incallui/RttCallDialog;

    .line 273
    invoke-virtual {p1}, Lcom/android/incallui/RttCallDialog;->show()V

    .line 274
    iget-object p1, p0, Lcom/android/dialer/app/DialpadActivity;->menuBar:Landroid/widget/MenuBar;

    invoke-static {p0}, Lcom/android/operatorutils/CarrierConfigManagerEx;->isDishInSimpleMode(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    const p2, 0x7f11000b

    goto :goto_0

    :cond_1
    const p2, 0x7f1102f6

    :goto_0
    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2, v0, p3}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    goto :goto_1

    .line 278
    :cond_2
    new-instance v0, Lcom/android/dialer/callintent/CallIntentBuilder;

    invoke-direct {v0, p1, p3}, Lcom/android/dialer/callintent/CallIntentBuilder;-><init>(Ljava/lang/String;Lcom/android/dialer/callintent/CallSpecificAppData;)V

    .line 279
    invoke-virtual {v0, p2}, Lcom/android/dialer/callintent/CallIntentBuilder;->setIsVideoCall(Z)Lcom/android/dialer/callintent/CallIntentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/dialer/callintent/CallIntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    const/4 p2, 0x1

    const-string p3, "isDialpad"

    .line 280
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 281
    invoke-static {p0, p1}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 282
    iget-object p1, p0, Lcom/android/dialer/app/DialpadActivity;->mDialpadFragment:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-virtual {p1}, Lcom/android/dialer/app/dialpad/DialpadFragment;->clearDialpadForCallFromSearchList()V

    :goto_1
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 299
    :cond_0
    array-length p1, p3

    if-lez p1, :cond_1

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_1

    .line 303
    iget-object p1, p0, Lcom/android/dialer/app/DialpadActivity;->mPhoneNumberInteraction:Lcom/android/dialer/interactions/PhoneNumberInteraction;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/android/dialer/app/DialpadActivity;->mUri:Landroid/net/Uri;

    if-eqz p2, :cond_1

    .line 304
    invoke-virtual {p1, p2}, Lcom/android/dialer/interactions/PhoneNumberInteraction;->startInteraction(Landroid/net/Uri;)V

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 106
    invoke-super {p0}, Lcom/android/dialer/util/TransactionSafeActivity;->onResume()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DialpadActivity"

    const-string v2, "onResume"

    .line 107
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 110
    iget-object v1, p0, Lcom/android/dialer/app/DialpadActivity;->update_thread:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onStop()V
    .locals 3

    .line 144
    invoke-super {p0}, Lcom/android/dialer/util/TransactionSafeActivity;->onStop()V

    .line 146
    invoke-virtual {p0}, Lcom/android/dialer/app/DialpadActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "isDialpActivityResume"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 148
    sget-object v0, Lcom/android/dialer/app/SpecialCharSequenceMgr;->mTctDialog:Landroid/app/TctDialog;

    if-eqz v0, :cond_0

    .line 149
    sget-object v0, Lcom/android/dialer/app/SpecialCharSequenceMgr;->mTctDialog:Landroid/app/TctDialog;

    invoke-virtual {v0}, Landroid/app/TctDialog;->dismiss()V

    const/4 v0, 0x0

    .line 150
    sput-object v0, Lcom/android/dialer/app/SpecialCharSequenceMgr;->mTctDialog:Landroid/app/TctDialog;

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/DialpadActivity;->mDialpadFragment:Lcom/android/dialer/app/dialpad/DialpadFragment;

    if-eqz v0, :cond_1

    .line 153
    invoke-virtual {v0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->dissMissDialog()V

    .line 154
    iget-object v0, p0, Lcom/android/dialer/app/DialpadActivity;->mDialpadFragment:Lcom/android/dialer/app/dialpad/DialpadFragment;

    invoke-virtual {v0}, Lcom/android/dialer/app/dialpad/DialpadFragment;->clearDialpad()V

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/app/DialpadActivity;->rttCallDialog:Lcom/android/incallui/RttCallDialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/RttCallDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 157
    iget-object v0, p0, Lcom/android/dialer/app/DialpadActivity;->rttCallDialog:Lcom/android/incallui/RttCallDialog;

    invoke-virtual {v0}, Lcom/android/incallui/RttCallDialog;->dismiss()V

    :cond_2
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 165
    invoke-super {p0, p1}, Lcom/android/dialer/util/TransactionSafeActivity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "DialpadActivity"

    const-string v1, "hasFocus = true"

    .line 168
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    invoke-virtual {p0}, Lcom/android/dialer/app/DialpadActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "isDialpActivityResume"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method
