.class public Lcom/android/voicemail/impl/TelephonyMangerCompat;
.super Ljava/lang/Object;
.source "TelephonyMangerCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendVisualVoicemailSms(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;ILjava/lang/String;Landroid/app/PendingIntent;)Ljava/lang/String;
    .locals 13

    move-object v1, p0

    move-object v2, p1

    const-string v3, "TelephonyMangerCompat.sendVisualVoicemailSms"

    const-string v4, "sendVisualVoicemailSms"

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x4

    const/4 v9, 0x0

    .line 39
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    new-array v10, v8, [Ljava/lang/Class;

    const-class v11, Ljava/lang/String;

    aput-object v11, v10, v9

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v7

    const-class v11, Ljava/lang/String;

    aput-object v11, v10, v6

    const-class v11, Landroid/app/PendingIntent;

    aput-object v11, v10, v5

    .line 40
    invoke-virtual {v0, v4, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string/jumbo v10, "using TelephonyManager"

    new-array v11, v9, [Ljava/lang/Object;

    .line 43
    invoke-static {v3, v10, v11}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    const-class v10, Landroid/telephony/TelephonyManager;

    .line 46
    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    .line 47
    invoke-virtual {v10, p1}, Landroid/telephony/TelephonyManager;->createForPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)Landroid/telephony/TelephonyManager;

    move-result-object v10

    new-array v11, v8, [Ljava/lang/Object;

    aput-object p2, v11, v9

    .line 48
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v7

    aput-object p4, v11, v6

    aput-object p5, v11, v5

    invoke-virtual {v0, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_0
    move-exception v0

    .line 50
    :try_start_2
    new-instance v10, Ljava/lang/RuntimeException;

    invoke-direct {v10, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v10
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :try_start_3
    const-string/jumbo v0, "using VisualVoicemailService"

    new-array v10, v9, [Ljava/lang/Object;

    .line 57
    invoke-static {v3, v0, v10}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    const-class v0, Landroid/telephony/VisualVoicemailService;

    const/4 v3, 0x6

    new-array v10, v3, [Ljava/lang/Class;

    const-class v11, Landroid/content/Context;

    aput-object v11, v10, v9

    const-class v11, Landroid/telecom/PhoneAccountHandle;

    aput-object v11, v10, v7

    const-class v11, Ljava/lang/String;

    aput-object v11, v10, v6

    sget-object v11, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v5

    const-class v11, Ljava/lang/String;

    aput-object v11, v10, v8

    const-class v11, Landroid/app/PendingIntent;

    const/4 v12, 0x5

    aput-object v11, v10, v12

    .line 59
    invoke-virtual {v0, v4, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v9

    aput-object v2, v3, v7

    aput-object p2, v3, v6

    move/from16 v1, p3

    int-to-short v1, v1

    .line 68
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    aput-object v1, v3, v5

    aput-object p4, v3, v8

    aput-object p5, v3, v12

    invoke-virtual {v0, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_3 .. :try_end_3} :catch_2

    return-object v0

    :catch_2
    move-exception v0

    .line 71
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static setVisualVoicemailSmsFilterSettings(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Landroid/telephony/VisualVoicemailSmsFilterSettings;)Ljava/lang/String;
    .locals 8

    const-string v0, "TelephonyMangerCompat.setVisualVoicemailSmsFilterSettings"

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 81
    :try_start_0
    const-class v3, Landroid/telephony/TelephonyManager;

    const-string v4, "setVisualVoicemailSmsFilterSettings"

    new-array v5, v1, [Ljava/lang/Class;

    const-class v6, Landroid/telephony/VisualVoicemailSmsFilterSettings;

    aput-object v6, v5, v2

    .line 82
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string/jumbo v4, "using TelephonyManager"

    new-array v5, v2, [Ljava/lang/Object;

    .line 85
    invoke-static {v0, v4, v5}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    const-class v4, Landroid/telephony/TelephonyManager;

    .line 89
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 90
    invoke-virtual {v4, p1}, Landroid/telephony/TelephonyManager;->createForPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p2, v5, v2

    .line 91
    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v3

    :catch_0
    move-exception v3

    .line 93
    :try_start_2
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :try_start_3
    const-string/jumbo v3, "using VisualVoicemailService"

    new-array v4, v2, [Ljava/lang/Object;

    .line 100
    invoke-static {v0, v3, v4}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    const-class v0, Landroid/telephony/VisualVoicemailService;

    const-string v3, "setSmsFilterSettings"

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v2

    const-class v6, Landroid/telecom/PhoneAccountHandle;

    aput-object v6, v5, v1

    const-class v6, Landroid/telephony/VisualVoicemailSmsFilterSettings;

    const/4 v7, 0x2

    aput-object v6, v5, v7

    .line 104
    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v2

    aput-object p1, v4, v1

    aput-object p2, v4, v7

    .line 109
    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_3 .. :try_end_3} :catch_2

    return-object p0

    :catch_2
    move-exception p0

    .line 112
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
