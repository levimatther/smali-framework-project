.class final enum Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State$3;
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

    .line 203
    invoke-direct {p0, p1, p2, v0}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;-><init>(Ljava/lang/String;ILcom/android/voicemail/impl/settings/VoicemailChangePinActivity$1;)V

    return-void
.end method


# virtual methods
.method public handleNext(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;)V
    .locals 1

    .line 235
    invoke-static {p1}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->access$600(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->access$2000(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 237
    invoke-static {p1, v0}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->access$1200(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;Ljava/lang/CharSequence;)V

    return-void

    .line 240
    :cond_0
    invoke-static {p1}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->access$600(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->access$2102(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 241
    sget-object v0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;->ConfirmNewPin:Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;

    invoke-static {p1, v0}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->access$1000(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;)V

    return-void
.end method

.method public onEnter(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;)V
    .locals 4

    .line 206
    invoke-static {p1}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->access$1700(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f11011b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 207
    invoke-static {p1}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->access$400(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f11011a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 208
    invoke-static {p1}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->access$300(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 211
    invoke-static {p1}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->access$1800(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 212
    invoke-static {p1}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->access$1900(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const v2, 0x7f11011c

    .line 209
    invoke-virtual {p1, v2, v1}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 208
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInputChanged(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;)V
    .locals 3

    .line 217
    invoke-static {p1}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->access$600(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;)Ljava/lang/String;

    move-result-object v0

    .line 218
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 219
    invoke-static {p1, v2}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->access$700(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;Z)V

    return-void

    .line 222
    :cond_0
    invoke-static {p1, v0}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->access$2000(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 224
    invoke-static {p1}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->access$500(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    invoke-static {p1, v2}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->access$700(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;Z)V

    goto :goto_0

    .line 227
    :cond_1
    invoke-static {p1}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->access$500(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 228
    invoke-static {p1, v0}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->access$700(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;Z)V

    :goto_0
    return-void
.end method
