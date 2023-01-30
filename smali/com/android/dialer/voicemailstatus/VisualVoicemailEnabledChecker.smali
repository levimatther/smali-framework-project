.class public Lcom/android/dialer/voicemailstatus/VisualVoicemailEnabledChecker;
.super Ljava/lang/Object;
.source "VisualVoicemailEnabledChecker.java"

# interfaces
.implements Lcom/android/dialer/database/CallLogQueryHandler$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/voicemailstatus/VisualVoicemailEnabledChecker$Callback;
    }
.end annotation


# static fields
.field public static final PREF_KEY_HAS_ACTIVE_VOICEMAIL_PROVIDER:Ljava/lang/String; = "has_active_voicemail_provider"


# instance fields
.field private mCallLogQueryHandler:Lcom/android/dialer/database/CallLogQueryHandler;

.field private mCallback:Lcom/android/dialer/voicemailstatus/VisualVoicemailEnabledChecker$Callback;

.field private mContext:Landroid/content/Context;

.field private mHasActiveVoicemailProvider:Z

.field private mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/dialer/voicemailstatus/VisualVoicemailEnabledChecker$Callback;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/dialer/voicemailstatus/VisualVoicemailEnabledChecker;->mContext:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/android/dialer/voicemailstatus/VisualVoicemailEnabledChecker;->mCallback:Lcom/android/dialer/voicemailstatus/VisualVoicemailEnabledChecker$Callback;

    .line 54
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/voicemailstatus/VisualVoicemailEnabledChecker;->mPrefs:Landroid/content/SharedPreferences;

    const-string p2, "has_active_voicemail_provider"

    const/4 v0, 0x0

    .line 55
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/dialer/voicemailstatus/VisualVoicemailEnabledChecker;->mHasActiveVoicemailProvider:Z

    return-void
.end method


# virtual methods
.method public asyncUpdate()V
    .locals 3

    .line 71
    new-instance v0, Lcom/android/dialer/database/CallLogQueryHandler;

    iget-object v1, p0, Lcom/android/dialer/voicemailstatus/VisualVoicemailEnabledChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/android/dialer/database/CallLogQueryHandler;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/dialer/database/CallLogQueryHandler$Listener;)V

    iput-object v0, p0, Lcom/android/dialer/voicemailstatus/VisualVoicemailEnabledChecker;->mCallLogQueryHandler:Lcom/android/dialer/database/CallLogQueryHandler;

    .line 72
    invoke-virtual {v0}, Lcom/android/dialer/database/CallLogQueryHandler;->fetchVoicemailStatus()V

    return-void
.end method

.method public isVisualVoicemailEnabled()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/android/dialer/voicemailstatus/VisualVoicemailEnabledChecker;->mHasActiveVoicemailProvider:Z

    return v0
.end method

.method public onCallsFetched(Landroid/database/Cursor;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onMissedCallsUnreadCountFetched(Landroid/database/Cursor;)V
    .locals 0

    return-void
.end method

.method public onVoicemailStatusFetched(Landroid/database/Cursor;)V
    .locals 2

    .line 78
    invoke-static {p1}, Lcom/android/dialer/voicemailstatus/VoicemailStatusHelper;->getNumberActivityVoicemailSources(Landroid/database/Cursor;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 79
    :goto_0
    iget-boolean v0, p0, Lcom/android/dialer/voicemailstatus/VisualVoicemailEnabledChecker;->mHasActiveVoicemailProvider:Z

    if-eq p1, v0, :cond_1

    .line 80
    iput-boolean p1, p0, Lcom/android/dialer/voicemailstatus/VisualVoicemailEnabledChecker;->mHasActiveVoicemailProvider:Z

    .line 81
    iget-object p1, p0, Lcom/android/dialer/voicemailstatus/VisualVoicemailEnabledChecker;->mPrefs:Landroid/content/SharedPreferences;

    .line 82
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/dialer/voicemailstatus/VisualVoicemailEnabledChecker;->mHasActiveVoicemailProvider:Z

    const-string v1, "has_active_voicemail_provider"

    .line 83
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 84
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 85
    iget-object p1, p0, Lcom/android/dialer/voicemailstatus/VisualVoicemailEnabledChecker;->mCallback:Lcom/android/dialer/voicemailstatus/VisualVoicemailEnabledChecker$Callback;

    if-eqz p1, :cond_1

    .line 86
    iget-boolean v0, p0, Lcom/android/dialer/voicemailstatus/VisualVoicemailEnabledChecker;->mHasActiveVoicemailProvider:Z

    invoke-interface {p1, v0}, Lcom/android/dialer/voicemailstatus/VisualVoicemailEnabledChecker$Callback;->onVisualVoicemailEnabledStatusChanged(Z)V

    :cond_1
    return-void
.end method

.method public onVoicemailUnreadCountFetched(Landroid/database/Cursor;)V
    .locals 0

    return-void
.end method
