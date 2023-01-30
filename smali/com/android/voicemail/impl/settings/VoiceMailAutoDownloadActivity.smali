.class public Lcom/android/voicemail/impl/settings/VoiceMailAutoDownloadActivity;
.super Lcom/android/voicemail/impl/settings/BaseSettingsActivity;
.source "VoiceMailAutoDownloadActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "VoiceMailAutoDownloadActivity"


# instance fields
.field private autoDownloadOff:Landroid/widget/RadioButton;

.field private autoDownloadOn:Landroid/widget/RadioButton;

.field private mMenuOptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private phoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private voicemailClient:Lcom/android/voicemail/VoicemailClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/android/voicemail/impl/settings/BaseSettingsActivity;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/voicemail/impl/settings/VoiceMailAutoDownloadActivity;->mMenuOptions:Ljava/util/ArrayList;

    return-void
.end method

.method private initView()V
    .locals 2

    const v0, 0x7f09004f

    .line 37
    invoke-virtual {p0, v0}, Lcom/android/voicemail/impl/settings/VoiceMailAutoDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/voicemail/impl/settings/VoiceMailAutoDownloadActivity;->autoDownloadOn:Landroid/widget/RadioButton;

    const v0, 0x7f09004e

    .line 38
    invoke-virtual {p0, v0}, Lcom/android/voicemail/impl/settings/VoiceMailAutoDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/voicemail/impl/settings/VoiceMailAutoDownloadActivity;->autoDownloadOff:Landroid/widget/RadioButton;

    .line 40
    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoiceMailAutoDownloadActivity;->autoDownloadOn:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoiceMailAutoDownloadActivity;->autoDownloadOff:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoiceMailAutoDownloadActivity;->phoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-static {p0, v0}, Lcom/android/voicemail/impl/settings/VisualVoicemailSettingsUtil;->isNativeVoicemailAutomaticallyDownloadEnabled(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoiceMailAutoDownloadActivity;->autoDownloadOn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoiceMailAutoDownloadActivity;->autoDownloadOff:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 61
    :pswitch_0
    iget-object p1, p0, Lcom/android/voicemail/impl/settings/VoiceMailAutoDownloadActivity;->phoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/voicemail/impl/settings/VisualVoicemailSettingsUtil;->setNativeVoicemailAutomaticallyDownloadEnabled(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Z)V

    goto :goto_0

    .line 65
    :pswitch_1
    iget-object p1, p0, Lcom/android/voicemail/impl/settings/VoiceMailAutoDownloadActivity;->phoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/voicemail/impl/settings/VisualVoicemailSettingsUtil;->setNativeVoicemailAutomaticallyDownloadEnabled(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Z)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f09004e
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 28
    invoke-super {p0, p1}, Lcom/android/voicemail/impl/settings/BaseSettingsActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0026

    .line 29
    invoke-virtual {p0, p1}, Lcom/android/voicemail/impl/settings/VoiceMailAutoDownloadActivity;->setContentView(I)V

    .line 30
    invoke-virtual {p0}, Lcom/android/voicemail/impl/settings/VoiceMailAutoDownloadActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "phone_account_handle"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/telecom/PhoneAccountHandle;

    iput-object p1, p0, Lcom/android/voicemail/impl/settings/VoiceMailAutoDownloadActivity;->phoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    const p1, 0x7f110332

    .line 31
    invoke-virtual {p0, p1}, Lcom/android/voicemail/impl/settings/VoiceMailAutoDownloadActivity;->initActionBar(I)V

    .line 32
    invoke-virtual {p0}, Lcom/android/voicemail/impl/settings/VoiceMailAutoDownloadActivity;->getiMenuBar()Landroid/widget/MenuBar;

    move-result-object p1

    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoiceMailAutoDownloadActivity;->mMenuOptions:Ljava/util/ArrayList;

    const v1, 0x7f110525

    const v2, 0x7f110550

    invoke-virtual {p1, v1, v2, v1, v0}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 33
    invoke-direct {p0}, Lcom/android/voicemail/impl/settings/VoiceMailAutoDownloadActivity;->initView()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    const/16 v0, 0x17

    if-ne p1, v0, :cond_1

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keyCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VoiceMailAutoDownloadActivity"

    invoke-static {v1, v0}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/voicemail/impl/settings/BaseSettingsActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
