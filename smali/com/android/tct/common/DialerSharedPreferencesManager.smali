.class public Lcom/android/tct/common/DialerSharedPreferencesManager;
.super Ljava/lang/Object;
.source "DialerSharedPreferencesManager.java"


# static fields
.field public static final ATT_VIDEO_CALL_INFO_DIALOG_CHECKBOX_CHECKED:Ljava/lang/String; = "att_video_call_info_dialog_checkbox_checked"

.field private static final DEFAULT_SHARED_PREFERENCE:Ljava/lang/String; = "dialer_preference"

.field public static final DIALER_DIALOG_RELATED_SHARED_PREFERENCE:Ljava/lang/String; = "dialer_dialog_related_shared_preference"

.field public static final FIRST_ENTER_RTT_CHAT:Ljava/lang/String; = "first_enter_rtt_chat"

.field private static final TAG:Ljava/lang/String; = "DialerSharedPreferencesManager"

.field private static mContext:Landroid/content/Context;

.field private static mPreferenceManagerHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/tct/common/DialerSharedPreferencesManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mSharedPreference:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/tct/common/DialerSharedPreferencesManager;->mPreferenceManagerHashMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tct/common/DialerSharedPreferencesManager;->mSharedPreference:Landroid/content/SharedPreferences;

    .line 47
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tct/common/DialerSharedPreferencesManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/tct/common/DialerSharedPreferencesManager;
    .locals 2

    const-class v0, Lcom/android/tct/common/DialerSharedPreferencesManager;

    monitor-enter v0

    :try_start_0
    const-string v1, "dialer_preference"

    .line 72
    invoke-static {v1}, Lcom/android/tct/common/DialerSharedPreferencesManager;->getInstance(Ljava/lang/String;)Lcom/android/tct/common/DialerSharedPreferencesManager;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance(Ljava/lang/String;)Lcom/android/tct/common/DialerSharedPreferencesManager;
    .locals 2

    const-class v0, Lcom/android/tct/common/DialerSharedPreferencesManager;

    monitor-enter v0

    if-eqz p0, :cond_1

    .line 60
    :try_start_0
    sget-object v1, Lcom/android/tct/common/DialerSharedPreferencesManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 61
    invoke-static {}, Lcom/android/dialer/binary/common/DialerApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/android/tct/common/DialerSharedPreferencesManager;->mContext:Landroid/content/Context;

    .line 63
    :cond_0
    sget-object v1, Lcom/android/tct/common/DialerSharedPreferencesManager;->mContext:Landroid/content/Context;

    invoke-static {v1, p0}, Lcom/android/tct/common/DialerSharedPreferencesManager;->initSharedPreferenceManager(Landroid/content/Context;Ljava/lang/String;)Lcom/android/tct/common/DialerSharedPreferencesManager;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 58
    :cond_1
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "The dialer shared preferences name can not be empty!"

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v0

    throw p0
.end method

.method private static initSharedPreferenceManager(Landroid/content/Context;Ljava/lang/String;)Lcom/android/tct/common/DialerSharedPreferencesManager;
    .locals 1

    .line 32
    sget-object v0, Lcom/android/tct/common/DialerSharedPreferencesManager;->mPreferenceManagerHashMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/tct/common/DialerSharedPreferencesManager;->mPreferenceManagerHashMap:Ljava/util/HashMap;

    .line 36
    :cond_0
    sget-object v0, Lcom/android/tct/common/DialerSharedPreferencesManager;->mPreferenceManagerHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tct/common/DialerSharedPreferencesManager;

    if-nez v0, :cond_1

    .line 38
    new-instance v0, Lcom/android/tct/common/DialerSharedPreferencesManager;

    invoke-direct {v0, p0, p1}, Lcom/android/tct/common/DialerSharedPreferencesManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    sget-object p0, Lcom/android/tct/common/DialerSharedPreferencesManager;->mPreferenceManagerHashMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/android/tct/common/DialerSharedPreferencesManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public getAllKeys()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/android/tct/common/DialerSharedPreferencesManager;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getBooleanValueCustomDefault(Ljava/lang/String;Z)Z
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/android/tct/common/DialerSharedPreferencesManager;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 130
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public getSharedPreference()Landroid/content/SharedPreferences;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/android/tct/common/DialerSharedPreferencesManager;->mSharedPreference:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 108
    const-class v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 109
    iget-object p2, p0, Lcom/android/tct/common/DialerSharedPreferencesManager;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {p2, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 111
    :cond_0
    const-class v0, Ljava/lang/Boolean;

    if-ne p2, v0, :cond_1

    .line 112
    iget-object p2, p0, Lcom/android/tct/common/DialerSharedPreferencesManager;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {p2, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 114
    :cond_1
    const-class v0, Ljava/lang/Float;

    if-ne p2, v0, :cond_2

    .line 115
    iget-object p2, p0, Lcom/android/tct/common/DialerSharedPreferencesManager;->mSharedPreference:Landroid/content/SharedPreferences;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 117
    :cond_2
    const-class v0, Ljava/lang/String;

    if-ne p2, v0, :cond_3

    .line 118
    iget-object p2, p0, Lcom/android/tct/common/DialerSharedPreferencesManager;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v0, ""

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 120
    :cond_3
    const-class v0, Ljava/lang/Long;

    if-ne p2, v0, :cond_4

    .line 121
    iget-object p2, p0, Lcom/android/tct/common/DialerSharedPreferencesManager;->mSharedPreference:Landroid/content/SharedPreferences;

    const-wide/16 v0, 0x0

    invoke-interface {p2, p1, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_4
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "DialerSharedPreferencesManager"

    const-string v0, "getValue : No matching value!"

    .line 124
    invoke-static {p2, v0, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/android/tct/common/DialerSharedPreferencesManager;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p0, p1, p2}, Lcom/android/tct/common/DialerSharedPreferencesManager;->getValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p3
.end method

.method public printAllKeyValues()V
    .locals 4

    .line 170
    iget-object v0, p0, Lcom/android/tct/common/DialerSharedPreferencesManager;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 171
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    .line 172
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 173
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "DialerSharedPreferencesManager"

    invoke-static {v3, v1, v2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/tct/common/DialerSharedPreferencesManager;
    .locals 3

    .line 84
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/tct/common/DialerSharedPreferencesManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 86
    :cond_0
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/android/tct/common/DialerSharedPreferencesManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 88
    :cond_1
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 89
    iget-object v0, p0, Lcom/android/tct/common/DialerSharedPreferencesManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 90
    :cond_2
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 91
    iget-object v0, p0, Lcom/android/tct/common/DialerSharedPreferencesManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    check-cast p2, Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 92
    :cond_3
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 93
    iget-object v0, p0, Lcom/android/tct/common/DialerSharedPreferencesManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 95
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/android/tct/common/DialerSharedPreferencesManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-object p0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/android/tct/common/DialerSharedPreferencesManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
