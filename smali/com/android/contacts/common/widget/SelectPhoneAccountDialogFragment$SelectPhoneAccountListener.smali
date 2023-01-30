.class public Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;
.super Landroid/os/ResultReceiver;
.source "SelectPhoneAccountDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SelectPhoneAccountListener"
.end annotation


# static fields
.field static final EXTRA_CALL_ID:Ljava/lang/String; = "extra_call_id"

.field static final EXTRA_SELECTED_ACCOUNT_HANDLE:Ljava/lang/String; = "extra_selected_account_handle"

.field static final EXTRA_SET_DEFAULT:Ljava/lang/String; = "extra_set_default"

.field static final RESULT_DISMISSED:I = 0x2

.field static final RESULT_SELECTED:I = 0x1


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 216
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onDialogDismissed(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPhoneAccountSelected(Landroid/telecom/PhoneAccountHandle;ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 2

    const-string v0, "extra_call_id"

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const-string p1, "extra_selected_account_handle"

    .line 223
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/telecom/PhoneAccountHandle;

    const-string v1, "extra_set_default"

    .line 224
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 225
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 222
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;->onPhoneAccountSelected(Landroid/telecom/PhoneAccountHandle;ZLjava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 227
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;->onDialogDismissed(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
