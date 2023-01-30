.class public Lcom/android/dialer/voicemail/settings/GreetingListUtil;
.super Ljava/lang/Object;
.source "GreetingListUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/voicemail/settings/GreetingListUtil$UriDeserializer;,
        Lcom/android/dialer/voicemail/settings/GreetingListUtil$UriSerializer;
    }
.end annotation


# static fields
.field private static volatile instance:Lcom/android/dialer/voicemail/settings/GreetingListUtil;


# instance fields
.field private gson:Lcom/google/gson/Gson;

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/voicemail/settings/GreetingListUtil;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 54
    new-instance p1, Lcom/google/gson/GsonBuilder;

    invoke-direct {p1}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-class v0, Landroid/net/Uri;

    new-instance v1, Lcom/android/dialer/voicemail/settings/GreetingListUtil$UriSerializer;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/dialer/voicemail/settings/GreetingListUtil$UriSerializer;-><init>(Lcom/android/dialer/voicemail/settings/GreetingListUtil;Lcom/android/dialer/voicemail/settings/GreetingListUtil$1;)V

    .line 55
    invoke-virtual {p1, v0, v1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object p1

    const-class v0, Landroid/net/Uri;

    new-instance v1, Lcom/android/dialer/voicemail/settings/GreetingListUtil$UriDeserializer;

    invoke-direct {v1, p0, v2}, Lcom/android/dialer/voicemail/settings/GreetingListUtil$UriDeserializer;-><init>(Lcom/android/dialer/voicemail/settings/GreetingListUtil;Lcom/android/dialer/voicemail/settings/GreetingListUtil$1;)V

    .line 56
    invoke-virtual {p1, v0, v1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/voicemail/settings/GreetingListUtil;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/dialer/voicemail/settings/GreetingListUtil;
    .locals 2

    .line 75
    sget-object v0, Lcom/android/dialer/voicemail/settings/GreetingListUtil;->instance:Lcom/android/dialer/voicemail/settings/GreetingListUtil;

    if-nez v0, :cond_1

    .line 76
    const-class v0, Lcom/android/dialer/voicemail/settings/GreetingListUtil;

    monitor-enter v0

    .line 77
    :try_start_0
    sget-object v1, Lcom/android/dialer/voicemail/settings/GreetingListUtil;->instance:Lcom/android/dialer/voicemail/settings/GreetingListUtil;

    if-nez v1, :cond_0

    .line 78
    new-instance v1, Lcom/android/dialer/voicemail/settings/GreetingListUtil;

    invoke-direct {v1, p0}, Lcom/android/dialer/voicemail/settings/GreetingListUtil;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/dialer/voicemail/settings/GreetingListUtil;->instance:Lcom/android/dialer/voicemail/settings/GreetingListUtil;

    .line 80
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 82
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/dialer/voicemail/settings/GreetingListUtil;->instance:Lcom/android/dialer/voicemail/settings/GreetingListUtil;

    return-object p0
.end method


# virtual methods
.method public deleteGreeting(Ljava/lang/String;)V
    .locals 4

    .line 117
    invoke-virtual {p0}, Lcom/android/dialer/voicemail/settings/GreetingListUtil;->getGreetingList()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 121
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/voicemail/impl/Greeting;

    .line 122
    invoke-virtual {v2}, Lcom/android/voicemail/impl/Greeting;->getSourceData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 123
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 127
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/dialer/voicemail/settings/GreetingListUtil;->saveGreetingList(Ljava/util/ArrayList;)V

    return-void
.end method

.method public getGreeting(Ljava/lang/String;)Lcom/android/voicemail/impl/Greeting;
    .locals 4

    .line 132
    invoke-virtual {p0}, Lcom/android/dialer/voicemail/settings/GreetingListUtil;->getGreetingList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 136
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/voicemail/impl/Greeting;

    .line 137
    invoke-virtual {v2}, Lcom/android/voicemail/impl/Greeting;->getSourceData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v1
.end method

.method public getGreetingList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/voicemail/impl/Greeting;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingListUtil;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "greetingList"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    new-instance v1, Lcom/android/dialer/voicemail/settings/GreetingListUtil$1;

    invoke-direct {v1, p0}, Lcom/android/dialer/voicemail/settings/GreetingListUtil$1;-><init>(Lcom/android/dialer/voicemail/settings/GreetingListUtil;)V

    .line 94
    invoke-virtual {v1}, Lcom/android/dialer/voicemail/settings/GreetingListUtil$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 95
    iget-object v2, p0, Lcom/android/dialer/voicemail/settings/GreetingListUtil;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v2, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public saveGreetingList(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/voicemail/impl/Greeting;",
            ">;)V"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingListUtil;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/android/dialer/voicemail/settings/GreetingListUtil;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "greetingList"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 88
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setDefaultGreeting(Ljava/lang/String;)V
    .locals 4

    .line 101
    invoke-virtual {p0}, Lcom/android/dialer/voicemail/settings/GreetingListUtil;->getGreetingList()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 105
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/voicemail/impl/Greeting;

    .line 106
    invoke-virtual {v2}, Lcom/android/voicemail/impl/Greeting;->getSourceData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    .line 107
    invoke-virtual {v2, v3}, Lcom/android/voicemail/impl/Greeting;->setDefaultGreeting(Z)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 109
    invoke-virtual {v2, v3}, Lcom/android/voicemail/impl/Greeting;->setDefaultGreeting(Z)V

    goto :goto_0

    .line 112
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/dialer/voicemail/settings/GreetingListUtil;->saveGreetingList(Ljava/util/ArrayList;)V

    return-void
.end method

.method public updateGreeting(Lcom/android/voicemail/impl/Greeting;)V
    .locals 5

    .line 145
    invoke-virtual {p0}, Lcom/android/dialer/voicemail/settings/GreetingListUtil;->getGreetingList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 148
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/voicemail/impl/Greeting;

    .line 149
    invoke-virtual {v2}, Lcom/android/voicemail/impl/Greeting;->getSourceData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/voicemail/impl/Greeting;->getSourceData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 150
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 151
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 158
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/dialer/voicemail/settings/GreetingListUtil;->saveGreetingList(Ljava/util/ArrayList;)V

    return-void
.end method
