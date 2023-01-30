.class public Lcom/android/dialer/postcall/PostCall;
.super Ljava/lang/Object;
.source "PostCall.java"


# static fields
.field private static final KEY_POST_CALL_CALL_CONNECT_TIME:Ljava/lang/String; = "post_call_call_connect_time"

.field private static final KEY_POST_CALL_CALL_DISCONNECT_TIME:Ljava/lang/String; = "post_call_call_disconnect_time"

.field private static final KEY_POST_CALL_CALL_NUMBER:Ljava/lang/String; = "post_call_call_number"

.field private static final KEY_POST_CALL_MESSAGE_SENT:Ljava/lang/String; = "post_call_message_sent"

.field private static activeSnackbar:Lcom/google/android/material/snackbar/Snackbar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0

    .line 45
    invoke-static {p0}, Lcom/android/dialer/postcall/PostCall;->clear(Landroid/content/Context;)V

    return-void
.end method

.method private static clear(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 182
    sput-object v0, Lcom/android/dialer/postcall/PostCall;->activeSnackbar:Lcom/google/android/material/snackbar/Snackbar;

    .line 184
    invoke-static {p0}, Lcom/android/dialer/util/DialerUtils;->getDefaultSharedPreferenceForDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 185
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "post_call_call_disconnect_time"

    .line 186
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "post_call_call_number"

    .line 187
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "post_call_message_sent"

    .line 188
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "post_call_call_connect_time"

    .line 189
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 190
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static closePrompt()V
    .locals 1

    .line 67
    sget-object v0, Lcom/android/dialer/postcall/PostCall;->activeSnackbar:Lcom/google/android/material/snackbar/Snackbar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    sget-object v0, Lcom/android/dialer/postcall/PostCall;->activeSnackbar:Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->dismiss()V

    const/4 v0, 0x0

    .line 69
    sput-object v0, Lcom/android/dialer/postcall/PostCall;->activeSnackbar:Lcom/google/android/material/snackbar/Snackbar;

    :cond_0
    return-void
.end method

.method private static getPhoneNumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 219
    invoke-static {p0}, Lcom/android/dialer/util/DialerUtils;->getDefaultSharedPreferenceForDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "post_call_call_number"

    const/4 v1, 0x0

    .line 220
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static isEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 224
    invoke-static {p0}, Lcom/android/dialer/configprovider/ConfigProviderBindings;->get(Landroid/content/Context;)Lcom/android/dialer/configprovider/ConfigProvider;

    move-result-object p0

    const-string v0, "enable_post_call_prod"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcom/android/dialer/configprovider/ConfigProvider;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static isSimReady(Landroid/content/Context;)Z
    .locals 1

    .line 228
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result p0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$promptUserToSendMessage$0(Landroid/app/Activity;Ljava/lang/String;ZLandroid/view/View;)V
    .locals 1

    .line 93
    invoke-static {p0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p3

    sget-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->POST_CALL_PROMPT_USER_TO_SEND_MESSAGE_CLICKED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 94
    invoke-interface {p3, v0}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 95
    invoke-static {p0, p1, p2}, Lcom/android/dialer/postcall/PostCallActivity;->newIntent(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic lambda$promptUserToViewSentMessage$1(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;)V
    .locals 1

    .line 122
    invoke-static {p0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p2

    sget-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->POST_CALL_PROMPT_USER_TO_VIEW_SENT_MESSAGE_CLICKED:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 123
    invoke-interface {p2, v0}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 125
    invoke-static {p1}, Lcom/android/dialer/util/IntentUtil;->getSendSmsIntent(Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    .line 126
    invoke-static {p0, p1}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static onCallDisconnected(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 1

    .line 152
    invoke-static {p0}, Lcom/android/dialer/util/DialerUtils;->getDefaultSharedPreferenceForDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 153
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "post_call_call_connect_time"

    .line 154
    invoke-interface {p0, v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    const-string v0, "post_call_call_disconnect_time"

    invoke-interface {p0, v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p2, "post_call_call_number"

    .line 156
    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 157
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static onMessageSent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 161
    invoke-static {p0}, Lcom/android/dialer/util/DialerUtils;->getDefaultSharedPreferenceForDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 162
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "post_call_call_number"

    .line 163
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "post_call_message_sent"

    const/4 v0, 0x1

    .line 164
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 165
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static promptUserForMessageIfNecessary(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 55
    invoke-static {p0}, Lcom/android/dialer/postcall/PostCall;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    invoke-static {p0}, Lcom/android/dialer/postcall/PostCall;->shouldPromptUserToViewSentMessage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-static {p0, p1}, Lcom/android/dialer/postcall/PostCall;->promptUserToViewSentMessage(Landroid/app/Activity;Landroid/view/View;)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-static {p0}, Lcom/android/dialer/postcall/PostCall;->shouldPromptUserToSendMessage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    invoke-static {p0, p1}, Lcom/android/dialer/postcall/PostCall;->promptUserToSendMessage(Landroid/app/Activity;Landroid/view/View;)V

    goto :goto_0

    .line 61
    :cond_1
    invoke-static {p0}, Lcom/android/dialer/postcall/PostCall;->clear(Landroid/content/Context;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static promptUserToSendMessage(Landroid/app/Activity;Landroid/view/View;)V
    .locals 7

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "PostCall.promptUserToSendMessage"

    const-string v3, "returned from call, showing post call SnackBar"

    .line 74
    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const v1, 0x7f1103b1

    .line 75
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-static {p0}, Lcom/android/dialer/enrichedcall/EnrichedCallComponent;->get(Landroid/content/Context;)Lcom/android/dialer/enrichedcall/EnrichedCallComponent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/dialer/enrichedcall/EnrichedCallComponent;->getEnrichedCallManager()Lcom/android/dialer/enrichedcall/EnrichedCallManager;

    move-result-object v3

    .line 77
    invoke-static {p0}, Lcom/android/dialer/postcall/PostCall;->getPhoneNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/dialer/enrichedcall/EnrichedCallManager;->getCapabilities(Ljava/lang/String;)Lcom/android/dialer/enrichedcall/EnrichedCallCapabilities;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 81
    invoke-static {p0}, Lcom/android/dialer/postcall/PostCall;->getPhoneNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/dialer/common/LogUtil;->sanitizePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x1

    aput-object v3, v4, v5

    const-string v6, "number: %s, capabilities: %s"

    .line 78
    invoke-static {v2, v6, v4}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v3, :cond_0

    .line 84
    invoke-virtual {v3}, Lcom/android/dialer/enrichedcall/EnrichedCallCapabilities;->supportsPostCall()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v5

    :cond_0
    if-eqz v0, :cond_1

    const v2, 0x7f1103b0

    .line 87
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const v2, 0x7f1103b7

    .line 88
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 90
    :goto_0
    invoke-static {p0}, Lcom/android/dialer/postcall/PostCall;->getPhoneNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 91
    new-instance v4, Lcom/android/dialer/postcall/-$$Lambda$PostCall$-EKt8P9xNJMLZNB7koiWygqo5a4;

    invoke-direct {v4, p0, v3, v0}, Lcom/android/dialer/postcall/-$$Lambda$PostCall$-EKt8P9xNJMLZNB7koiWygqo5a4;-><init>(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 99
    invoke-static {p0}, Lcom/android/dialer/configprovider/ConfigProviderBindings;->get(Landroid/content/Context;)Lcom/android/dialer/configprovider/ConfigProvider;

    move-result-object v0

    const-wide/16 v5, 0x1f40

    const-string v3, "post_call_prompt_duration_ms"

    invoke-interface {v0, v3, v5, v6}, Lcom/android/dialer/configprovider/ConfigProvider;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    long-to-int v0, v5

    .line 101
    invoke-static {p1, v1, v0}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    .line 102
    invoke-virtual {p1, v2, v4}, Lcom/google/android/material/snackbar/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    .line 104
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 103
    invoke-virtual {p1, v0}, Lcom/google/android/material/snackbar/Snackbar;->setActionTextColor(I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    sput-object p1, Lcom/android/dialer/postcall/PostCall;->activeSnackbar:Lcom/google/android/material/snackbar/Snackbar;

    .line 105
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 106
    invoke-static {p0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->POST_CALL_PROMPT_USER_TO_SEND_MESSAGE:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {p1, v0}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 107
    invoke-static {p0}, Lcom/android/dialer/util/DialerUtils;->getDefaultSharedPreferenceForDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 108
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "post_call_call_disconnect_time"

    .line 109
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 110
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static promptUserToViewSentMessage(Landroid/app/Activity;Landroid/view/View;)V
    .locals 5

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "PostCall.promptUserToViewSentMessage"

    const-string v3, "returned from sending a post call message, message sent."

    .line 114
    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const v1, 0x7f1103b5

    .line 117
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1104f4

    .line 118
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 119
    invoke-static {p0}, Lcom/android/dialer/postcall/PostCall;->getPhoneNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 120
    new-instance v4, Lcom/android/dialer/postcall/-$$Lambda$PostCall$qNOviO6V9ViV3rsJjolQ8p_AaKc;

    invoke-direct {v4, p0, v3}, Lcom/android/dialer/postcall/-$$Lambda$PostCall$qNOviO6V9ViV3rsJjolQ8p_AaKc;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 130
    invoke-static {p1, v1, v0}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    .line 131
    invoke-virtual {p1, v2, v4}, Lcom/google/android/material/snackbar/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    .line 133
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 132
    invoke-virtual {p1, v0}, Lcom/google/android/material/snackbar/Snackbar;->setActionTextColor(I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    new-instance v0, Lcom/android/dialer/postcall/PostCall$1;

    invoke-direct {v0}, Lcom/android/dialer/postcall/PostCall$1;-><init>()V

    .line 134
    invoke-virtual {p1, v0}, Lcom/google/android/material/snackbar/Snackbar;->addCallback(Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;)Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/snackbar/Snackbar;

    sput-object p1, Lcom/android/dialer/postcall/PostCall;->activeSnackbar:Lcom/google/android/material/snackbar/Snackbar;

    .line 142
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 143
    invoke-static {p0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->POST_CALL_PROMPT_USER_TO_VIEW_SENT_MESSAGE:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 144
    invoke-interface {p1, v0}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 145
    invoke-static {p0}, Lcom/android/dialer/util/DialerUtils;->getDefaultSharedPreferenceForDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 146
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "post_call_message_sent"

    .line 147
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 148
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static restartPerformanceRecordingIfARecentCallExist(Landroid/content/Context;)V
    .locals 5

    .line 174
    invoke-static {p0}, Lcom/android/dialer/util/DialerUtils;->getDefaultSharedPreferenceForDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "post_call_call_disconnect_time"

    const-wide/16 v1, -0x1

    .line 175
    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long p0, v3, v1

    if-eqz p0, :cond_0

    .line 176
    invoke-static {}, Lcom/android/dialer/performancereport/PerformanceReport;->isRecording()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 177
    invoke-static {}, Lcom/android/dialer/performancereport/PerformanceReport;->startRecording()V

    :cond_0
    return-void
.end method

.method private static shouldPromptUserToSendMessage(Landroid/content/Context;)Z
    .locals 11

    .line 195
    invoke-static {p0}, Lcom/android/dialer/util/DialerUtils;->getDefaultSharedPreferenceForDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "post_call_call_disconnect_time"

    const-wide/16 v2, -0x1

    .line 196
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v1, "post_call_call_connect_time"

    .line 197
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    sub-long v8, v4, v0

    .line 202
    invoke-static {p0}, Lcom/android/dialer/configprovider/ConfigProviderBindings;->get(Landroid/content/Context;)Lcom/android/dialer/configprovider/ConfigProvider;

    move-result-object v10

    cmp-long v4, v4, v2

    if-eqz v4, :cond_1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 205
    invoke-static {p0}, Lcom/android/dialer/postcall/PostCall;->isSimReady(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x7530

    const-string v4, "postcall_last_call_threshold"

    .line 206
    invoke-interface {v10, v4, v2, v3}, Lcom/android/dialer/configprovider/ConfigProvider;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-lez v2, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x88b8

    const-string v2, "postcall_call_duration_threshold"

    .line 208
    invoke-interface {v10, v2, v0, v1}, Lcom/android/dialer/configprovider/ConfigProvider;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-lez v0, :cond_1

    .line 209
    :cond_0
    invoke-static {p0}, Lcom/android/dialer/postcall/PostCall;->getPhoneNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static shouldPromptUserToViewSentMessage(Landroid/content/Context;)Z
    .locals 2

    .line 213
    invoke-static {p0}, Lcom/android/dialer/util/DialerUtils;->getDefaultSharedPreferenceForDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "post_call_message_sent"

    const/4 v1, 0x0

    .line 214
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
