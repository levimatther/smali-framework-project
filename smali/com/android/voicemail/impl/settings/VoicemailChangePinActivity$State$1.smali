.class final enum Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State$1;
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

    .line 121
    invoke-direct {p0, p1, p2, v0}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;-><init>(Ljava/lang/String;ILcom/android/voicemail/impl/settings/VoicemailChangePinActivity$1;)V

    return-void
.end method


# virtual methods
.method public handleNext(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;)V
    .locals 1

    .line 137
    invoke-static {p1}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->access$600(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->access$802(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 138
    invoke-static {p1}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->access$900(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;)V

    return-void
.end method

.method public handleResult(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;I)V
    .locals 0

    if-nez p2, :cond_0

    .line 144
    sget-object p2, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;->EnterNewPin:Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;

    invoke-static {p1, p2}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->access$1000(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;)V

    goto :goto_0

    .line 146
    :cond_0
    invoke-static {p1, p2}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->access$1100(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 147
    invoke-static {p1, p2}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->access$1200(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;Ljava/lang/CharSequence;)V

    .line 148
    invoke-static {p1}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->access$1300(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;)Landroid/widget/EditText;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public onEnter(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;)V
    .locals 2

    const v0, 0x7f11011d

    .line 124
    invoke-static {p1, v0}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->access$200(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;I)V

    .line 125
    invoke-static {p1}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->access$300(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f11011e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 126
    invoke-static {p1}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->access$400(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f11011a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 127
    invoke-static {p1}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->access$500(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInputChanged(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;)V
    .locals 1

    .line 132
    invoke-static {p1}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->access$600(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->access$700(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;Z)V

    return-void
.end method
