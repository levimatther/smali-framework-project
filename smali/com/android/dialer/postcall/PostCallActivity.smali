.class public Lcom/android/dialer/postcall/PostCallActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "PostCallActivity.java"

# interfaces
.implements Lcom/android/dialer/widget/MessageFragment$Listener;


# static fields
.field public static final KEY_MESSAGE:Ljava/lang/String; = "message"

.field public static final KEY_PHONE_NUMBER:Ljava/lang/String; = "phone_number"

.field public static final KEY_RCS_POST_CALL:Ljava/lang/String; = "rcs_post_call"

.field private static final REQUEST_CODE_SEND_SMS:I = 0x1


# instance fields
.field private useRcs:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private getEnrichedCallManager()Lcom/android/dialer/enrichedcall/EnrichedCallManager;
    .locals 1

    .line 139
    invoke-static {p0}, Lcom/android/dialer/enrichedcall/EnrichedCallComponent;->get(Landroid/content/Context;)Lcom/android/dialer/enrichedcall/EnrichedCallComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/enrichedcall/EnrichedCallComponent;->getEnrichedCallManager()Lcom/android/dialer/enrichedcall/EnrichedCallManager;

    move-result-object v0

    return-object v0
.end method

.method public static newIntent(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 2

    .line 52
    new-instance v0, Landroid/content/Intent;

    invoke-static {p0}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    const-class v1, Lcom/android/dialer/postcall/PostCallActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 53
    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string p1, "phone_number"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "rcs_post_call"

    .line 54
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 60
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c00dd

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/dialer/postcall/PostCallActivity;->setContentView(I)V

    const p1, 0x7f090303

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/dialer/postcall/PostCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/widget/DialerToolbar;

    const v0, 0x7f1103b1

    invoke-virtual {p1, v0}, Lcom/android/dialer/widget/DialerToolbar;->setTitle(I)V

    .line 64
    invoke-virtual {p0}, Lcom/android/dialer/postcall/PostCallActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "rcs_post_call"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/dialer/postcall/PostCallActivity;->useRcs:Z

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    .line 65
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "PostCallActivity.onCreate"

    const-string/jumbo v3, "useRcs: %b"

    invoke-static {p1, v3, v2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    iget-boolean p1, p0, Lcom/android/dialer/postcall/PostCallActivity;->useRcs:Z

    if-eqz p1, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/android/dialer/postcall/PostCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f0a0023

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const v3, 0x7f1103b2

    .line 73
    invoke-virtual {p0, v3}, Lcom/android/dialer/postcall/PostCallActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const v1, 0x7f1103b3

    .line 74
    invoke-virtual {p0, v1}, Lcom/android/dialer/postcall/PostCallActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const v1, 0x7f1103b4

    .line 75
    invoke-virtual {p0, v1}, Lcom/android/dialer/postcall/PostCallActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    .line 78
    invoke-static {}, Lcom/android/dialer/widget/MessageFragment;->builder()Lcom/android/dialer/widget/MessageFragment$Builder;

    move-result-object v0

    .line 79
    invoke-virtual {v0, p1}, Lcom/android/dialer/widget/MessageFragment$Builder;->setCharLimit(I)Lcom/android/dialer/widget/MessageFragment$Builder;

    move-result-object p1

    .line 80
    invoke-virtual {p1}, Lcom/android/dialer/widget/MessageFragment$Builder;->showSendIcon()Lcom/android/dialer/widget/MessageFragment$Builder;

    move-result-object p1

    .line 81
    invoke-virtual {p1, v2}, Lcom/android/dialer/widget/MessageFragment$Builder;->setMessages([Ljava/lang/String;)Lcom/android/dialer/widget/MessageFragment$Builder;

    move-result-object p1

    .line 82
    invoke-virtual {p1}, Lcom/android/dialer/widget/MessageFragment$Builder;->build()Lcom/android/dialer/widget/MessageFragment;

    move-result-object p1

    .line 83
    invoke-virtual {p0}, Lcom/android/dialer/postcall/PostCallActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0901fd

    .line 85
    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 86
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public onMessageFragmentAfterTextChange(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onMessageFragmentSendMessage(Ljava/lang/String;)V
    .locals 7

    .line 91
    invoke-virtual {p0}, Lcom/android/dialer/postcall/PostCallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "phone_number"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 92
    invoke-virtual {p0}, Lcom/android/dialer/postcall/PostCallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "message"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    iget-boolean v1, p0, Lcom/android/dialer/postcall/PostCallActivity;->useRcs:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "PostCallActivity.onMessageFragmentSendMessage"

    const-string v3, "sending post call Rcs."

    .line 95
    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    invoke-direct {p0}, Lcom/android/dialer/postcall/PostCallActivity;->getEnrichedCallManager()Lcom/android/dialer/enrichedcall/EnrichedCallManager;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/android/dialer/enrichedcall/EnrichedCallManager;->sendPostCallNote(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {p0, v0}, Lcom/android/dialer/postcall/PostCall;->onMessageSent(Landroid/content/Context;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/dialer/postcall/PostCallActivity;->finish()V

    goto/16 :goto_1

    :cond_0
    const-string v1, "android.permission.SEND_SMS"

    .line 99
    invoke-static {p0, v1}, Lcom/android/dialer/util/PermissionsUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    const-string v4, "PostCallActivity.sendMessage"

    if-eqz v3, :cond_1

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Sending post call SMS."

    .line 100
    invoke-static {v4, v2, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v1

    const/4 v3, 0x0

    .line 103
    invoke-virtual {v1, p1}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    .line 102
    invoke-virtual/range {v1 .. v6}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 104
    invoke-static {p0, v0}, Lcom/android/dialer/postcall/PostCall;->onMessageSent(Landroid/content/Context;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/dialer/postcall/PostCallActivity;->finish()V

    goto :goto_1

    .line 106
    :cond_1
    invoke-static {p0, v1}, Lcom/android/dialer/util/PermissionsUtil;->isFirstRequest(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 107
    invoke-virtual {p0, v1}, Lcom/android/dialer/postcall/PostCallActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "Permission permanently denied, sending to settings."

    .line 111
    invoke-static {v4, v0, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 114
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 115
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/dialer/postcall/PostCallActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/dialer/postcall/PostCallActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_3
    :goto_0
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "Requesting SMS_SEND permission."

    .line 108
    invoke-static {v4, v0, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/dialer/postcall/PostCallActivity;->requestPermissions([Ljava/lang/String;I)V

    :goto_1
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    .line 127
    array-length v0, p2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    aget-object v0, p2, v1

    const-string v2, "android.permission.SEND_SMS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    aget-object p2, p2, v1

    invoke-static {p0, p2}, Lcom/android/dialer/util/PermissionsUtil;->permissionRequested(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 130
    array-length p1, p3

    if-lez p1, :cond_1

    aget p1, p3, v1

    if-nez p1, :cond_1

    .line 133
    invoke-virtual {p0}, Lcom/android/dialer/postcall/PostCallActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string p2, "message"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/dialer/postcall/PostCallActivity;->onMessageFragmentSendMessage(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
