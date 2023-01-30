.class public Lcom/android/voicemail/impl/VisualVoicemailPreferences;
.super Lcom/android/dialer/common/PerAccountSharedPreferences;
.source "VisualVoicemailPreferences.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V
    .locals 2

    .line 34
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "visual_voicemail_"

    .line 31
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/dialer/common/PerAccountSharedPreferences;-><init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method
