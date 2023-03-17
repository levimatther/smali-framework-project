.class public Lcom/android/dialer/util/DialerUtils;
.super Ljava/lang/Object;
.source "DialerUtils.java"


# static fields
.field public static final FILE_PROVIDER_CACHE_DIR:Ljava/lang/String; = "my_cache"

.field private static final RANDOM:Ljava/util/Random;

.field private static final WPS_PREFIX:Ljava/lang/String; = "*272"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/android/dialer/util/DialerUtils;->RANDOM:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "closeable"    # Ljava/lang/AutoCloseable;

    .line 205
    if-eqz p0, :cond_0

    .line 207
    :try_start_0
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    goto :goto_0

    .line 210
    :catch_0
    move-exception v0

    goto :goto_0

    .line 208
    :catch_1
    move-exception v0

    .line 209
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 213
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public static createShareableFile(Landroid/content/Context;)Ljava/io/File;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 264
    sget-object v0, Lcom/android/dialer/util/DialerUtils;->RANDOM:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 265
    .local v0, "fileId":J
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "my_cache"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 266
    .local v2, "parentDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 267
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 269
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v3
.end method

.method public static hideInputMethod(Landroid/view/View;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .line 252
    nop

    .line 253
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 254
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 257
    :cond_0
    return-void
.end method

.method public static join(Ljava/lang/Iterable;)Ljava/lang/CharSequence;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .line 222
    .local p0, "list":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/CharSequence;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v1

    .line 224
    .local v1, "formatter":Landroid/text/BidiFormatter;
    const-string v2, ", "

    .line 226
    .local v2, "separator":Ljava/lang/CharSequence;
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 227
    .local v3, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/CharSequence;>;"
    const/4 v4, 0x1

    .line 228
    .local v4, "firstTime":Z
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 229
    if-eqz v4, :cond_0

    .line 230
    const/4 v4, 0x0

    goto :goto_1

    .line 232
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 235
    :goto_1
    nop

    .line 236
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v1, v5, v6}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v5

    .line 235
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 240
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method static synthetic lambda$startActivityWithErrorToast$0(Landroid/content/Context;Landroid/content/Intent;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .line 107
    invoke-static {p0, p1}, Lcom/android/dialer/util/DialerUtils;->placeCallOrMakeToast(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private static placeCallOrMakeToast(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
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

    if-eqz v5, :cond_4

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
    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 138
    .local v11, "elements":[Ljava/lang/String;
    const/4 v13, 0x0

    .line 139
    .local v13, "matches":Z
    array-length v14, v11

    move v15, v7

    :goto_0
    if-ge v15, v14, :cond_2

    aget-object v7, v11, v15

    .line 140
    .local v7, "s":Ljava/lang/String;
    move-object/from16 v16, v1

    .end local v1    # "uri":Landroid/net/Uri;
    .local v16, "uri":Landroid/net/Uri;
    const-string v1, "[^0-9]"

    invoke-virtual {v9, v1, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    const/4 v13, 0x1

    .line 142
    goto :goto_1

    .line 139
    .end local v7    # "s":Ljava/lang/String;
    :cond_1
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, v16

    const/4 v7, 0x0

    goto :goto_0

    .end local v16    # "uri":Landroid/net/Uri;
    .restart local v1    # "uri":Landroid/net/Uri;
    :cond_2
    move-object/from16 v16, v1

    .line 145
    .end local v1    # "uri":Landroid/net/Uri;
    .restart local v16    # "uri":Landroid/net/Uri;
    :goto_1
    if-eqz v13, :cond_3

    .line 146
    new-instance v1, Lcom/android/dialer/telecom/NumberCheck;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "https://whitelabel.safetelecom.net/blockednumbers?iccid="

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, "&serial="

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, "&imei="

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getImei()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, "&mdn"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, "&tenant=dil3mm4tenant"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v12, Lcom/android/dialer/util/DialerUtils$1;

    move-object/from16 v14, p1

    invoke-direct {v12, v0, v14}, Lcom/android/dialer/util/DialerUtils$1;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {v1, v7, v0, v3, v12}, Lcom/android/dialer/telecom/NumberCheck;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/android/dialer/telecom/OnFinishedListener;)V

    sget-object v7, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Void;

    .line 164
    invoke-virtual {v1, v7, v12}, Lcom/android/dialer/telecom/NumberCheck;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2

    .line 166
    :cond_3
    move-object/from16 v14, p1

    const/4 v12, 0x0

    const-string v1, "Your SIM card is not authorized. Contact support for more info."

    invoke-static {v0, v1, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 167
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 169
    .end local v8    # "si":Landroid/telephony/SubscriptionInfo;
    .end local v9    # "iccId":Ljava/lang/String;
    .end local v10    # "sharedICCIDS":Ljava/lang/String;
    .end local v11    # "elements":[Ljava/lang/String;
    .end local v13    # "matches":Z
    :goto_2
    goto :goto_3

    .line 170
    .end local v16    # "uri":Landroid/net/Uri;
    .restart local v1    # "uri":Landroid/net/Uri;
    :cond_4
    move-object/from16 v14, p1

    move-object/from16 v16, v1

    .end local v1    # "uri":Landroid/net/Uri;
    .restart local v16    # "uri":Landroid/net/Uri;
    invoke-static/range {p0 .. p1}, Lcom/android/dialer/telecom/TelecomUtil;->placeCall(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    .line 171
    .local v1, "hasCallPermission":Z
    if-nez v1, :cond_5

    .line 174
    const-string v7, "Cannot place call without Phone permission"

    const/4 v8, 0x0

    invoke-static {v0, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    .line 175
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 178
    .end local v1    # "hasCallPermission":Z
    :cond_5
    :goto_3
    return-void
.end method

.method private static shouldWarnForOutgoingWps(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .line 187
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const-string v1, "*272"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 188
    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 189
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    nop

    .line 190
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v2

    const/16 v3, 0xd

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v0

    .line 191
    .local v2, "isOnVolte":Z
    :goto_0
    nop

    .line 192
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    move v3, v0

    .line 193
    .local v3, "hasCurrentActiveCall":Z
    :goto_1
    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    move v0, v4

    :cond_2
    return v0

    .line 195
    .end local v1    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .end local v2    # "isOnVolte":Z
    .end local v3    # "hasCurrentActiveCall":Z
    :cond_3
    return v0
.end method

.method public static showInputMethod(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 244
    nop

    .line 245
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 246
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 247
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 249
    :cond_0
    return-void
.end method

.method public static startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 69
    const v0, 0x7f120035

    invoke-static {p0, p1, v0}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;I)V

    .line 70
    return-void
.end method

.method public static startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "msgId"    # I

    .line 84
    const-string v0, "android.telecom.extra.OUTGOING_CALL_EXTRAS"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.intent.action.CALL"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 86
    invoke-static {}, Lcom/android/dialer/util/TouchPointManager;->getInstance()Lcom/android/dialer/util/TouchPointManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dialer/util/TouchPointManager;->getPoint()Landroid/graphics/Point;

    move-result-object v2

    .line 87
    .local v2, "touchPoint":Landroid/graphics/Point;
    iget v3, v2, Landroid/graphics/Point;->x:I

    if-nez v3, :cond_0

    iget v3, v2, Landroid/graphics/Point;->y:I

    if-eqz v3, :cond_2

    .line 90
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 91
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .local v3, "extras":Landroid/os/Bundle;
    goto :goto_0

    .line 93
    .end local v3    # "extras":Landroid/os/Bundle;
    :cond_1
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 95
    .restart local v3    # "extras":Landroid/os/Bundle;
    :goto_0
    const-string v4, "touchPoint"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 96
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 99
    .end local v3    # "extras":Landroid/os/Bundle;
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/dialer/util/DialerUtils;->shouldWarnForOutgoingWps(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 100
    const-string v0, "DialUtils.startActivityWithErrorToast"

    const-string v3, "showing outgoing WPS dialog before placing call"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 104
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f120271

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 105
    const v3, 0x7f120128

    new-instance v4, Lcom/android/dialer/util/DialerUtils$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, p1}, Lcom/android/dialer/util/DialerUtils$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 108
    const/high16 v3, 0x1040000

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 109
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 110
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    goto :goto_1

    .line 111
    :cond_3
    invoke-static {p0, p1}, Lcom/android/dialer/util/DialerUtils;->placeCallOrMakeToast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 113
    .end local v2    # "touchPoint":Landroid/graphics/Point;
    :goto_1
    goto :goto_2

    .line 114
    :cond_4
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_2
    goto :goto_3

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-static {p0, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 119
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :goto_3
    return-void
.end method
