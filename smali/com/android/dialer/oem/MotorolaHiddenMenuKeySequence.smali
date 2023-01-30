.class public Lcom/android/dialer/oem/MotorolaHiddenMenuKeySequence;
.super Ljava/lang/Object;
.source "MotorolaHiddenMenuKeySequence.java"


# static fields
.field private static final EXTRA_HIDDEN_MENU_CODE:Ljava/lang/String; = "HiddenMenuCode"

.field private static featureHiddenMenuEnabled:Z = false

.field private static hiddenKeyPatternArray:[Ljava/lang/String;

.field private static hiddenKeyPatternIntentArray:[Ljava/lang/String;

.field private static hiddenKeySequenceArray:[Ljava/lang/String;

.field private static hiddenKeySequenceIntentArray:[Ljava/lang/String;

.field private static instance:Lcom/android/dialer/oem/MotorolaHiddenMenuKeySequence;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-static {p1}, Lcom/android/dialer/oem/MotorolaUtils;->isSupportingHiddenMenu(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/android/dialer/oem/MotorolaHiddenMenuKeySequence;->featureHiddenMenuEnabled:Z

    if-eqz v0, :cond_1

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/oem/MotorolaHiddenMenuKeySequence;->hiddenKeySequenceArray:[Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/oem/MotorolaHiddenMenuKeySequence;->hiddenKeySequenceIntentArray:[Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/oem/MotorolaHiddenMenuKeySequence;->hiddenKeyPatternArray:[Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f03000f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/android/dialer/oem/MotorolaHiddenMenuKeySequence;->hiddenKeyPatternIntentArray:[Ljava/lang/String;

    .line 86
    sget-object v0, Lcom/android/dialer/oem/MotorolaHiddenMenuKeySequence;->hiddenKeySequenceArray:[Ljava/lang/String;

    array-length v1, v0

    sget-object v2, Lcom/android/dialer/oem/MotorolaHiddenMenuKeySequence;->hiddenKeySequenceIntentArray:[Ljava/lang/String;

    array-length v2, v2

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/android/dialer/oem/MotorolaHiddenMenuKeySequence;->hiddenKeyPatternArray:[Ljava/lang/String;

    array-length v2, v1

    array-length p1, p1

    if-ne v2, p1, :cond_0

    array-length p1, v0

    if-nez p1, :cond_1

    array-length p1, v1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/android/dialer/oem/MotorolaHiddenMenuKeySequence;->hiddenKeySequenceArray:[Ljava/lang/String;

    array-length v0, v0

    .line 93
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const/4 v0, 0x1

    sget-object v2, Lcom/android/dialer/oem/MotorolaHiddenMenuKeySequence;->hiddenKeySequenceIntentArray:[Ljava/lang/String;

    array-length v2, v2

    .line 94
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v0

    const/4 v0, 0x2

    sget-object v2, Lcom/android/dialer/oem/MotorolaHiddenMenuKeySequence;->hiddenKeyPatternArray:[Ljava/lang/String;

    array-length v2, v2

    .line 95
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v0

    const/4 v0, 0x3

    sget-object v2, Lcom/android/dialer/oem/MotorolaHiddenMenuKeySequence;->hiddenKeyPatternIntentArray:[Ljava/lang/String;

    array-length v2, v2

    .line 96
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v0

    const-string v0, "MotorolaHiddenMenuKeySequence"

    const-string v2, "the key sequence array is not matching, turn off feature.key sequence: %d != %d, key pattern %d != %d"

    .line 89
    invoke-static {v0, v2, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    sput-boolean v1, Lcom/android/dialer/oem/MotorolaHiddenMenuKeySequence;->featureHiddenMenuEnabled:Z

    :cond_1
    return-void
.end method

.method private static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/dialer/oem/MotorolaHiddenMenuKeySequence;
    .locals 2

    const-class v0, Lcom/android/dialer/oem/MotorolaHiddenMenuKeySequence;

    monitor-enter v0

    .line 65
    :try_start_0
    sget-object v1, Lcom/android/dialer/oem/MotorolaHiddenMenuKeySequence;->instance:Lcom/android/dialer/oem/MotorolaHiddenMenuKeySequence;

    if-nez v1, :cond_0

    .line 66
    new-instance v1, Lcom/android/dialer/oem/MotorolaHiddenMenuKeySequence;

    invoke-direct {v1, p0}, Lcom/android/dialer/oem/MotorolaHiddenMenuKeySequence;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/dialer/oem/MotorolaHiddenMenuKeySequence;->instance:Lcom/android/dialer/oem/MotorolaHiddenMenuKeySequence;

    .line 68
    :cond_0
    sget-object p0, Lcom/android/dialer/oem/MotorolaHiddenMenuKeySequence;->instance:Lcom/android/dialer/oem/MotorolaHiddenMenuKeySequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static handleCharSequence(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 51
    invoke-static {p0}, Lcom/android/dialer/oem/MotorolaHiddenMenuKeySequence;->getInstance(Landroid/content/Context;)Lcom/android/dialer/oem/MotorolaHiddenMenuKeySequence;

    .line 52
    sget-boolean v0, Lcom/android/dialer/oem/MotorolaHiddenMenuKeySequence;->featureHiddenMenuEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 55
    :cond_0
    invoke-static {p0, p1}, Lcom/android/dialer/oem/MotorolaHiddenMenuKeySequence;->handleKeySequence(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Lcom/android/dialer/oem/MotorolaHiddenMenuKeySequence;->handleKeyPattern(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private static handleKeyPattern(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .line 103
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-le v0, v2, :cond_2

    .line 104
    sget-object v0, Lcom/android/dialer/oem/MotorolaHiddenMenuKeySequence;->hiddenKeyPatternArray:[Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/dialer/oem/MotorolaHiddenMenuKeySequence;->hiddenKeyPatternIntentArray:[Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    move v0, v1

    .line 108
    :goto_0
    sget-object v2, Lcom/android/dialer/oem/MotorolaHiddenMenuKeySequence;->hiddenKeyPatternArray:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 109
    aget-object v2, v2, v0

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 110
    sget-object v1, Lcom/android/dialer/oem/MotorolaHiddenMenuKeySequence;->hiddenKeyPatternIntentArray:[Ljava/lang/String;

    aget-object v0, v1, v0

    invoke-static {p0, p1, v0}, Lcom/android/dialer/oem/MotorolaHiddenMenuKeySequence;->sendIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method private static handleKeySequence(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .line 117
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-le v0, v2, :cond_2

    .line 118
    sget-object v0, Lcom/android/dialer/oem/MotorolaHiddenMenuKeySequence;->hiddenKeySequenceArray:[Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/dialer/oem/MotorolaHiddenMenuKeySequence;->hiddenKeySequenceIntentArray:[Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    move v0, v1

    .line 122
    :goto_0
    sget-object v2, Lcom/android/dialer/oem/MotorolaHiddenMenuKeySequence;->hiddenKeySequenceArray:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 123
    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 124
    sget-object v1, Lcom/android/dialer/oem/MotorolaHiddenMenuKeySequence;->hiddenKeySequenceIntentArray:[Ljava/lang/String;

    aget-object v0, v1, v0

    invoke-static {p0, p1, v0}, Lcom/android/dialer/oem/MotorolaHiddenMenuKeySequence;->sendIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method private static sendIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "MotorolaHiddenMenuKeySequence.sendIntent"

    const-string v4, "input: %s"

    .line 132
    invoke-static {v3, v4, v1}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p2, 0x14000000

    .line 135
    invoke-virtual {v1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p2, "HiddenMenuCode"

    .line 136
    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 140
    iget-object p2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz p2, :cond_0

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean p1, p1, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eqz p1, :cond_0

    .line 143
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v0

    :cond_0
    const-string p0, "not able to resolve the intent"

    new-array p1, v2, [Ljava/lang/Object;

    .line 146
    invoke-static {v3, p0, p1}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "handleHiddenMenu Key Pattern Exception"

    .line 149
    invoke-static {v3, p1, p0}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return v2
.end method
