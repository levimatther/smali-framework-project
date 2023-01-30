.class public Lcom/android/voicemail/impl/configui/VoicemailSecretCodeActivity;
.super Landroid/preference/PreferenceActivity;
.source "VoicemailSecretCodeActivity.java"


# instance fields
.field private syncHeader:Landroid/preference/PreferenceActivity$Header;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onBuildHeaders(Ljava/util/List;)V

    .line 33
    new-instance v0, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v0}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v0, p0, Lcom/android/voicemail/impl/configui/VoicemailSecretCodeActivity;->syncHeader:Landroid/preference/PreferenceActivity$Header;

    const-string v1, "Sync"

    .line 34
    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 35
    iget-object v0, p0, Lcom/android/voicemail/impl/configui/VoicemailSecretCodeActivity;->syncHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    new-instance v0, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v0}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 38
    const-class v1, Lcom/android/voicemail/impl/configui/ConfigOverrideFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    const-string v1, "VVM config override"

    .line 39
    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 40
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/android/voicemail/impl/configui/VoicemailSecretCodeActivity;->syncHeader:Landroid/preference/PreferenceActivity$Header;

    if-ne p1, v0, :cond_0

    .line 46
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.provider.action.SYNC_VOICEMAIL"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Lcom/android/voicemail/impl/configui/VoicemailSecretCodeActivity;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/voicemail/impl/configui/VoicemailSecretCodeActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    .line 51
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    return-void
.end method
