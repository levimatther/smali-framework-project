.class public Lcom/android/operatorutils/OpCustomizationFactoryBase;
.super Lcom/android/operatorutils/IOperatorManager;
.source "OpCustomizationFactoryBase.java"


# static fields
.field private static OpATTCustomizationFactory:Ljava/lang/String; = "com.android.operator.att.OpATTCustomizationFactory"

.field private static OpATTFamilyCustomizationFactory:Ljava/lang/String; = "com.android.operator.att.OpATTFamilyCustomizationFactory"

.field private static OpTMOCustomizationFactory:Ljava/lang/String; = "com.android.operator.tmo.OpTMOCustomizationFactory"

.field private static OpTMOFamilyCustomizationFactory:Ljava/lang/String; = "com.android.operator.tmo.OpTMOFamilyCustomizationFactory"

.field private static OpVZWCustomizationFactory:Ljava/lang/String; = "com.android.operator.vzw.OpVZWCustomizationFactory"

.field private static OpVZWFamilyCustomizationFactory:Ljava/lang/String; = "com.android.operator.vzw.OpVZWFamilyCustomizationFactory"

.field private static final TAG:Ljava/lang/String; = "OpCustomizationFactoryBase"

.field static sFactory:Lcom/android/operatorutils/IOperatorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/operatorutils/IOperatorManager;-><init>()V

    return-void
.end method

.method public static declared-synchronized getOpFactory()Lcom/android/operatorutils/IOperatorManager;
    .locals 2

    const-class v0, Lcom/android/operatorutils/OpCustomizationFactoryBase;

    monitor-enter v0

    .line 52
    :try_start_0
    sget-object v1, Lcom/android/operatorutils/OpCustomizationFactoryBase;->sFactory:Lcom/android/operatorutils/IOperatorManager;

    if-nez v1, :cond_5

    invoke-static {}, Lcom/android/operatorutils/OpCustomizationFactoryBase;->isOpCustomerAvailable()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 53
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->isATTSimCard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    sget-object v1, Lcom/android/operatorutils/OpCustomizationFactoryBase;->OpATTCustomizationFactory:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/operatorutils/OpCustomizationFactoryBase;->newInstacnce(Ljava/lang/String;)Lcom/android/operatorutils/IOperatorManager;

    move-result-object v1

    sput-object v1, Lcom/android/operatorutils/OpCustomizationFactoryBase;->sFactory:Lcom/android/operatorutils/IOperatorManager;

    goto :goto_0

    .line 55
    :cond_0
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->isATTFamilySimCard()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    sget-object v1, Lcom/android/operatorutils/OpCustomizationFactoryBase;->OpATTFamilyCustomizationFactory:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/operatorutils/OpCustomizationFactoryBase;->newInstacnce(Ljava/lang/String;)Lcom/android/operatorutils/IOperatorManager;

    move-result-object v1

    sput-object v1, Lcom/android/operatorutils/OpCustomizationFactoryBase;->sFactory:Lcom/android/operatorutils/IOperatorManager;

    goto :goto_0

    .line 57
    :cond_1
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->isTMOSimCard()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 58
    sget-object v1, Lcom/android/operatorutils/OpCustomizationFactoryBase;->OpTMOCustomizationFactory:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/operatorutils/OpCustomizationFactoryBase;->newInstacnce(Ljava/lang/String;)Lcom/android/operatorutils/IOperatorManager;

    move-result-object v1

    sput-object v1, Lcom/android/operatorutils/OpCustomizationFactoryBase;->sFactory:Lcom/android/operatorutils/IOperatorManager;

    goto :goto_0

    .line 59
    :cond_2
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->isTMOFamilySimCard()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 60
    sget-object v1, Lcom/android/operatorutils/OpCustomizationFactoryBase;->OpTMOFamilyCustomizationFactory:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/operatorutils/OpCustomizationFactoryBase;->newInstacnce(Ljava/lang/String;)Lcom/android/operatorutils/IOperatorManager;

    move-result-object v1

    sput-object v1, Lcom/android/operatorutils/OpCustomizationFactoryBase;->sFactory:Lcom/android/operatorutils/IOperatorManager;

    goto :goto_0

    .line 61
    :cond_3
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->isVZWSimCard()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 62
    sget-object v1, Lcom/android/operatorutils/OpCustomizationFactoryBase;->OpVZWCustomizationFactory:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/operatorutils/OpCustomizationFactoryBase;->newInstacnce(Ljava/lang/String;)Lcom/android/operatorutils/IOperatorManager;

    move-result-object v1

    sput-object v1, Lcom/android/operatorutils/OpCustomizationFactoryBase;->sFactory:Lcom/android/operatorutils/IOperatorManager;

    goto :goto_0

    .line 63
    :cond_4
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->isVZWFamilySimCard()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 64
    sget-object v1, Lcom/android/operatorutils/OpCustomizationFactoryBase;->OpVZWFamilyCustomizationFactory:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/operatorutils/OpCustomizationFactoryBase;->newInstacnce(Ljava/lang/String;)Lcom/android/operatorutils/IOperatorManager;

    move-result-object v1

    sput-object v1, Lcom/android/operatorutils/OpCustomizationFactoryBase;->sFactory:Lcom/android/operatorutils/IOperatorManager;

    .line 67
    :cond_5
    :goto_0
    sget-object v1, Lcom/android/operatorutils/OpCustomizationFactoryBase;->sFactory:Lcom/android/operatorutils/IOperatorManager;

    if-nez v1, :cond_6

    .line 68
    new-instance v1, Lcom/android/operatorutils/OpCustomizationFactoryBase;

    invoke-direct {v1}, Lcom/android/operatorutils/OpCustomizationFactoryBase;-><init>()V

    sput-object v1, Lcom/android/operatorutils/OpCustomizationFactoryBase;->sFactory:Lcom/android/operatorutils/IOperatorManager;

    .line 70
    :cond_6
    sget-object v1, Lcom/android/operatorutils/OpCustomizationFactoryBase;->sFactory:Lcom/android/operatorutils/IOperatorManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static isOpCustomerAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static newInstacnce(Ljava/lang/String;)Lcom/android/operatorutils/IOperatorManager;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/operatorutils/IOperatorManager;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 75
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/operatorutils/IOperatorManager;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 85
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 83
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 81
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p0

    .line 79
    invoke-virtual {p0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception p0

    .line 77
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public applicationOncreate(Landroid/content/Context;)V
    .locals 2

    .line 195
    invoke-static {p1}, Lcom/tcl/netlibrary/util/AppContextUtils;->init(Landroid/content/Context;)V

    .line 196
    invoke-static {p1}, Lcom/tcl/netlibrary/config/VVMConfig;->getInstance(Landroid/content/Context;)Lcom/tcl/netlibrary/config/VVMConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tcl/netlibrary/config/VVMConfig;->fetchVvmConfig()V

    .line 197
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 198
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 199
    new-instance v1, Lcom/android/voicemail/impl/NetworkChangeReceiver;

    invoke-direct {v1}, Lcom/android/voicemail/impl/NetworkChangeReceiver;-><init>()V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public isHiddenRowInCallLog(Ljava/lang/String;J)Z
    .locals 1

    .line 128
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    return p3

    :cond_0
    const-string p2, "0"

    .line 133
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "1"

    .line 134
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-le p2, v0, :cond_3

    :cond_1
    const-string p2, "2"

    .line 135
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-le p2, v0, :cond_3

    :cond_2
    const-string p2, "3"

    .line 136
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "4"

    .line 137
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "5"

    .line 138
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const/4 p3, 0x1

    :cond_4
    return p3
.end method

.method public lowBatteryOnCallStateChange(Landroid/content/Context;I)V
    .locals 0

    return-void
.end method

.method public onCarrierConfigChanged()V
    .locals 1

    const/4 v0, 0x0

    .line 95
    sput-object v0, Lcom/android/operatorutils/OpCustomizationFactoryBase;->sFactory:Lcom/android/operatorutils/IOperatorManager;

    return-void
.end method

.method public showBlockSuppressionTips(Landroid/content/Context;)Z
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 105
    :cond_0
    sget-boolean v0, Lcom/android/tct/common/DialerDialogActivity;->sIsShowing:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 106
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->isTracfoneProduct()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    invoke-static {p1}, Lcom/android/dialer/util/CallUtil;->isVoiceRegStateInService(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/tct/common/DialerDialogActivity;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "show_block_suppression"

    .line 109
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 110
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 111
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return v1
.end method

.method public toastWhenConferenceIsFull(Landroid/content/Context;)Z
    .locals 9

    .line 154
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getCallList()Lcom/android/incallui/call/CallList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 158
    :cond_0
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->getOperatorBundle()Landroid/os/PersistableBundle;

    move-result-object v2

    const/4 v3, 0x5

    if-eqz v2, :cond_1

    const-string v4, "ims_conference_size_limit_int"

    .line 161
    invoke-virtual {v2, v4, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 164
    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/call/CallList;->getBackgroundCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v2

    .line 165
    invoke-virtual {v0}, Lcom/android/incallui/call/CallList;->getActiveCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    const v4, 0x7f110154

    const-string v5, "childCallAmount = "

    const-string v6, "toastWhenConferenceIsFull"

    const/4 v7, 0x1

    if-eqz v2, :cond_2

    .line 166
    invoke-virtual {v2}, Lcom/android/incallui/call/DialerCall;->isConferenceCall()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 167
    invoke-virtual {v2}, Lcom/android/incallui/call/DialerCall;->getChildCallIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v6, v2, v5}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-ne v0, v3, :cond_3

    .line 170
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v7

    :cond_2
    if-eqz v0, :cond_3

    .line 173
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->isConferenceCall()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 174
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getChildCallIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v6, v2, v5}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-ne v0, v3, :cond_3

    .line 177
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v7

    :cond_3
    :goto_0
    return v1
.end method
