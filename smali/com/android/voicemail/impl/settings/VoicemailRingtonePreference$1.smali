.class Lcom/android/voicemail/impl/settings/VoicemailRingtonePreference$1;
.super Landroid/os/Handler;
.source "VoicemailRingtonePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/voicemail/impl/settings/VoicemailRingtonePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/voicemail/impl/settings/VoicemailRingtonePreference;


# direct methods
.method constructor <init>(Lcom/android/voicemail/impl/settings/VoicemailRingtonePreference;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/android/voicemail/impl/settings/VoicemailRingtonePreference$1;->this$0:Lcom/android/voicemail/impl/settings/VoicemailRingtonePreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 55
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 64
    invoke-static {}, Lcom/android/dialer/common/Assert;->fail()V

    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailRingtonePreference$1;->this$0:Lcom/android/voicemail/impl/settings/VoicemailRingtonePreference;

    invoke-static {v0}, Lcom/android/voicemail/impl/settings/VoicemailRingtonePreference;->access$000(Lcom/android/voicemail/impl/settings/VoicemailRingtonePreference;)Lcom/android/voicemail/impl/settings/VoicemailRingtonePreference$VoicemailRingtoneNameChangeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailRingtonePreference$1;->this$0:Lcom/android/voicemail/impl/settings/VoicemailRingtonePreference;

    invoke-static {v0}, Lcom/android/voicemail/impl/settings/VoicemailRingtonePreference;->access$000(Lcom/android/voicemail/impl/settings/VoicemailRingtonePreference;)Lcom/android/voicemail/impl/settings/VoicemailRingtonePreference$VoicemailRingtoneNameChangeListener;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Lcom/android/voicemail/impl/settings/VoicemailRingtonePreference$VoicemailRingtoneNameChangeListener;->onVoicemailRingtoneNameChanged(Ljava/lang/CharSequence;)V

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailRingtonePreference$1;->this$0:Lcom/android/voicemail/impl/settings/VoicemailRingtonePreference;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lcom/android/voicemail/impl/settings/VoicemailRingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
