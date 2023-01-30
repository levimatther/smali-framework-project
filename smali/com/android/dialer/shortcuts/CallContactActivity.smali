.class public Lcom/android/dialer/shortcuts/CallContactActivity;
.super Lcom/android/dialer/util/TransactionSafeActivity;
.source "CallContactActivity.java"

# interfaces
.implements Lcom/android/dialer/interactions/PhoneNumberInteraction$DisambigDialogDismissedListener;
.implements Lcom/android/dialer/interactions/PhoneNumberInteraction$InteractionErrorListener;
.implements Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;


# static fields
.field private static final CONTACT_URI_KEY:Ljava/lang/String; = "uri_key"


# instance fields
.field private contactUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/dialer/util/TransactionSafeActivity;-><init>()V

    return-void
.end method

.method private makeCall()V
    .locals 3

    .line 74
    invoke-static {}, Lcom/android/dialer/callintent/CallSpecificAppData;->newBuilder()Lcom/android/dialer/callintent/CallSpecificAppData$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/callintent/CallInitiationType$Type;->LAUNCHER_SHORTCUT:Lcom/android/dialer/callintent/CallInitiationType$Type;

    .line 75
    invoke-virtual {v0, v1}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->setCallInitiationType(Lcom/android/dialer/callintent/CallInitiationType$Type;)Lcom/android/dialer/callintent/CallSpecificAppData$Builder;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/callintent/CallSpecificAppData;

    .line 77
    iget-object v1, p0, Lcom/android/dialer/shortcuts/CallContactActivity;->contactUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Lcom/android/dialer/interactions/PhoneNumberInteraction;->startInteractionForPhoneCall(Lcom/android/dialer/util/TransactionSafeActivity;Landroid/net/Uri;ZLcom/android/dialer/callintent/CallSpecificAppData;)Lcom/android/dialer/interactions/PhoneNumberInteraction;

    return-void
.end method


# virtual methods
.method public interactionError(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x7f1101d5

    const/4 v0, 0x0

    .line 97
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 101
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 110
    :goto_0
    invoke-virtual {p0}, Lcom/android/dialer/shortcuts/CallContactActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 47
    invoke-super {p0, p1}, Lcom/android/dialer/util/TransactionSafeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/android/dialer/shortcuts/CallContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.android.dialer.shortcuts.CALL_CONTACT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 50
    invoke-static {p0}, Lcom/android/dialer/shortcuts/Shortcuts;->areDynamicShortcutsEnabled(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x0

    const-string v1, "CallContactActivity.onCreate"

    if-eqz p1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "shortcut clicked"

    .line 51
    invoke-static {v1, v0, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    invoke-virtual {p0}, Lcom/android/dialer/shortcuts/CallContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/shortcuts/CallContactActivity;->contactUri:Landroid/net/Uri;

    .line 53
    invoke-direct {p0}, Lcom/android/dialer/shortcuts/CallContactActivity;->makeCall()V

    goto :goto_0

    :cond_0
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "dynamic shortcuts disabled"

    .line 55
    invoke-static {v1, v0, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/dialer/shortcuts/CallContactActivity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 63
    invoke-super {p0}, Lcom/android/dialer/util/TransactionSafeActivity;->onDestroy()V

    const-string v0, "CallContactActivity.onDestroy"

    .line 64
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    return-void
.end method

.method public onDisambigDialogDismissed()V
    .locals 0

    .line 83
    invoke-virtual {p0}, Lcom/android/dialer/shortcuts/CallContactActivity;->finish()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported request code: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 136
    :cond_1
    :goto_0
    array-length p1, p3

    const/4 p2, 0x0

    if-lez p1, :cond_2

    aget p1, p3, p2

    if-nez p1, :cond_2

    .line 137
    invoke-direct {p0}, Lcom/android/dialer/shortcuts/CallContactActivity;->makeCall()V

    goto :goto_1

    :cond_2
    const p1, 0x7f1101d7

    .line 139
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 140
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 141
    invoke-virtual {p0}, Lcom/android/dialer/shortcuts/CallContactActivity;->finish()V

    :goto_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 121
    invoke-super {p0, p1}, Lcom/android/dialer/util/TransactionSafeActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "uri_key"

    .line 125
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lcom/android/dialer/shortcuts/CallContactActivity;->contactUri:Landroid/net/Uri;

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 115
    invoke-super {p0, p1}, Lcom/android/dialer/util/TransactionSafeActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 116
    iget-object v0, p0, Lcom/android/dialer/shortcuts/CallContactActivity;->contactUri:Landroid/net/Uri;

    const-string/jumbo v1, "uri_key"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method
