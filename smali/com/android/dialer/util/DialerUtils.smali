.class public Lcom/android/dialer/util/DialerUtils;
.super Ljava/lang/Object;
.source "DialerUtils.java"


# static fields
.field public static final FILE_PROVIDER_CACHE_DIR:Ljava/lang/String; = "my_cache"

.field private static final RANDOM:Ljava/util/Random;

.field private static final TAG_Dilaer:Ljava/lang/String; = "DialerUtils"

.field public static final TYPE_BLACK:I = 0x0

.field public static final TYPE_WHITE:I = 0x1

.field private static final WPS_PREFIX:Ljava/lang/String; = "*272"

.field public static final menu_line_center_color_text_default:Ljava/lang/String; = "#FF000000"

.field public static final menu_line_center_color_text_dish:Ljava/lang/String; = "#FFFFFFFF"

.field public static final menu_line_color_default:[I

.field public static final menu_line_color_dish:[I

.field public static final menu_line_start_color_text_default:Ljava/lang/String; = "#C5C2C2"

.field public static final menu_line_start_color_text_dish:Ljava/lang/String; = "#00FFFFFF"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 72
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/android/dialer/util/DialerUtils;->RANDOM:Ljava/util/Random;

    const/4 v0, 0x3

    new-array v1, v0, [I

    const-string v2, "#C5C2C2"

    .line 81
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    aput v3, v1, v4

    const-string v3, "#FF000000"

    .line 82
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x1

    aput v3, v1, v5

    .line 83
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    aput v2, v1, v3

    sput-object v1, Lcom/android/dialer/util/DialerUtils;->menu_line_color_default:[I

    new-array v0, v0, [I

    const-string v1, "#00FFFFFF"

    .line 84
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v4

    const-string v2, "#FFFFFFFF"

    .line 85
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v5

    .line 86
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v3

    sput-object v0, Lcom/android/dialer/util/DialerUtils;->menu_line_color_dish:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CheckAndSetImageForMenuBarAtPosition(Landroid/content/Context;Landroid/widget/MenuBar;II)V
    .locals 2

    .line 302
    invoke-static {p0}, Lcom/android/operatorutils/CarrierConfigManagerEx;->isDishInSimpleMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    if-nez p2, :cond_1

    const/4 p2, 0x0

    if-nez p3, :cond_0

    const p3, 0x7f08017a

    .line 305
    invoke-virtual {p0, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/widget/MenuBar;->setSoftKeyImage(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    if-ne p3, v0, :cond_3

    const p3, 0x7f08017c

    .line 307
    invoke-virtual {p0, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/widget/MenuBar;->setSoftKeyImage(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p2, v1, :cond_3

    if-nez p3, :cond_2

    const p2, 0x7f080191

    .line 311
    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Landroid/widget/MenuBar;->setSoftKeyImage(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    if-ne p3, v0, :cond_3

    const p2, 0x7f080192

    .line 313
    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Landroid/widget/MenuBar;->setSoftKeyImage(ILandroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 58
    invoke-static {p0, p1}, Lcom/android/dialer/util/DialerUtils;->placeCallOrMakeToast(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static closeQuietly(Ljava/lang/AutoCloseable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 204
    :try_start_0
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 206
    throw p0

    :catch_1
    :cond_0
    :goto_0
    return-void
.end method

.method public static createShareableFile(Landroid/content/Context;)Ljava/io/File;
    .locals 4

    .line 261
    sget-object v0, Lcom/android/dialer/util/DialerUtils;->RANDOM:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 262
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v3, "my_cache"

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 263
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 264
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 266
    :cond_0
    new-instance p0, Ljava/io/File;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method public static getDefaultSharedPreferenceForDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1

    .line 278
    invoke-static {p0}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    invoke-static {p0}, Landroidx/core/content/ContextCompat;->isDeviceProtectedStorage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    .line 282
    :cond_0
    invoke-static {p0}, Landroidx/core/content/ContextCompat;->createDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    move-object p0, v0

    .line 286
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static hideInputMethod(Landroid/view/View;)V
    .locals 2

    .line 250
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method public static isConferenceURICallLog(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, ";"

    .line 173
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 174
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isMediaTekPlatform()Z
    .locals 2

    .line 292
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v1, "mt[0-9]*"

    .line 293
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static join(Ljava/lang/Iterable;)Ljava/lang/CharSequence;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v1

    .line 223
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x1

    .line 225
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    const-string v3, ", "

    .line 229
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 233
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v1, v3, v4}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v3

    .line 232
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 237
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static placeCallOrMakeToast(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 122
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 123
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, "scheme":Ljava/lang/String;
    const-string v3, ""

    .line 126
    .local v3, "nr":Ljava/lang/String;
    const-string v4, "tel"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 127
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 130
    :cond_0
    invoke-static/range {p0 .. p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    .line 131
    .local v4, "sm":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v5

    .line 132
    .local v5, "sis":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const-class v6, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 133
    .local v6, "tm":Landroid/telephony/TelephonyManager;
    const/4 v7, 0x0

    if-eqz v5, :cond_2

    .line 134
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/SubscriptionInfo;

    .line 135
    .local v8, "si":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v9

    .line 136
    .local v9, "iccId":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_preferences"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v11, "ICCIDS_KEY"

    const-string v12, ""

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 137
    .local v10, "sharedICCIDS":Ljava/lang/String;
    const-string v11, "Dil3mm4"

    const-string v13, "OF INTEREST"

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "sharedICCIDS "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "iccId "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "contain evaluation: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "[^0-9]"

    invoke-virtual {v9, v14, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {v9, v14, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 142
    new-instance v11, Lcom/android/dialer/telecom/NumberCheck;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "https://whitelabel.safetelecom.net/blockednumbers/iccid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "serial="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "&imei="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "&tenant=safetelecom"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/android/dialer/util/DialerUtils$1;

    move-object/from16 v14, p1

    invoke-direct {v13, v0, v14}, Lcom/android/dialer/util/DialerUtils$1;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {v11, v12, v0, v3, v13}, Lcom/android/dialer/telecom/NumberCheck;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/android/dialer/telecom/OnFinishedListener;)V

    sget-object v12, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v7, v7, [Ljava/lang/Void;

    .line 160
    invoke-virtual {v11, v12, v7}, Lcom/android/dialer/telecom/NumberCheck;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 162
    :cond_1
    move-object/from16 v14, p1

    const-string v11, "This SIM seems deactivated, please contact support."

    invoke-static {v0, v11, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    .line 163
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 165
    .end local v8    # "si":Landroid/telephony/SubscriptionInfo;
    .end local v9    # "iccId":Ljava/lang/String;
    .end local v10    # "sharedICCIDS":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 166
    :cond_2
    move-object/from16 v14, p1

    invoke-static/range {p0 .. p1}, Lcom/android/dialer/telecom/TelecomUtil;->placeCall(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v8

    .line 167
    .local v8, "hasCallPermission":Z
    if-nez v8, :cond_3

    .line 170
    const-string v9, "Cannot place call without Phone permission"

    invoke-static {v0, v9, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    .line 171
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 174
    .end local v8    # "hasCallPermission":Z
    :cond_3
    :goto_1
    return-void
.end method

.method public static setMenuBarBackgroundColor(Landroid/widget/MenuBar;I)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 330
    :cond_0
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->isDishProduct()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 331
    invoke-virtual {p0, p1}, Landroid/widget/MenuBar;->setMenuBarBackgroundColor(I)V

    :cond_1
    return-void
.end method

.method public static setMenuBarMenuLine(Landroid/content/Context;Landroid/widget/MenuBar;[I)V
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 347
    :cond_0
    invoke-static {p0}, Lcom/android/operatorutils/CarrierConfigManagerEx;->isDishInSimpleMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    .line 348
    invoke-virtual {p1, p0}, Landroid/widget/MenuBar;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    .line 350
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    .line 352
    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    if-eqz p0, :cond_1

    const p1, 0x7f080178

    .line 354
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 355
    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    .line 356
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static setSoftKeyTextColor(Landroid/widget/MenuBar;II)V
    .locals 1

    if-eqz p0, :cond_1

    if-ltz p2, :cond_1

    const/4 v0, 0x2

    if-le p2, v0, :cond_0

    goto :goto_0

    .line 369
    :cond_0
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->isDishProduct()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 370
    invoke-virtual {p0, p1, p2}, Landroid/widget/MenuBar;->setSoftKeyTextColor(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static shouldWarnForOutgoingWps(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const-string v1, "*272"

    .line 183
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 184
    const-class p1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 185
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    const/4 v2, 0x1

    if-lt p1, v1, :cond_0

    .line 187
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result p1

    const/16 v1, 0xd

    if-ne p1, v1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v0

    .line 189
    :goto_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    move p0, v2

    goto :goto_1

    :cond_1
    move p0, v0

    :goto_1
    if-eqz p1, :cond_2

    if-eqz p0, :cond_2

    move v0, v2

    :cond_2
    return v0
.end method

.method public static showInputMethod(Landroid/view/View;)V
    .locals 2

    .line 242
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 244
    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method

.method public static startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const v0, 0x7f11004d

    .line 98
    invoke-static {p0, p1, v0}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;I)V

    return-void
.end method

.method public static startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 5

    const-string v0, "android.telecom.extra.OUTGOING_CALL_EXTRAS"

    const-string v1, "DialerUtils"

    const-string v2, "startActivityWithErrorToast: "

    .line 114
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.intent.action.CALL"

    .line 116
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 118
    invoke-static {}, Lcom/android/dialer/util/TouchPointManager;->getInstance()Lcom/android/dialer/util/TouchPointManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dialer/util/TouchPointManager;->getPoint()Landroid/graphics/Point;

    move-result-object v2

    .line 119
    iget v3, v2, Landroid/graphics/Point;->x:I

    if-nez v3, :cond_0

    iget v3, v2, Landroid/graphics/Point;->y:I

    if-eqz v3, :cond_2

    .line 122
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 123
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    goto :goto_0

    .line 125
    :cond_1
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    :goto_0
    const-string v4, "touchPoint"

    .line 127
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 128
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 131
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/dialer/util/DialerUtils;->shouldWarnForOutgoingWps(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "DialUtils.startActivityWithErrorToast"

    const-string v2, "showing outgoing WPS dialog before placing call"

    new-array v3, v1, [Ljava/lang/Object;

    .line 132
    invoke-static {v0, v2, v3}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f11038f

    .line 136
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f1101e4

    .line 137
    new-instance v3, Lcom/android/dialer/util/DialerUtils$1;

    invoke-direct {v3, p0, p1}, Lcom/android/dialer/util/DialerUtils$1;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 p1, 0x1040000

    const/4 v2, 0x0

    .line 145
    invoke-virtual {v0, p1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 146
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    .line 148
    :cond_3
    invoke-static {p0, p1}, Lcom/android/dialer/util/DialerUtils;->placeCallOrMakeToast(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    :cond_4
    const/high16 v0, 0x10000000

    .line 151
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 152
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 155
    :catch_0
    invoke-static {p0, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method
