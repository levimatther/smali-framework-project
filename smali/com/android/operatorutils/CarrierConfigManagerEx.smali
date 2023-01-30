.class public Lcom/android/operatorutils/CarrierConfigManagerEx;
.super Ljava/lang/Object;
.source "CarrierConfigManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/operatorutils/CarrierConfigManagerEx$DialerBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final ACTION_SERVICE_STATE:Ljava/lang/String; = "android.intent.action.SERVICE_STATE"

.field private static final DEVICE_NAME:Ljava/lang/String;

.field private static final OPERATOR_ALTICE:Ljava/lang/String; = "Altice USA"

.field public static final OPERATOR_ATT:Ljava/lang/String; = "AT&T"

.field private static final OPERATOR_ATT_CK:Ljava/lang/String; = "Cricket-Wireless"

.field private static final OPERATOR_ATT_CK_NEW:Ljava/lang/String; = "cricket"

.field private static final OPERATOR_ATT_FN:Ljava/lang/String; = "FirstNet"

.field private static final OPERATOR_BOOST_ATT:Ljava/lang/String; = "Boost-AT&T"

.field private static final OPERATOR_BOOST_INFINITE:Ljava/lang/String; = "Boost Infinite"

.field public static final OPERATOR_EMPTY:Ljava/lang/String; = "empty"

.field public static final OPERATOR_METRO:Ljava/lang/String; = "Metro by T-Mobile"

.field public static final OPERATOR_METROPCS:Ljava/lang/String; = "MetroPCS"

.field private static final OPERATOR_TF_ATT:Ljava/lang/String; = "Tracfone-ATT"

.field private static final OPERATOR_TF_TMO:Ljava/lang/String; = "Tracfone-TMO"

.field private static final OPERATOR_TF_VZW:Ljava/lang/String; = "Tracfone-VZW"

.field public static final OPERATOR_TMO:Ljava/lang/String; = "T-Mobile"

.field private static final OPERATOR_TMO_SM:Ljava/lang/String; = "Simple Mobile"

.field private static final OPERATOR_TMO_WFM:Ljava/lang/String; = "Family Mobile (Walmart)"

.field private static final OPERATOR_VISIBLE:Ljava/lang/String; = "Visible"

.field public static final OPERATOR_VZW:Ljava/lang/String; = "Verizon"

.field private static final TAG:Ljava/lang/String; = "CarrierConfigManagerEx "

.field private static final TCT_KEY_ISTF:Ljava/lang/String; = "isTFCard"

.field private static isInLimitedServiceMode:Z = false

.field private static isInited:Z = false

.field private static volatile mIsWhiteCard:Z = false

.field private static volatile mOperatorBundle:Landroid/os/PersistableBundle; = null

.field private static volatile mOperatorName:Ljava/lang/String; = "empty"

.field private static volatile mWhiteCardOperator:Ljava/lang/String; = "empty"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 82
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sput-object v0, Lcom/android/operatorutils/CarrierConfigManagerEx;->DEVICE_NAME:Ljava/lang/String;

    const/4 v0, 0x0

    .line 83
    sput-boolean v0, Lcom/android/operatorutils/CarrierConfigManagerEx;->isInLimitedServiceMode:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;)V
    .locals 0

    .line 52
    invoke-static {p0}, Lcom/android/operatorutils/CarrierConfigManagerEx;->updateCarrierData(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;)V
    .locals 0

    .line 52
    invoke-static {p0}, Lcom/android/operatorutils/CarrierConfigManagerEx;->setLimitedServiceMode(Landroid/content/Context;)V

    return-void
.end method

.method public static getOperatorBundle()Landroid/os/PersistableBundle;
    .locals 1

    .line 279
    sget-object v0, Lcom/android/operatorutils/CarrierConfigManagerEx;->mOperatorBundle:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public static getOperatorName()Ljava/lang/String;
    .locals 1

    .line 263
    sget-object v0, Lcom/android/operatorutils/CarrierConfigManagerEx;->mOperatorName:Ljava/lang/String;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 4

    .line 86
    sget-boolean v0, Lcom/android/operatorutils/CarrierConfigManagerEx;->isInited:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 89
    sput-boolean v0, Lcom/android/operatorutils/CarrierConfigManagerEx;->isInited:Z

    .line 90
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    .line 91
    :cond_1
    invoke-static {}, Lcom/android/tct/common/DialerSharedPreferencesManager;->getInstance()Lcom/android/tct/common/DialerSharedPreferencesManager;

    move-result-object v0

    const-class v2, Ljava/lang/String;

    const-string v3, "USERSET_WHITE_OPERATOR"

    invoke-virtual {v0, v3, v2}, Lcom/android/tct/common/DialerSharedPreferencesManager;->getValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 92
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 93
    sput-object v0, Lcom/android/operatorutils/CarrierConfigManagerEx;->mWhiteCardOperator:Ljava/lang/String;

    .line 95
    :cond_2
    invoke-static {p0}, Lcom/android/operatorutils/CarrierConfigManagerEx;->updateCarrierData(Landroid/content/Context;)V

    .line 97
    invoke-static {p0}, Lcom/android/operatorutils/CarrierConfigManagerEx;->setLimitedServiceMode(Landroid/content/Context;)V

    .line 98
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    .line 99
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SERVICE_STATE"

    .line 100
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    new-instance v2, Lcom/android/operatorutils/CarrierConfigManagerEx$DialerBroadcastReceiver;

    invoke-direct {v2, v1}, Lcom/android/operatorutils/CarrierConfigManagerEx$DialerBroadcastReceiver;-><init>(Lcom/android/operatorutils/CarrierConfigManagerEx$1;)V

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static isATTChildSimCard()Z
    .locals 2

    .line 142
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->getOperatorName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Tracfone-ATT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 143
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->getOperatorName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cricket-Wireless"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 144
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->getOperatorName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cricket"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 145
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->getOperatorName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FirstNet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 146
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->getOperatorName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Boost-AT&T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 147
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->getOperatorName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Boost Infinite"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isATTFamilySimCard()Z
    .locals 1

    .line 115
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->isATTSimCard()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->isATTChildSimCard()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isATTSimCard()Z
    .locals 2

    .line 164
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->getOperatorName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AT&T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/operatorutils/CarrierConfigManagerEx;->mWhiteCardOperator:Ljava/lang/String;

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isBangkokProduct()Z
    .locals 3

    .line 320
    sget-object v0, Lcom/android/operatorutils/CarrierConfigManagerEx;->DEVICE_NAME:Ljava/lang/String;

    const-string v1, "Bangkok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/operatorutils/CarrierConfigManagerEx;->DEVICE_NAME:Ljava/lang/String;

    const-string v2, "bangkok"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "CarrierConfigManagerEx "

    const-string v2, "deviceName : is Bangkok"

    .line 321
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method public static isCDProduct()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isDishInSimpleMode(Landroid/content/Context;)Z
    .locals 1

    .line 337
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->isDishProduct()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/operatorutils/CarrierConfigManagerEx;->isSimpleMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isDishProduct()Z
    .locals 2

    .line 309
    sget-object v0, Lcom/android/operatorutils/CarrierConfigManagerEx;->DEVICE_NAME:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "DISH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isInLimitedService()Z
    .locals 1

    .line 370
    sget-boolean v0, Lcom/android/operatorutils/CarrierConfigManagerEx;->isInLimitedServiceMode:Z

    return v0
.end method

.method public static isMPCSSimCard()Z
    .locals 2

    .line 202
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->getOperatorName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MetroPCS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isSimpleMode(Landroid/content/Context;)Z
    .locals 2

    .line 331
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "def_simple_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public static isTFSimCard()Z
    .locals 3

    .line 194
    sget-object v0, Lcom/android/operatorutils/CarrierConfigManagerEx;->mOperatorBundle:Landroid/os/PersistableBundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/operatorutils/CarrierConfigManagerEx;->mOperatorBundle:Landroid/os/PersistableBundle;

    const-string v2, "isTFCard"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public static isTMOChildSimCard()Z
    .locals 2

    .line 131
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->getOperatorName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Tracfone-TMO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 132
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->getOperatorName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Family Mobile (Walmart)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 133
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->getOperatorName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Simple Mobile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->getOperatorName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Altice USA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isTMOFamilySimCard()Z
    .locals 1

    .line 107
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->isTMOSimCard()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->isTMOChildSimCard()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isTMOSimCard()Z
    .locals 3

    .line 173
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->getOperatorName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "T-Mobile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 174
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->getOperatorName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Metro by T-Mobile"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 175
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->getOperatorName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MetroPCS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/operatorutils/CarrierConfigManagerEx;->mWhiteCardOperator:Ljava/lang/String;

    const-string v2, "empty"

    .line 176
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/operatorutils/CarrierConfigManagerEx;->mIsWhiteCard:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/operatorutils/CarrierConfigManagerEx;->mWhiteCardOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isTracfoneProduct()Z
    .locals 4

    .line 298
    sget-object v0, Lcom/android/operatorutils/CarrierConfigManagerEx;->DEVICE_NAME:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    sget-object v0, Lcom/android/operatorutils/CarrierConfigManagerEx;->DEVICE_NAME:Ljava/lang/String;

    .line 299
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "TF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "CarrierConfigManagerEx "

    const-string v2, "deviceName : is tracfone"

    .line 300
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public static isVZWChildSimCard()Z
    .locals 2

    .line 155
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->getOperatorName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Tracfone-VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 156
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->getOperatorName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Visible"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isVZWFamilySimCard()Z
    .locals 1

    .line 123
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->isVZWSimCard()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->isVZWChildSimCard()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isVZWSimCard()Z
    .locals 2

    .line 184
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->getOperatorName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Verizon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/operatorutils/CarrierConfigManagerEx;->mWhiteCardOperator:Ljava/lang/String;

    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isVisibleProduct()Z
    .locals 2

    .line 314
    sget-object v0, Lcom/android/operatorutils/CarrierConfigManagerEx;->DEVICE_NAME:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "Visible"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static setLimitedServiceMode(Landroid/content/Context;)V
    .locals 1

    .line 374
    invoke-static {p0}, Lcom/android/dialer/util/PermissionsUtil;->hasReadPhoneStatePermissions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "phone"

    .line 375
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 376
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 377
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getState()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 378
    sput-boolean p0, Lcom/android/operatorutils/CarrierConfigManagerEx;->isInLimitedServiceMode:Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 380
    sput-boolean p0, Lcom/android/operatorutils/CarrierConfigManagerEx;->isInLimitedServiceMode:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static setOperatorBundle(Landroid/os/PersistableBundle;)V
    .locals 0

    .line 283
    sput-object p0, Lcom/android/operatorutils/CarrierConfigManagerEx;->mOperatorBundle:Landroid/os/PersistableBundle;

    return-void
.end method

.method private static setOperatorName(Ljava/lang/String;)V
    .locals 1

    .line 267
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "empty"

    .line 268
    sput-object v0, Lcom/android/operatorutils/CarrierConfigManagerEx;->mOperatorName:Ljava/lang/String;

    .line 270
    :cond_0
    sput-object p0, Lcom/android/operatorutils/CarrierConfigManagerEx;->mOperatorName:Ljava/lang/String;

    return-void
.end method

.method public static setWhiteCardOperator(Ljava/lang/String;)V
    .locals 2

    .line 346
    sput-object p0, Lcom/android/operatorutils/CarrierConfigManagerEx;->mWhiteCardOperator:Ljava/lang/String;

    .line 347
    invoke-static {}, Lcom/android/tct/common/DialerSharedPreferencesManager;->getInstance()Lcom/android/tct/common/DialerSharedPreferencesManager;

    move-result-object v0

    const-string v1, "USERSET_WHITE_OPERATOR"

    invoke-virtual {v0, v1, p0}, Lcom/android/tct/common/DialerSharedPreferencesManager;->putValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/tct/common/DialerSharedPreferencesManager;

    return-void
.end method

.method private static updateCarrierData(Landroid/content/Context;)V
    .locals 3

    .line 229
    invoke-static {p0}, Lcom/android/dialer/util/PermissionsUtil;->hasReadPhoneStatePermissions(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    new-instance v0, Lcom/android/operatorutils/CarrierConfigManagerEx$1;

    invoke-direct {v0}, Lcom/android/operatorutils/CarrierConfigManagerEx$1;-><init>()V

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0, v1}, Lcom/android/dialer/util/PermissionsUtil;->registerPermissionReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    return-void

    .line 241
    :cond_0
    const-class v0, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v0}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "tct_carrier_name_string"

    const-string v2, ""

    .line 245
    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 246
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "carrier_name_string"

    const-string v2, "empty"

    .line 247
    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 250
    :cond_1
    invoke-static {v1}, Lcom/android/operatorutils/CarrierConfigManagerEx;->setOperatorName(Ljava/lang/String;)V

    .line 252
    invoke-static {v0}, Lcom/android/operatorutils/CarrierConfigManagerEx;->setOperatorBundle(Landroid/os/PersistableBundle;)V

    .line 254
    :cond_2
    invoke-static {p0}, Lcom/android/operatorutils/CarrierConfigManagerEx;->updateWhiteCard(Landroid/content/Context;)V

    .line 255
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Already updated operator name ,because the new sim card has been loaded! operator name:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/operatorutils/CarrierConfigManagerEx;->mOperatorName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "CarrierConfigManagerEx "

    invoke-static {v1, p0, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static updateWhiteCard(Landroid/content/Context;)V
    .locals 2

    const-string v0, "phone"

    .line 215
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 216
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p0

    .line 217
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array p0, v1, [Ljava/lang/Object;

    const-string v0, "OperatorCacheManager.updateWhiteCard"

    const-string v1, "the mccmnc is null"

    .line 218
    invoke-static {v0, v1, p0}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, "00101"

    .line 221
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    .line 222
    sput-boolean p0, Lcom/android/operatorutils/CarrierConfigManagerEx;->mIsWhiteCard:Z

    goto :goto_0

    .line 224
    :cond_1
    sput-boolean v1, Lcom/android/operatorutils/CarrierConfigManagerEx;->mIsWhiteCard:Z

    :goto_0
    return-void
.end method
