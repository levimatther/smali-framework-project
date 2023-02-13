.class public final Lcom/android/dialer/telecom/ICCIDFetchService;
.super Landroid/app/Service;
.source "ICCIDFetchService.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Service;",
        "Lcom/android/volley/Response$Listener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final CHANNEL_ID:Ljava/lang/String; = "ICCIDFetchService_notif_chan"

.field private static final CHECK_UPDATE_NOTIFICATION_TAG:Ljava/lang/String; = "ICCIDFetchService"

.field private static final SERVICE_NOTIFICATION_ID:I = 0x2


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSerialNumber:Ljava/lang/String;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private processDatabase(Ljava/lang/String;)V
    .locals 6
    .param p1, "jsonString"    # Ljava/lang/String;

    .line 81
    const-string v0, ""

    .line 83
    .local v0, "iccids":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 84
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "ICCIDS"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONArray;

    .line 85
    .local v2, "jsonAuthorities":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 86
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v4

    .line 85
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 89
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "jsonAuthorities":Lorg/json/JSONArray;
    .end local v3    # "i":I
    :cond_0
    goto :goto_1

    .line 88
    :catchall_0
    move-exception v1

    .line 90
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 92
    iget-object v1, p0, Lcom/android/dialer/telecom/ICCIDFetchService;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/dialer/telecom/ICCIDFetchService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_preferences"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 93
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "ICCIDS_KEY"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 95
    :cond_1
    return-void
.end method

.method private serviceInit()V
    .locals 2

    .line 56
    invoke-direct {p0}, Lcom/android/dialer/telecom/ICCIDFetchService;->serviceNotification()V

    .line 57
    invoke-virtual {p0}, Lcom/android/dialer/telecom/ICCIDFetchService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/telecom/ICCIDFetchService;->mContext:Landroid/content/Context;

    .line 58
    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/telecom/ICCIDFetchService;->mSerialNumber:Ljava/lang/String;

    .line 59
    invoke-virtual {p0}, Lcom/android/dialer/telecom/ICCIDFetchService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/dialer/telecom/ICCIDFetchService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://whitelabel.safetelecom.net/simcheck?serial="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/telecom/ICCIDFetchService;->mSerialNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&imei="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/telecom/ICCIDFetchService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&mdn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/telecom/ICCIDFetchService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&tenant=dil3mm4tenant"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/dialer/telecom/ICCIDFetchService;->setupConnection(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method private serviceNotification()V
    .locals 6

    .line 103
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "ICCIDFetchService_notif_chan"

    const-string v2, "ICCIDFetchService"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 106
    .local v0, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {p0}, Lcom/android/dialer/telecom/ICCIDFetchService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    invoke-virtual {v2, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 107
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v2, p0, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 108
    const v1, 0x7f0800ae

    invoke-virtual {v2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 109
    const-string v2, "Checking for updates"

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 110
    .local v1, "notification":Landroid/app/Notification;
    const/4 v2, 0x2

    invoke-virtual {p0, v2, v1}, Lcom/android/dialer/telecom/ICCIDFetchService;->startForeground(ILandroid/app/Notification;)V

    .line 111
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/dialer/telecom/ICCIDFetchService;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/android/dialer/telecom/ICCIDFetchService$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/dialer/telecom/ICCIDFetchService$$ExternalSyntheticLambda0;-><init>(Lcom/android/dialer/telecom/ICCIDFetchService;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 112
    return-void
.end method

.method private setupConnection(Ljava/lang/String;)V
    .locals 4
    .param p1, "urlString"    # Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lcom/android/dialer/telecom/ICCIDFetchService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    .line 76
    .local v0, "queue":Lcom/android/volley/RequestQueue;
    new-instance v1, Lcom/android/volley/toolbox/StringRequest;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p0, v3}, Lcom/android/volley/toolbox/StringRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 77
    .local v1, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 78
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/android/dialer/telecom/ICCIDFetchService;->serviceInit()V

    .line 53
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 65
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/dialer/telecom/ICCIDFetchService;->stopForeground(Z)V

    .line 66
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 67
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/dialer/telecom/ICCIDFetchService;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 4
    .param p1, "response"    # Ljava/lang/String;

    .line 116
    invoke-direct {p0, p1}, Lcom/android/dialer/telecom/ICCIDFetchService;->processDatabase(Ljava/lang/String;)V

    .line 117
    new-instance v0, Lcom/android/dialer/telecom/NumberCheck;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://whitelabel.safetelecom.net/blockednumbers?serial="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/telecom/ICCIDFetchService;->mSerialNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&imei="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/telecom/ICCIDFetchService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&mdn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/telecom/ICCIDFetchService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&tenant=dil3mm4tenant"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/telecom/ICCIDFetchService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/android/dialer/telecom/NumberCheck;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/android/dialer/telecom/OnFinishedListener;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/dialer/telecom/NumberCheck;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 118
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 46
    invoke-direct {p0}, Lcom/android/dialer/telecom/ICCIDFetchService;->serviceInit()V

    .line 47
    const/4 v0, 0x2

    return v0
.end method
