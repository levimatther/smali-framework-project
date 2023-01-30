.class public Lcom/android/voicemail/impl/settings/VoiceMailSettingsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "VoiceMailSettingsActivity.java"


# static fields
.field private static final KEY_CHANGE_PIN:Ljava/lang/String; = "voicemail_change_pin_key"

.field private static final KEY_DOWNLOAD:Ljava/lang/String; = "voicemail_preference_download_key"

.field private static final KEY_GREETING:Ljava/lang/String; = "voicemail_preference_greeting_key"

.field private static final KEY_TOTEXT:Ljava/lang/String; = "voicemail_preference_voicetotest_key"

.field private static final TAG:Ljava/lang/String; = "VoiceMailSettingsActivity"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mVoicemailClient:Lcom/android/voicemail/VoicemailClient;

.field private menuBar:Landroid/widget/MenuBar;

.field private phoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private statusMap:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/voicemail/impl/settings/VoiceMailSettingsActivity;->statusMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 47
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    iput-object p0, p0, Lcom/android/voicemail/impl/settings/VoiceMailSettingsActivity;->mContext:Landroid/content/Context;

    .line 49
    invoke-virtual {p0}, Lcom/android/voicemail/impl/settings/VoiceMailSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0xe

    .line 50
    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    const v0, 0x7f0c0101

    .line 51
    invoke-virtual {p0, v0}, Lcom/android/voicemail/impl/settings/VoiceMailSettingsActivity;->setContentView(I)V

    if-nez p1, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/android/voicemail/impl/settings/VoiceMailSettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 54
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const v0, 0x7f0902b0

    new-instance v1, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;

    invoke-direct {v1}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;-><init>()V

    .line 55
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 56
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 58
    :cond_0
    invoke-static {p0}, Lcom/android/voicemail/VoicemailComponent;->get(Landroid/content/Context;)Lcom/android/voicemail/VoicemailComponent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/voicemail/VoicemailComponent;->getVoicemailClient()Lcom/android/voicemail/VoicemailClient;

    move-result-object p1

    iput-object p1, p0, Lcom/android/voicemail/impl/settings/VoiceMailSettingsActivity;->mVoicemailClient:Lcom/android/voicemail/VoicemailClient;

    .line 59
    invoke-virtual {p0}, Lcom/android/voicemail/impl/settings/VoiceMailSettingsActivity;->getMenuBar()Landroid/widget/MenuBar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/voicemail/impl/settings/VoiceMailSettingsActivity;->menuBar:Landroid/widget/MenuBar;

    .line 60
    iget-object p1, p0, Lcom/android/voicemail/impl/settings/VoiceMailSettingsActivity;->mContext:Landroid/content/Context;

    const-class v0, Landroid/telecom/TelecomManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/TelecomManager;

    invoke-virtual {p1}, Landroid/telecom/TelecomManager;->getUserSelectedOutgoingPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/voicemail/impl/settings/VoiceMailSettingsActivity;->phoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 62
    invoke-virtual {p0}, Lcom/android/voicemail/impl/settings/VoiceMailSettingsActivity;->updateMenuBar()V

    .line 63
    iget-object p1, p0, Lcom/android/voicemail/impl/settings/VoiceMailSettingsActivity;->statusMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/android/voicemail/impl/settings/VoiceMailSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11030f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object p1, p0, Lcom/android/voicemail/impl/settings/VoiceMailSettingsActivity;->statusMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/android/voicemail/impl/settings/VoiceMailSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110310

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 92
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyUp:keycode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VoiceMailSettingsActivity"

    invoke-static {v1, v0}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/voicemail/impl/settings/VoiceMailSettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 101
    iget-object v3, p0, Lcom/android/voicemail/impl/settings/VoiceMailSettingsActivity;->statusMap:Ljava/util/Map;

    iget-object v4, p0, Lcom/android/voicemail/impl/settings/VoiceMailSettingsActivity;->menuBar:Landroid/widget/MenuBar;

    invoke-virtual {v4, v1}, Landroid/widget/MenuBar;->getSoftKeyName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 102
    iget-object v2, p0, Lcom/android/voicemail/impl/settings/VoiceMailSettingsActivity;->menuBar:Landroid/widget/MenuBar;

    const v3, 0x7f110310

    invoke-virtual {v2, v1, v3}, Landroid/widget/MenuBar;->setSoftKeyName(II)V

    .line 103
    invoke-virtual {v0, v1}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->updateVoicemailEnabled(Z)V

    goto :goto_0

    .line 105
    :cond_0
    iget-object v3, p0, Lcom/android/voicemail/impl/settings/VoiceMailSettingsActivity;->menuBar:Landroid/widget/MenuBar;

    const v4, 0x7f11030f

    invoke-virtual {v3, v1, v4}, Landroid/widget/MenuBar;->setSoftKeyName(II)V

    .line 106
    invoke-virtual {v0, v2}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->updateVoicemailEnabled(Z)V

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 112
    invoke-virtual {v0, p1, p2}, Lcom/android/voicemail/impl/settings/VoicemailSettingsFragment;->onKeyUp(ILandroid/view/KeyEvent;)V

    .line 114
    :cond_2
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoiceMailSettingsActivity;->mVoicemailClient:Lcom/android/voicemail/VoicemailClient;

    iget-object v1, p0, Lcom/android/voicemail/impl/settings/VoiceMailSettingsActivity;->phoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-interface {v0, p0, v1}, Lcom/android/voicemail/VoicemailClient;->isVoicemailEnabled(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v0

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume:isEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VoiceMailSettingsActivity"

    invoke-static {v1, v0}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    return-void
.end method

.method public updateMenuBar()V
    .locals 5

    .line 72
    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoiceMailSettingsActivity;->mVoicemailClient:Lcom/android/voicemail/VoicemailClient;

    iget-object v1, p0, Lcom/android/voicemail/impl/settings/VoiceMailSettingsActivity;->phoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-interface {v0, p0, v1}, Lcom/android/voicemail/VoicemailClient;->isVoicemailEnabled(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v0

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateMenuBar:isEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VoiceMailSettingsActivity"

    invoke-static {v2, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const v2, 0x7f110525

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoiceMailSettingsActivity;->menuBar:Landroid/widget/MenuBar;

    const v3, 0x7f11030f

    const v4, 0x7f110306

    invoke-virtual {v0, v3, v4, v2, v1}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    goto :goto_0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoiceMailSettingsActivity;->menuBar:Landroid/widget/MenuBar;

    const v3, 0x7f110310

    invoke-virtual {v0, v3, v2, v2, v1}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    :goto_0
    return-void
.end method
