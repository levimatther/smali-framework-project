.class public Lcom/android/voicemail/impl/TelephonyVvmConfigManager;
.super Ljava/lang/Object;
.source "TelephonyVvmConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/voicemail/impl/TelephonyVvmConfigManager$MyReadMapCallback;
    }
.end annotation


# static fields
.field private static final KEY_FEATURE_FLAG_NAME:Ljava/lang/String; = "feature_flag_name"

.field static final KEY_MCCMNC:Ljava/lang/String; = "mccmnc"

.field private static final TAG:Ljava/lang/String; = "TelephonyVvmCfgMgr"

.field private static final TAG_PERSISTABLEMAP:Ljava/lang/String; = "pbundle_as_map"

.field private static final USE_DEBUG_CONFIG:Z = false

.field private static sCachedConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/PersistableBundle;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/PersistableBundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    sget-object v0, Lcom/android/voicemail/impl/TelephonyVvmConfigManager;->sCachedConfigs:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/voicemail/impl/TelephonyVvmConfigManager;->loadConfigs(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Map;

    move-result-object p1

    sput-object p1, Lcom/android/voicemail/impl/TelephonyVvmConfigManager;->sCachedConfigs:Ljava/util/Map;

    .line 56
    :cond_0
    sget-object p1, Lcom/android/voicemail/impl/TelephonyVvmConfigManager;->sCachedConfigs:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/voicemail/impl/TelephonyVvmConfigManager;->mConfigs:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {p1, p2}, Lcom/android/voicemail/impl/TelephonyVvmConfigManager;->loadConfigs(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/voicemail/impl/TelephonyVvmConfigManager;->mConfigs:Ljava/util/Map;

    return-void
.end method

.method private static loadConfigs(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/PersistableBundle;",
            ">;"
        }
    .end annotation

    const-string v0, "feature_flag_name"

    .line 73
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 75
    :try_start_0
    invoke-static {p1}, Lcom/android/voicemail/impl/TelephonyVvmConfigManager;->readBundleList(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/ArrayList;

    move-result-object p1

    .line 76
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 77
    instance-of v3, v2, Landroid/os/PersistableBundle;

    if-eqz v3, :cond_3

    .line 80
    check-cast v2, Landroid/os/PersistableBundle;

    .line 82
    invoke-virtual {v2, v0}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 83
    invoke-static {p0}, Lcom/android/dialer/configprovider/ConfigProviderBindings;->get(Landroid/content/Context;)Lcom/android/dialer/configprovider/ConfigProvider;

    move-result-object v3

    .line 84
    invoke-virtual {v2, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v4}, Lcom/android/dialer/configprovider/ConfigProvider;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "mccmnc"

    .line 88
    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 92
    array-length v5, v3

    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v6, v3, v4

    .line 93
    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 90
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "MCCMNC is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 78
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PersistableBundle expected, got "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-object v1

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 97
    :goto_2
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static readBundleList(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 105
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 107
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    .line 108
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-ge v3, v0, :cond_2

    :cond_1
    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 110
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/String;

    .line 112
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 113
    new-instance v2, Lcom/android/voicemail/impl/TelephonyVvmConfigManager$MyReadMapCallback;

    invoke-direct {v2}, Lcom/android/voicemail/impl/TelephonyVvmConfigManager$MyReadMapCallback;-><init>()V

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/voicemail/impl/utils/XmlUtils;->readThisListXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;Lcom/android/voicemail/impl/utils/XmlUtils$ReadMapCallback;Z)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 121
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 122
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    .line 125
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    if-eq v4, v2, :cond_8

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 126
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-ge v5, v0, :cond_8

    :cond_1
    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 128
    new-instance v0, Lcom/android/voicemail/impl/TelephonyVvmConfigManager$MyReadMapCallback;

    invoke-direct {v0}, Lcom/android/voicemail/impl/TelephonyVvmConfigManager$MyReadMapCallback;-><init>()V

    .line 129
    invoke-static {p0, v1, v3, v0}, Lcom/android/voicemail/impl/utils/XmlUtils;->readThisArrayMapXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;Lcom/android/voicemail/impl/utils/XmlUtils$ReadMapCallback;)Landroid/util/ArrayMap;

    move-result-object p0

    .line 130
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 131
    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 132
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 133
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_3

    .line 134
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 135
    :cond_3
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_4

    .line 136
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 137
    :cond_4
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 138
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :cond_5
    instance-of v3, v2, [Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 140
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_6
    instance-of v3, v2, Landroid/os/PersistableBundle;

    if-eqz v3, :cond_2

    .line 142
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    check-cast v2, Landroid/os/PersistableBundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    goto :goto_0

    :cond_7
    return-object v0

    .line 148
    :cond_8
    sget-object p0, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    return-object p0
.end method


# virtual methods
.method public getConfig(Ljava/lang/String;)Landroid/os/PersistableBundle;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/android/voicemail/impl/TelephonyVvmConfigManager;->mConfigs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PersistableBundle;

    return-object p1
.end method
