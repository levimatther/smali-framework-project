.class final Lcom/android/dialer/app/settings/PhoneAccountSelectionFragment$AccountPreference;
.super Landroid/preference/Preference;
.source "PhoneAccountSelectionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/settings/PhoneAccountSelectionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AccountPreference"
.end annotation


# instance fields
.field private final phoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field final synthetic this$0:Lcom/android/dialer/app/settings/PhoneAccountSelectionFragment;


# direct methods
.method public constructor <init>(Lcom/android/dialer/app/settings/PhoneAccountSelectionFragment;Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Landroid/telecom/PhoneAccount;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/android/dialer/app/settings/PhoneAccountSelectionFragment$AccountPreference;->this$0:Lcom/android/dialer/app/settings/PhoneAccountSelectionFragment;

    .line 80
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 81
    iput-object p3, p0, Lcom/android/dialer/app/settings/PhoneAccountSelectionFragment$AccountPreference;->phoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 82
    invoke-virtual {p4}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/dialer/app/settings/PhoneAccountSelectionFragment$AccountPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {p4}, Landroid/telecom/PhoneAccount;->getShortDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/dialer/app/settings/PhoneAccountSelectionFragment$AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 84
    invoke-virtual {p4}, Landroid/telecom/PhoneAccount;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/dialer/app/settings/PhoneAccountSelectionFragment$AccountPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method click()V
    .locals 0

    .line 92
    invoke-virtual {p0}, Lcom/android/dialer/app/settings/PhoneAccountSelectionFragment$AccountPreference;->onClick()V

    return-void
.end method

.method protected onClick()V
    .locals 8

    .line 97
    invoke-super {p0}, Landroid/preference/Preference;->onClick()V

    .line 98
    iget-object v0, p0, Lcom/android/dialer/app/settings/PhoneAccountSelectionFragment$AccountPreference;->this$0:Lcom/android/dialer/app/settings/PhoneAccountSelectionFragment;

    invoke-virtual {v0}, Lcom/android/dialer/app/settings/PhoneAccountSelectionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/preference/PreferenceActivity;

    .line 99
    iget-object v0, p0, Lcom/android/dialer/app/settings/PhoneAccountSelectionFragment$AccountPreference;->this$0:Lcom/android/dialer/app/settings/PhoneAccountSelectionFragment;

    invoke-static {v0}, Lcom/android/dialer/app/settings/PhoneAccountSelectionFragment;->access$100(Lcom/android/dialer/app/settings/PhoneAccountSelectionFragment;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v2, p0, Lcom/android/dialer/app/settings/PhoneAccountSelectionFragment$AccountPreference;->this$0:Lcom/android/dialer/app/settings/PhoneAccountSelectionFragment;

    invoke-static {v2}, Lcom/android/dialer/app/settings/PhoneAccountSelectionFragment;->access$000(Lcom/android/dialer/app/settings/PhoneAccountSelectionFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/dialer/app/settings/PhoneAccountSelectionFragment$AccountPreference;->phoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 100
    iget-object v0, p0, Lcom/android/dialer/app/settings/PhoneAccountSelectionFragment$AccountPreference;->this$0:Lcom/android/dialer/app/settings/PhoneAccountSelectionFragment;

    invoke-static {v0}, Lcom/android/dialer/app/settings/PhoneAccountSelectionFragment;->access$200(Lcom/android/dialer/app/settings/PhoneAccountSelectionFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/android/dialer/app/settings/PhoneAccountSelectionFragment$AccountPreference;->this$0:Lcom/android/dialer/app/settings/PhoneAccountSelectionFragment;

    invoke-static {v0}, Lcom/android/dialer/app/settings/PhoneAccountSelectionFragment;->access$100(Lcom/android/dialer/app/settings/PhoneAccountSelectionFragment;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v0, p0, Lcom/android/dialer/app/settings/PhoneAccountSelectionFragment$AccountPreference;->this$0:Lcom/android/dialer/app/settings/PhoneAccountSelectionFragment;

    invoke-static {v0}, Lcom/android/dialer/app/settings/PhoneAccountSelectionFragment;->access$300(Lcom/android/dialer/app/settings/PhoneAccountSelectionFragment;)I

    move-result v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/preference/PreferenceActivity;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    return-void
.end method
