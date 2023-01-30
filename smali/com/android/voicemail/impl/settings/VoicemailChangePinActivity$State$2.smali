.class final enum Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State$2;
.super Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;
.source "VoicemailChangePinActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 158
    invoke-direct {p0, p1, p2, v0}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;-><init>(Ljava/lang/String;ILcom/android/voicemail/impl/settings/VoicemailChangePinActivity$1;)V

    return-void
.end method


# virtual methods
.method public handleResult(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;I)V
    .locals 2

    if-nez p2, :cond_0

    .line 169
    sget-object p2, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;->EnterNewPin:Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;

    invoke-static {p1, p2}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->access$1000(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    .line 172
    invoke-virtual {p1}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/4 v0, 0x3

    .line 173
    invoke-virtual {p2, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    const p2, 0x7f110121

    .line 175
    invoke-virtual {p1, p2}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State$2$1;

    invoke-direct {v0, p0, p1}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State$2$1;-><init>(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State$2;Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;)V

    .line 174
    invoke-static {p1, p2, v0}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->access$1400(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 183
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid default old PIN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->access$1100(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "VmChangePinActivity"

    invoke-static {v0, p2}, Lcom/android/voicemail/impl/VvmLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-static {p1}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->access$1500(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;)Landroid/telecom/PhoneAccountHandle;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->setDefaultOldPIN(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)V

    .line 189
    sget-object p2, Lcom/android/voicemail/impl/OmtpEvents;->CONFIG_PIN_SET:Lcom/android/voicemail/impl/OmtpEvents;

    invoke-static {p1, p2}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->access$1600(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;Lcom/android/voicemail/impl/OmtpEvents;)V

    .line 190
    sget-object p2, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;->EnterOldPin:Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;

    invoke-static {p1, p2}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->access$1000(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;)V

    :goto_0
    return-void
.end method

.method public onEnter(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;)V
    .locals 2

    const v0, 0x1020002

    .line 161
    invoke-virtual {p1, v0}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 162
    invoke-static {p1}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->access$900(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;)V

    return-void
.end method

.method public onLeave(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;)V
    .locals 1

    const v0, 0x1020002

    .line 196
    invoke-virtual {p1, v0}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
