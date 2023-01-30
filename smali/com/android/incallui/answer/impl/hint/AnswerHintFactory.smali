.class public Lcom/android/incallui/answer/impl/hint/AnswerHintFactory;
.super Ljava/lang/Object;
.source "AnswerHintFactory.java"


# static fields
.field static final ANSWERED_COUNT_PREFERENCE_KEY:Ljava/lang/String; = "answer_hint_answered_count"

.field static final CONFIG_ANSWER_HINT_ANSWERED_THRESHOLD_KEY:Ljava/lang/String; = "answer_hint_answered_threshold"

.field static final CONFIG_ANSWER_HINT_WHITELISTED_DEVICES_KEY:Ljava/lang/String; = "answer_hint_whitelisted_devices"

.field private static final DEFAULT_WHITELISTED_DEVICES_CSV:Ljava/lang/String; = "/hammerhead//bullhead//angler//shamu//gm4g//gm4g_s//AQ4501//gce_x86_phone//gm4gtkc_s//Sparkle_V//Mi-498//AQ4502//imobileiq2//A65//H940//m8_google//m0xx//A10//ctih220//Mi438S//bacon/"


# instance fields
.field private final pawImageLoader:Lcom/android/incallui/answer/impl/hint/PawImageLoader;


# direct methods
.method public constructor <init>(Lcom/android/incallui/answer/impl/hint/PawImageLoader;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/incallui/answer/impl/hint/PawImageLoader;

    iput-object p1, p0, Lcom/android/incallui/answer/impl/hint/AnswerHintFactory;->pawImageLoader:Lcom/android/incallui/answer/impl/hint/PawImageLoader;

    return-void
.end method

.method public static increaseAnsweredCount(Landroid/content/Context;)V
    .locals 2

    .line 76
    invoke-static {p0}, Lcom/android/dialer/util/DialerUtils;->getDefaultSharedPreferenceForDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "answer_hint_answered_count"

    const/4 v1, 0x0

    .line 77
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 78
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    add-int/lit8 v1, v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static isDeviceWhitelisted(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 113
    invoke-static {p0}, Lcom/android/dialer/configprovider/ConfigProviderBindings;->get(Landroid/content/Context;)Lcom/android/dialer/configprovider/ConfigProvider;

    move-result-object p0

    const-string v0, "answer_hint_whitelisted_devices"

    const-string v1, "/hammerhead//bullhead//angler//shamu//gm4g//gm4g_s//AQ4501//gce_x86_phone//gm4gtkc_s//Sparkle_V//Mi-498//AQ4502//imobileiq2//A65//H940//m8_google//m0xx//A10//ctih220//Mi438S//bacon/"

    .line 114
    invoke-interface {p0, v0, v1}, Lcom/android/dialer/configprovider/ConfigProvider;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 115
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method static shouldShowAnswerHint(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    .line 83
    invoke-static {p0}, Lcom/android/incallui/util/AccessibilityUtil;->isTouchExplorationEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 88
    :cond_0
    invoke-static {p0, p1}, Lcom/android/incallui/answer/impl/hint/AnswerHintFactory;->isDeviceWhitelisted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    .line 95
    :cond_1
    invoke-static {p0}, Lcom/android/dialer/util/DialerUtils;->getDefaultSharedPreferenceForDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "answer_hint_answered_count"

    .line 96
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 98
    invoke-static {p0}, Lcom/android/dialer/configprovider/ConfigProviderBindings;->get(Landroid/content/Context;)Lcom/android/dialer/configprovider/ConfigProvider;

    move-result-object p0

    const-wide/16 v2, 0x3

    const-string v0, "answer_hint_answered_threshold"

    invoke-interface {p0, v0, v2, v3}, Lcom/android/dialer/configprovider/ConfigProvider;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    .line 102
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, v1

    .line 103
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v4, 0x1

    aput-object v0, p0, v4

    const-string v0, "AnswerHintFactory.shouldShowAnswerHint"

    const-string v5, "answerCount: %d, threshold: %d"

    .line 99
    invoke-static {v0, v5, p0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    int-to-long p0, p1

    cmp-long p0, p0, v2

    if-gez p0, :cond_2

    move v1, v4

    :cond_2
    return v1
.end method


# virtual methods
.method public create(Landroid/content/Context;JJ)Lcom/android/incallui/answer/impl/hint/AnswerHint;
    .locals 8

    .line 61
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/incallui/answer/impl/hint/AnswerHintFactory;->shouldShowAnswerHint(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    new-instance v0, Lcom/android/incallui/answer/impl/hint/DotAnswerHint;

    move-object v1, v0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/incallui/answer/impl/hint/DotAnswerHint;-><init>(Landroid/content/Context;JJ)V

    return-object v0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/answer/impl/hint/AnswerHintFactory;->pawImageLoader:Lcom/android/incallui/answer/impl/hint/PawImageLoader;

    invoke-interface {v0, p1}, Lcom/android/incallui/answer/impl/hint/PawImageLoader;->loadPayload(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 68
    new-instance v0, Lcom/android/incallui/answer/impl/hint/PawAnswerHint;

    move-object v1, v0

    move-object v2, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/incallui/answer/impl/hint/PawAnswerHint;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;JJ)V

    return-object v0

    .line 71
    :cond_1
    new-instance p1, Lcom/android/incallui/answer/impl/hint/EmptyAnswerHint;

    invoke-direct {p1}, Lcom/android/incallui/answer/impl/hint/EmptyAnswerHint;-><init>()V

    return-object p1
.end method
