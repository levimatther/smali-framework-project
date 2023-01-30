.class public Lcom/android/dialer/app/settings/PhoneAccountSelectionFragment;
.super Landroid/preference/PreferenceFragment;
.source "PhoneAccountSelectionFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/app/settings/PhoneAccountSelectionFragment$AccountPreference;
    }
.end annotation


# static fields
.field public static final PARAM_ARGUMENTS:Ljava/lang/String; = "arguments"

.field public static final PARAM_PHONE_ACCOUNT_HANDLE_KEY:Ljava/lang/String; = "phone_account_handle_key"

.field public static final PARAM_TARGET_FRAGMENT:Ljava/lang/String; = "target_fragment"

.field public static final PARAM_TARGET_TITLE_RES:Ljava/lang/String; = "target_title_res"


# instance fields
.field private arguments:Landroid/os/Bundle;

.field private phoneAccountHandleKey:Ljava/lang/String;

.field private targetFragment:Ljava/lang/String;

.field private titleRes:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/app/settings/PhoneAccountSelectionFragment;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/dialer/app/settings/PhoneAccountSelectionFragment;->phoneAccountHandleKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/dialer/app/settings/PhoneAccountSelectionFragment;)Landroid/os/Bundle;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/dialer/app/settings/PhoneAccountSelectionFragment;->arguments:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/dialer/app/settings/PhoneAccountSelectionFragment;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/dialer/app/settings/PhoneAccountSelectionFragment;->targetFragment:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/dialer/app/settings/PhoneAccountSelectionFragment;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/android/dialer/app/settings/PhoneAccountSelectionFragment;->titleRes:I

    return p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 67
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/dialer/app/settings/PhoneAccountSelectionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "target_fragment"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/app/settings/PhoneAccountSelectionFragment;->targetFragment:Ljava/lang/String;

    .line 69
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/app/settings/PhoneAccountSelectionFragment;->arguments:Landroid/os/Bundle;

    .line 70
    invoke-virtual {p0}, Lcom/android/dialer/app/settings/PhoneAccountSelectionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arguments"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/dialer/app/settings/PhoneAccountSelectionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "phone_account_handle_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/app/settings/PhoneAccountSelectionFragment;->phoneAccountHandleKey:Ljava/lang/String;

    .line 72
    invoke-virtual {p0}, Lcom/android/dialer/app/settings/PhoneAccountSelectionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "target_title_res"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/dialer/app/settings/PhoneAccountSelectionFragment;->titleRes:I

    return-void
.end method

.method public onResume()V
    .locals 7

    .line 106
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 107
    invoke-virtual {p0}, Lcom/android/dialer/app/settings/PhoneAccountSelectionFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/dialer/app/settings/PhoneAccountSelectionFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/dialer/app/settings/PhoneAccountSelectionFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 108
    invoke-virtual {p0}, Lcom/android/dialer/app/settings/PhoneAccountSelectionFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 110
    invoke-virtual {p0}, Lcom/android/dialer/app/settings/PhoneAccountSelectionFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/telecom/TelecomManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/TelecomManager;

    .line 112
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v2

    .line 114
    invoke-virtual {p0}, Lcom/android/dialer/app/settings/PhoneAccountSelectionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 115
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/PhoneAccountHandle;

    .line 116
    invoke-virtual {v1, v4}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 119
    invoke-virtual {v5}, Landroid/telecom/PhoneAccount;->getCapabilities()I

    move-result v6

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_0

    .line 121
    new-instance v6, Lcom/android/dialer/app/settings/PhoneAccountSelectionFragment$AccountPreference;

    invoke-direct {v6, p0, v3, v4, v5}, Lcom/android/dialer/app/settings/PhoneAccountSelectionFragment$AccountPreference;-><init>(Lcom/android/dialer/app/settings/PhoneAccountSelectionFragment;Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Landroid/telecom/PhoneAccount;)V

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_2
    return-void
.end method
