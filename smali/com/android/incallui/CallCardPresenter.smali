.class public Lcom/android/incallui/CallCardPresenter;
.super Ljava/lang/Object;
.source "CallCardPresenter.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;
.implements Lcom/android/incallui/InCallPresenter$InCallDetailsListener;
.implements Lcom/android/incallui/InCallPresenter$InCallEventListener;
.implements Lcom/android/incallui/incall/protocol/InCallScreenDelegate;
.implements Lcom/android/incallui/call/DialerCallListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/CallCardPresenter$ContactLookupCallback;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_ANNOUNCEMENT_DELAY_MILLIS:J = 0x1f4L

.field private static final CONFIG_ENABLE_EMERGENCY_LOCATION:Ljava/lang/String; = "config_enable_emergency_location"

.field private static final CONFIG_ENABLE_EMERGENCY_LOCATION_DEFAULT:Z = true

.field private static final CONFIG_MIN_BATTERY_PERCENT_FOR_EMERGENCY_LOCATION:Ljava/lang/String; = "min_battery_percent_for_emergency_location"

.field private static final CONFIG_MIN_BATTERY_PERCENT_FOR_EMERGENCY_LOCATION_DEFAULT:J = 0xaL


# instance fields
.field private final accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final callLocation:Lcom/android/incallui/calllocation/CallLocation;

.field private final handler:Landroid/os/Handler;

.field private isInCallScreenReady:Z

.field private mContactsPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

.field private final mContext:Landroid/content/Context;

.field private mInCallScreen:Lcom/android/incallui/incall/protocol/InCallScreen;

.field private mIsFullscreen:Z

.field private mPrimary:Lcom/android/incallui/call/DialerCall;

.field private mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

.field private mSecondary:Lcom/android/incallui/call/DialerCall;

.field private mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

.field private final sendAccessibilityEventRunnable:Ljava/lang/Runnable;

.field private shouldSendAccessibilityEvent:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/CallCardPresenter;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 125
    iput-boolean v0, p0, Lcom/android/incallui/CallCardPresenter;->mIsFullscreen:Z

    .line 131
    new-instance v1, Lcom/android/incallui/CallCardPresenter$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/CallCardPresenter$1;-><init>(Lcom/android/incallui/CallCardPresenter;)V

    iput-object v1, p0, Lcom/android/incallui/CallCardPresenter;->sendAccessibilityEventRunnable:Ljava/lang/Runnable;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "CallCardController.constructor"

    const/4 v2, 0x0

    .line 147
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    .line 149
    invoke-static {p1}, Lcom/android/incallui/calllocation/CallLocationComponent;->get(Landroid/content/Context;)Lcom/android/incallui/calllocation/CallLocationComponent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/incallui/calllocation/CallLocationComponent;->getCallLocation()Lcom/android/incallui/calllocation/CallLocation;

    move-result-object p1

    iput-object p1, p0, Lcom/android/incallui/CallCardPresenter;->callLocation:Lcom/android/incallui/calllocation/CallLocation;

    .line 150
    iget-object p1, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    const-string v0, "accessibility"

    .line 151
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/android/incallui/CallCardPresenter;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/CallCardPresenter;)Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Lcom/android/incallui/CallCardPresenter;->shouldSendAccessibilityEvent:Z

    return p0
.end method

.method static synthetic access$002(Lcom/android/incallui/CallCardPresenter;Z)Z
    .locals 0

    .line 86
    iput-boolean p1, p0, Lcom/android/incallui/CallCardPresenter;->shouldSendAccessibilityEvent:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/incallui/CallCardPresenter;)Landroid/content/Context;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/incallui/CallCardPresenter;)Lcom/android/incallui/incall/protocol/InCallScreen;
    .locals 0

    .line 86
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/incall/protocol/InCallScreen;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/incallui/CallCardPresenter;)Landroid/os/Handler;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/android/incallui/CallCardPresenter;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/incallui/CallCardPresenter;Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/android/incallui/CallCardPresenter;->onContactInfoComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/incallui/CallCardPresenter;Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/CallCardPresenter;->onImageLoadComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    return-void
.end method

.method private getCallStateIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1010
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1011
    invoke-virtual {v0}, Landroid/telecom/StatusHints;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1012
    invoke-virtual {v0}, Landroid/telecom/StatusHints;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 1018
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getCallProviderIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getCallToDisplay(Lcom/android/incallui/call/CallList;Lcom/android/incallui/call/DialerCall;Z)Lcom/android/incallui/call/DialerCall;
    .locals 1

    .line 674
    invoke-virtual {p1}, Lcom/android/incallui/call/CallList;->getActiveCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eq v0, p2, :cond_0

    return-object v0

    .line 681
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/call/CallList;->getSecondActiveCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eq v0, p2, :cond_1

    return-object v0

    :cond_1
    if-nez p3, :cond_3

    .line 690
    invoke-virtual {p1}, Lcom/android/incallui/call/CallList;->getDisconnectingCall()Lcom/android/incallui/call/DialerCall;

    move-result-object p3

    if-eqz p3, :cond_2

    if-eq p3, p2, :cond_2

    return-object p3

    .line 694
    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/call/CallList;->getDisconnectedCall()Lcom/android/incallui/call/DialerCall;

    move-result-object p3

    if-eqz p3, :cond_3

    if-eq p3, p2, :cond_3

    return-object p3

    .line 701
    :cond_3
    invoke-virtual {p1}, Lcom/android/incallui/call/CallList;->getBackgroundCall()Lcom/android/incallui/call/DialerCall;

    move-result-object p3

    if-eqz p3, :cond_4

    if-eq p3, p2, :cond_4

    return-object p3

    .line 707
    :cond_4
    invoke-virtual {p1}, Lcom/android/incallui/call/CallList;->getSecondBackgroundCall()Lcom/android/incallui/call/DialerCall;

    move-result-object p1

    return-object p1
.end method

.method private getConferenceString(Lcom/android/incallui/call/DialerCall;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    .line 1097
    invoke-virtual {p1, v0}, Lcom/android/incallui/call/DialerCall;->hasProperty(I)Z

    move-result p1

    .line 1098
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "CallCardPresenter.getConferenceString"

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    const p1, 0x7f11024e

    goto :goto_0

    :cond_0
    const p1, 0x7f110156

    .line 1102
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getConnectionLabel()Ljava/lang/String;
    .locals 4

    .line 984
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 988
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 989
    invoke-virtual {v0}, Landroid/telecom/StatusHints;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 990
    invoke-virtual {v0}, Landroid/telecom/StatusHints;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 993
    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->hasOutgoingGatewayCall()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/incall/protocol/InCallScreen;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 995
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 997
    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    .line 998
    invoke-virtual {v2}, Lcom/android/incallui/call/DialerCall;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telecom/GatewayInfo;->getGatewayProviderPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 999
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "CallCardPresenter.getConnectionLabel"

    const-string v3, "gateway Application Not Found."

    .line 1001
    invoke-static {v2, v3, v0}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    .line 1005
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getCallProviderLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getGatewayNumber()Ljava/lang/String;
    .locals 1

    .line 973
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->hasOutgoingGatewayCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 974
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/GatewayInfo;->getGatewayAddress()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/call/DialerCall;->getNumberFromHandle(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getLabelWithLocation()Ljava/lang/String;
    .locals 7

    .line 459
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getConnectionLabel()Ljava/lang/String;

    move-result-object v0

    .line 460
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v1, :cond_4

    .line 461
    invoke-direct {p0, v1}, Lcom/android/incallui/CallCardPresenter;->getNameForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v1

    .line 462
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-direct {p0, v2}, Lcom/android/incallui/CallCardPresenter;->getPrimaryInfoLocation(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 463
    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v5, v5, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    .line 464
    :goto_0
    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/android/incallui/call/DialerCall;->isConferenceCall()Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v4

    .line 465
    :goto_1
    iget-object v6, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/android/incallui/call/DialerCall;->isEmergencyCall()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    if-nez v1, :cond_4

    if-nez v5, :cond_4

    .line 466
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->isPrimaryCallActive()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v3, :cond_3

    .line 469
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 471
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    :goto_3
    return-object v0
.end method

.method private getLocationFragment()Landroidx/fragment/app/Fragment;
    .locals 5

    .line 840
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/configprovider/ConfigProviderBindings;->get(Landroid/content/Context;)Lcom/android/dialer/configprovider/ConfigProvider;

    move-result-object v0

    const-string v1, "config_enable_emergency_location"

    const/4 v2, 0x1

    .line 841
    invoke-interface {v0, v1, v2}, Lcom/android/dialer/configprovider/ConfigProvider;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "CallCardPresenter.getLocationFragment"

    if-nez v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "disabled by config."

    .line 842
    invoke-static {v3, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 845
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->shouldShowLocation()Z

    move-result v0

    if-nez v0, :cond_1

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "shouldn\'t show location"

    .line 846
    invoke-static {v3, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 849
    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->hasLocationPermission()Z

    move-result v0

    if-nez v0, :cond_2

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "no location permission."

    .line 850
    invoke-static {v3, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 853
    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->isBatteryTooLowForEmergencyLocation()Z

    move-result v0

    if-eqz v0, :cond_3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "low battery."

    .line 854
    invoke-static {v3, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 857
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mInCallScreen:Lcom/android/incallui/incall/protocol/InCallScreen;

    invoke-interface {v0}, Lcom/android/incallui/incall/protocol/InCallScreen;->getInCallScreenFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/compat/ActivityCompat;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "in multi-window mode"

    .line 858
    invoke-static {v3, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 861
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_5

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "emergency video calls not supported"

    .line 862
    invoke-static {v3, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 865
    :cond_5
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->callLocation:Lcom/android/incallui/calllocation/CallLocation;

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    invoke-interface {v0, v4}, Lcom/android/incallui/calllocation/CallLocation;->canGetLocation(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "can\'t get current location"

    .line 866
    invoke-static {v3, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_6
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "returning location fragment"

    .line 869
    invoke-static {v3, v1, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 870
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->callLocation:Lcom/android/incallui/calllocation/CallLocation;

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/android/incallui/calllocation/CallLocation;->getLocationFragment(Landroid/content/Context;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method private getNameForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;
    .locals 3

    .line 1037
    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->nameAlternative:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mContactsPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    .line 1038
    invoke-static {v0, v1, v2}, Lcom/android/contacts/common/util/ContactDisplayUtils;->getPreferredDisplayName(Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/common/preference/ContactsPreferences;)Ljava/lang/String;

    move-result-object v0

    .line 1040
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1041
    iget-object p1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    return-object p1

    :cond_0
    return-object v0
.end method

.method private getPrimaryInfoLocation(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 448
    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 449
    iget-object p1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method private getUi()Lcom/android/incallui/incall/protocol/InCallScreen;
    .locals 1

    .line 1224
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mInCallScreen:Lcom/android/incallui/incall/protocol/InCallScreen;

    return-object v0
.end method

.method private static hasCallSubject(Lcom/android/incallui/call/DialerCall;)Z
    .locals 0

    .line 155
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->getCallSubject()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private hasLocationPermission()Z
    .locals 2

    .line 896
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hasOutgoingGatewayCall()Z
    .locals 2

    .line 1027
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1030
    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/call/DialerCall$State;->isDialing(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    .line 1031
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    .line 1032
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/GatewayInfo;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private isBatteryTooLowForEmergencyLocation()Z
    .locals 7

    .line 901
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 902
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "status"

    const/4 v2, -0x1

    .line 903
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    const/4 v4, 0x5

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "level"

    .line 909
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v4, "scale"

    .line 910
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/high16 v2, 0x42c80000    # 100.0f

    int-to-float v1, v1

    mul-float/2addr v1, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 912
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    .line 913
    invoke-static {v0}, Lcom/android/dialer/configprovider/ConfigProviderBindings;->get(Landroid/content/Context;)Lcom/android/dialer/configprovider/ConfigProvider;

    move-result-object v0

    const-wide/16 v4, 0xa

    const-string v2, "min_battery_percent_for_emergency_location"

    .line 914
    invoke-interface {v0, v2, v4, v5}, Lcom/android/dialer/configprovider/ConfigProvider;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 917
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "percent charged: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", min required charge: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    const-string v6, "CallCardPresenter.isBatteryTooLowForEmergencyLocation"

    invoke-static {v6, v0, v2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    long-to-float v0, v4

    cmpg-float v0, v1, v0

    if-gez v0, :cond_1

    const/4 v3, 0x1

    :cond_1
    :goto_0
    return v3
.end method

.method private static isIncomingEmergencyCall(Lcom/android/incallui/call/DialerCall;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 892
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->isIncoming()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->isPotentialEmergencyCallback()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isOutgoingEmergencyCall(Lcom/android/incallui/call/DialerCall;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 888
    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->isIncoming()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/call/DialerCall;->isEmergencyCall()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isPrimaryCallActive()Z
    .locals 2

    .line 1088
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private maybeSendAccessibilityEvent(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Z)V
    .locals 2

    const/4 v0, 0x0

    .line 1169
    iput-boolean v0, p0, Lcom/android/incallui/CallCardPresenter;->shouldSendAccessibilityEvent:Z

    .line 1170
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    return-void

    .line 1173
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 1178
    :cond_1
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p1, v1, :cond_2

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p2, v1, :cond_4

    :cond_2
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p1, v1, :cond_3

    sget-object p1, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p2, p1, :cond_4

    :cond_3
    if-eqz p3, :cond_5

    :cond_4
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "CallCardPresenter.maybeSendAccessibilityEvent"

    const-string p3, "schedule accessibility announcement"

    .line 1181
    invoke-static {p2, p3, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 1183
    iput-boolean p1, p0, Lcom/android/incallui/CallCardPresenter;->shouldSendAccessibilityEvent:Z

    .line 1184
    iget-object p1, p0, Lcom/android/incallui/CallCardPresenter;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/incallui/CallCardPresenter;->sendAccessibilityEventRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    return-void
.end method

.method private maybeShowManageConferenceCallButton()V
    .locals 2

    .line 541
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/incall/protocol/InCallScreen;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->shouldShowManageConference()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/incallui/incall/protocol/InCallScreen;->showManageConferenceCallButton(Z)V

    return-void
.end method

.method private maybeStartSearch(Lcom/android/incallui/call/DialerCall;Z)V
    .locals 2

    if-eqz p1, :cond_1

    .line 598
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->isConferenceCall()Z

    move-result v0

    if-nez v0, :cond_1

    .line 599
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/incallui/CallCardPresenter;->startContactInfoSearch(Lcom/android/incallui/call/DialerCall;ZZ)V

    :cond_1
    return-void
.end method

.method private onContactInfoComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 612
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    if-eqz v1, :cond_0

    .line 613
    invoke-virtual {v1}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    if-nez p3, :cond_2

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/call/DialerCall;

    if-eqz v1, :cond_2

    .line 614
    invoke-virtual {v1}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    .line 616
    :goto_0
    iget-object v2, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "CallCardPresenter.onContactInfoComplete"

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v2, :cond_3

    .line 617
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPrimaryContactInfo.namePrimary is: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v4, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 618
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/incallui/call/DialerCall;->isConferenceCall()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v4, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 619
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v2, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    iput-object v2, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    :cond_3
    if-eqz v1, :cond_4

    .line 624
    invoke-direct {p0, p2, p3}, Lcom/android/incallui/CallCardPresenter;->updateContactEntry(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    goto :goto_1

    .line 626
    :cond_4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dropping stale contact lookup info for "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, p3, v0}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 631
    :goto_1
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/android/incallui/call/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/call/DialerCall;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 633
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getLogState()Lcom/android/incallui/call/DialerCall$LogState;

    move-result-object p1

    iget-object p3, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactLookupResult:Lcom/android/dialer/logging/ContactLookupResult$Type;

    iput-object p3, p1, Lcom/android/incallui/call/DialerCall$LogState;->contactLookupResult:Lcom/android/dialer/logging/ContactLookupResult$Type;

    .line 635
    :cond_5
    iget-object p1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactUri:Landroid/net/Uri;

    if-eqz p1, :cond_6

    .line 636
    iget-object p1, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    iget-object p2, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactUri:Landroid/net/Uri;

    invoke-static {p1, p2}, Lcom/android/incallui/CallerInfoUtils;->sendViewNotification(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_6
    return-void
.end method

.method private onImageLoadComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 1

    .line 641
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/incall/protocol/InCallScreen;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 645
    :cond_0
    iget-object v0, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 646
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 647
    invoke-direct {p0, p2, p1}, Lcom/android/incallui/CallCardPresenter;->updateContactEntry(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    goto :goto_0

    .line 648
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/call/DialerCall;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 649
    invoke-direct {p0, p2, p1}, Lcom/android/incallui/CallCardPresenter;->updateContactEntry(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method static sendAccessibilityEvent(Landroid/content/Context;Lcom/android/incallui/incall/protocol/InCallScreen;)Z
    .locals 5

    const-string v0, "accessibility"

    .line 1136
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 1137
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    const-string v1, "CallCardPresenter.sendAccessibilityEvent"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array p0, v2, [Ljava/lang/Object;

    const-string p1, "accessibility is off"

    .line 1138
    invoke-static {v1, p1, p0}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_0
    if-nez p1, :cond_1

    new-array p0, v2, [Ljava/lang/Object;

    const-string p1, "incallscreen is null"

    .line 1142
    invoke-static {v1, p1, p0}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 1145
    :cond_1
    invoke-interface {p1}, Lcom/android/incallui/incall/protocol/InCallScreen;->getInCallScreenFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1146
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "display"

    .line 1152
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    .line 1153
    invoke-virtual {p0, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    .line 1154
    invoke-virtual {p0}, Landroid/view/Display;->getState()I

    move-result p0

    const/4 v0, 0x2

    const/4 v3, 0x1

    if-ne p0, v0, :cond_3

    move p0, v3

    goto :goto_0

    :cond_3
    move p0, v2

    :goto_0
    new-array v0, v3, [Ljava/lang/Object;

    .line 1155
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v0, v2

    const-string v4, "screen is on: %b"

    invoke-static {v1, v4, v0}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p0, :cond_4

    return v2

    :cond_4
    const/16 p0, 0x4000

    .line 1160
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p0

    .line 1161
    invoke-interface {p1, p0}, Lcom/android/incallui/incall/protocol/InCallScreen;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1162
    invoke-interface {p1}, Lcom/android/incallui/incall/protocol/InCallScreen;->getInCallScreenFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    .line 1163
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    return v3

    :cond_5
    :goto_1
    new-array p0, v2, [Ljava/lang/Object;

    const-string p1, "fragment/view/parent is null"

    .line 1147
    invoke-static {v1, p1, p0}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method

.method private shouldRefreshPrimaryInfo(Z)Z
    .locals 2

    .line 438
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    .line 441
    iget-object p1, p0, Lcom/android/incallui/CallCardPresenter;->mInCallScreen:Lcom/android/incallui/incall/protocol/InCallScreen;

    .line 442
    invoke-interface {p1}, Lcom/android/incallui/incall/protocol/InCallScreen;->isManageConferenceVisible()Z

    move-result p1

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->shouldShowManageConference()Z

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    .line 444
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 443
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private shouldShowCallSubject(Lcom/android/incallui/call/DialerCall;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1200
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    .line 1201
    invoke-virtual {v1}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    .line 1202
    invoke-virtual {v1}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v3

    :goto_1
    if-eqz v1, :cond_3

    .line 1204
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getCallSubject()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1205
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getNumberPresentation()I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 1206
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->isCallSubjectSupported()Z

    move-result p1

    if-eqz p1, :cond_3

    move v0, v3

    :cond_3
    return v0
.end method

.method private shouldShowEndCallButton(Lcom/android/incallui/call/DialerCall;I)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1109
    :cond_0
    invoke-static {p2}, Lcom/android/incallui/call/DialerCall$State;->isConnectingOrConnected(I)Z

    move-result p1

    if-nez p1, :cond_1

    const/16 p1, 0x9

    if-eq p2, p1, :cond_1

    const/16 p1, 0xa

    if-ne p2, p1, :cond_2

    :cond_1
    const/4 p1, 0x4

    if-ne p2, p1, :cond_3

    :cond_2
    return v0

    .line 1115
    :cond_3
    iget-object p1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getVideoTech()Lcom/android/incallui/videotech/VideoTech;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/incallui/videotech/VideoTech;->getSessionModificationState()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_4

    return v0

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method private shouldShowLocation()Z
    .locals 4

    .line 874
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    invoke-static {v0}, Lcom/android/incallui/CallCardPresenter;->isOutgoingEmergencyCall(Lcom/android/incallui/call/DialerCall;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "CallCardPresenter.shouldShowLocation"

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    const-string v3, "new emergency call"

    .line 875
    invoke-static {v2, v3, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 877
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    invoke-static {v0}, Lcom/android/incallui/CallCardPresenter;->isIncomingEmergencyCall(Lcom/android/incallui/call/DialerCall;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-array v0, v3, [Ljava/lang/Object;

    const-string v3, "potential emergency callback"

    .line 878
    invoke-static {v2, v3, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 880
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/call/DialerCall;

    invoke-static {v0}, Lcom/android/incallui/CallCardPresenter;->isIncomingEmergencyCall(Lcom/android/incallui/call/DialerCall;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-array v0, v3, [Ljava/lang/Object;

    const-string v3, "has potential emergency callback"

    .line 881
    invoke-static {v2, v3, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_2
    return v3
.end method

.method private static shouldShowLocationAsLabel(ZZ)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private shouldShowManageConference()Z
    .locals 3

    .line 551
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/16 v2, 0x80

    .line 555
    invoke-virtual {v0, v2}, Lcom/android/incallui/call/DialerCall;->can(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/incallui/CallCardPresenter;->mIsFullscreen:Z

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private shouldShowNoteSentToast(Lcom/android/incallui/call/DialerCall;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 1218
    invoke-static {p1}, Lcom/android/incallui/CallCardPresenter;->hasCallSubject(Lcom/android/incallui/call/DialerCall;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1219
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 1220
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result p1

    const/16 v0, 0xd

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private startContactInfoSearch(Lcom/android/incallui/call/DialerCall;ZZ)V
    .locals 2

    .line 606
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    .line 608
    new-instance v1, Lcom/android/incallui/CallCardPresenter$ContactLookupCallback;

    invoke-direct {v1, p0, p2}, Lcom/android/incallui/CallCardPresenter$ContactLookupCallback;-><init>(Lcom/android/incallui/CallCardPresenter;Z)V

    invoke-virtual {v0, p1, p3, v1}, Lcom/android/incallui/ContactInfoCache;->findInfo(Lcom/android/incallui/call/DialerCall;ZLcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;)V

    return-void
.end method

.method private supports2ndCallOnHold()Z
    .locals 3

    .line 560
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/call/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    .line 561
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/call/CallList;->getIncomingCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eq v0, v1, :cond_0

    .line 563
    invoke-virtual {v1, v2}, Lcom/android/incallui/call/DialerCall;->can(I)Z

    move-result v0

    return v0

    :cond_0
    return v2
.end method

.method private updateContactEntry(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 656
    iput-object p1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 657
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryDisplayInfo()V

    goto :goto_0

    .line 659
    :cond_0
    iput-object p1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 660
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->updateSecondaryDisplayInfo()V

    :goto_0
    return-void
.end method

.method private updatePrimaryCallState()V
    .locals 30

    move-object/from16 v0, p0

    .line 479
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/incall/protocol/InCallScreen;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    if-eqz v1, :cond_9

    const/16 v2, 0x20

    .line 481
    invoke-virtual {v1, v2}, Lcom/android/incallui/call/DialerCall;->hasProperty(I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v1, :cond_0

    iget-wide v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->userType:J

    const-wide/16 v6, 0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v18, v2

    goto :goto_1

    :cond_1
    :goto_0
    move/from16 v18, v3

    .line 485
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->isPrimaryCallActive()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    const/16 v4, 0x10

    invoke-virtual {v1, v4}, Lcom/android/incallui/call/DialerCall;->hasProperty(I)Z

    move-result v1

    if-eqz v1, :cond_2

    move/from16 v20, v3

    goto :goto_2

    :cond_2
    move/from16 v20, v2

    :goto_2
    if-nez v20, :cond_3

    .line 486
    iget-object v1, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    const/high16 v4, 0x4000000

    .line 488
    invoke-virtual {v1, v4}, Lcom/android/incallui/call/DialerCall;->hasProperty(I)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    .line 489
    invoke-static {v1}, Lcom/android/dialer/oem/MotorolaUtils;->shouldBlinkHdIconWhenConnectingCall(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    move/from16 v19, v3

    goto :goto_3

    :cond_3
    move/from16 v19, v2

    .line 491
    :goto_3
    iget-object v1, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v1, :cond_4

    iget-boolean v1, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isBusiness:Z

    if-eqz v1, :cond_4

    move/from16 v27, v3

    goto :goto_4

    :cond_4
    move/from16 v27, v2

    .line 492
    :goto_4
    iget-object v1, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v1}, Lcom/android/incallui/call/DialerCall;->isConferenceCall()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v1}, Lcom/android/incallui/call/DialerCall;->isIncomingConfCall()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    iget-object v1, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    const/4 v4, 0x2

    .line 493
    invoke-virtual {v1, v4}, Lcom/android/incallui/call/DialerCall;->hasProperty(I)Z

    move-result v1

    if-nez v1, :cond_6

    move/from16 v17, v3

    goto :goto_5

    :cond_6
    move/from16 v17, v2

    .line 495
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getLabelWithLocation()Ljava/lang/String;

    move-result-object v9

    .line 500
    iget-object v1, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    .line 501
    invoke-virtual {v1}, Lcom/android/incallui/call/DialerCall;->getVideoState()I

    move-result v1

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v4}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v4

    invoke-static {v1, v4}, Lcom/android/incallui/VideoCallPresenter;->showIncomingVideo(II)Z

    move-result v1

    xor-int/lit8 v22, v1, 0x1

    .line 502
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/incall/protocol/InCallScreen;

    move-result-object v1

    new-instance v15, Lcom/android/incallui/incall/protocol/PrimaryCallState;

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    .line 505
    invoke-virtual {v4}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v5

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    iget-object v6, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    .line 506
    invoke-static {v4, v6}, Lcom/android/incallui/QtiCallUtils;->hasVideoCrbtVoLteCall(Landroid/content/Context;Lcom/android/incallui/call/DialerCall;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v4}, Lcom/android/incallui/call/DialerCall;->isVideoCall()Z

    move-result v4

    if-eqz v4, :cond_7

    move v6, v3

    goto :goto_6

    :cond_7
    move v6, v2

    :goto_6
    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    .line 507
    invoke-virtual {v2}, Lcom/android/incallui/call/DialerCall;->getVideoTech()Lcom/android/incallui/videotech/VideoTech;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/incallui/videotech/VideoTech;->getSessionModificationState()I

    move-result v7

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    .line 508
    invoke-virtual {v2}, Lcom/android/incallui/call/DialerCall;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v8

    .line 510
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getCallStateIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 511
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getGatewayNumber()Ljava/lang/String;

    move-result-object v11

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    .line 512
    invoke-direct {v0, v2}, Lcom/android/incallui/CallCardPresenter;->shouldShowCallSubject(Lcom/android/incallui/call/DialerCall;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v2}, Lcom/android/incallui/call/DialerCall;->getCallSubject()Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_8
    const/4 v2, 0x0

    :goto_7
    move-object v12, v2

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    .line 513
    invoke-virtual {v2}, Lcom/android/incallui/call/DialerCall;->getCallbackNumber()Ljava/lang/String;

    move-result-object v13

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    const/16 v4, 0x8

    .line 514
    invoke-virtual {v2, v4}, Lcom/android/incallui/call/DialerCall;->hasProperty(I)Z

    move-result v14

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    .line 516
    invoke-virtual {v2}, Lcom/android/incallui/call/DialerCall;->isActiveRttCall()Z

    move-result v2

    .line 517
    invoke-static {}, Lcom/android/tct/common/RttManager;->getInstance()Lcom/android/tct/common/RttManager;

    move-result-object v4

    iget-object v3, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v3}, Lcom/android/incallui/call/DialerCall;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/android/tct/common/RttManager;->isRttRequest(Landroid/telecom/Call;)Z

    move-result v3

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    .line 523
    invoke-virtual {v4}, Lcom/android/incallui/call/DialerCall;->getLastForwardedNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/16 v16, 0x1

    xor-int/lit8 v21, v4, 0x1

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    .line 525
    invoke-virtual {v4}, Lcom/android/incallui/call/DialerCall;->getConnectTimeMillis()J

    move-result-wide v23

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    move-object/from16 v29, v1

    iget-object v1, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    .line 526
    invoke-static {v4, v1}, Lcom/android/incallui/CallerInfoUtils;->isVoiceMailNumber(Landroid/content/Context;Lcom/android/incallui/call/DialerCall;)Z

    move-result v25

    iget-object v1, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    .line 527
    invoke-virtual {v1}, Lcom/android/incallui/call/DialerCall;->isRemotelyHeld()Z

    move-result v26

    .line 529
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->supports2ndCallOnHold()Z

    move-result v28

    move-object v4, v15

    move-object v1, v15

    move v15, v2

    move/from16 v16, v3

    invoke-direct/range {v4 .. v28}, Lcom/android/incallui/incall/protocol/PrimaryCallState;-><init>(IZILandroid/telecom/DisconnectCause;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZJZZZZ)V

    move-object/from16 v2, v29

    .line 503
    invoke-interface {v2, v1}, Lcom/android/incallui/incall/protocol/InCallScreen;->setCallState(Lcom/android/incallui/incall/protocol/PrimaryCallState;)V

    .line 531
    iget-object v1, v0, Lcom/android/incallui/CallCardPresenter;->mInCallScreen:Lcom/android/incallui/incall/protocol/InCallScreen;

    .line 532
    invoke-interface {v1}, Lcom/android/incallui/incall/protocol/InCallScreen;->getInCallScreenFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallActivity;

    check-cast v1, Lcom/android/incallui/InCallActivity;

    if-eqz v1, :cond_9

    .line 534
    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->onPrimaryCallStateChanged()V

    :cond_9
    return-void
.end method

.method private updatePrimaryDisplayInfo()V
    .locals 23

    move-object/from16 v0, p0

    .line 713
    iget-object v1, v0, Lcom/android/incallui/CallCardPresenter;->mInCallScreen:Lcom/android/incallui/incall/protocol/InCallScreen;

    const-string v2, "CallCardPresenter.updatePrimaryDisplayInfo"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v3, "updatePrimaryDisplayInfo called but ui is null!"

    .line 716
    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 723
    :cond_0
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->isVZWSimCard()Z

    move-result v1

    if-nez v1, :cond_1

    .line 724
    invoke-static {}, Lcom/android/incallui/shaken/ContactGrideVerstat;->getInstance()Lcom/android/incallui/shaken/ContactGrideVerstat;

    move-result-object v1

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    .line 725
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/incall/protocol/InCallScreen;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/incallui/incall/protocol/InCallScreen;->getInCallScreenFragment()Landroidx/fragment/app/Fragment;

    move-result-object v6

    .line 724
    invoke-virtual {v1, v4, v5, v6}, Lcom/android/incallui/shaken/ContactGrideVerstat;->setPrimary(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 729
    :cond_1
    iget-object v1, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    if-nez v1, :cond_2

    .line 731
    iget-object v1, v0, Lcom/android/incallui/CallCardPresenter;->mInCallScreen:Lcom/android/incallui/incall/protocol/InCallScreen;

    invoke-static {}, Lcom/android/incallui/incall/protocol/PrimaryInfo;->createEmptyPrimaryInfo()Lcom/android/incallui/incall/protocol/PrimaryInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/incallui/incall/protocol/InCallScreen;->setPrimary(Lcom/android/incallui/incall/protocol/PrimaryInfo;)V

    return-void

    .line 738
    :cond_2
    invoke-virtual {v1}, Lcom/android/incallui/call/DialerCall;->getVideoState()I

    move-result v1

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v4}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v4

    invoke-static {v1, v4}, Lcom/android/incallui/VideoCallPresenter;->showIncomingVideo(II)Z

    move-result v1

    const/4 v4, 0x1

    xor-int/lit8 v14, v1, 0x1

    .line 741
    iget-object v1, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    const/16 v5, 0x20

    invoke-virtual {v1, v5}, Lcom/android/incallui/call/DialerCall;->hasProperty(I)Z

    move-result v15

    .line 744
    iget-object v1, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v1}, Lcom/android/incallui/call/DialerCall;->getEnrichedCallSession()Lcom/android/dialer/enrichedcall/Session;

    move-result-object v1

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    .line 745
    iget-object v1, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v1}, Lcom/android/incallui/call/DialerCall;->getEnrichedCallSession()Lcom/android/dialer/enrichedcall/Session;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/dialer/enrichedcall/Session;->getMultimediaData()Lcom/android/dialer/multimedia/MultimediaData;

    move-result-object v1

    move-object/from16 v20, v1

    goto :goto_0

    :cond_3
    move-object/from16 v20, v5

    .line 748
    :goto_0
    iget-object v1, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v1}, Lcom/android/incallui/call/DialerCall;->isConferenceCall()Z

    move-result v1

    if-eqz v1, :cond_4

    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "update primary display info for conference call."

    .line 749
    invoke-static {v2, v4, v1}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 752
    iget-object v1, v0, Lcom/android/incallui/CallCardPresenter;->mInCallScreen:Lcom/android/incallui/incall/protocol/InCallScreen;

    new-instance v4, Lcom/android/incallui/incall/protocol/PrimaryInfo;

    move-object v5, v4

    const/4 v6, 0x0

    iget-object v7, v0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    iget-object v8, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    const/4 v9, 0x2

    .line 756
    invoke-virtual {v8, v9}, Lcom/android/incallui/call/DialerCall;->hasProperty(I)Z

    move-result v8

    .line 755
    invoke-static {v7, v8}, Lcom/android/incallui/CallerInfoUtils;->getConferenceString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 767
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->shouldShowLocation()Z

    move-result v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    iget-object v3, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    .line 770
    invoke-virtual {v3}, Lcom/android/incallui/call/DialerCall;->getNumberPresentation()I

    move-result v21

    invoke-direct/range {v5 .. v21}, Lcom/android/incallui/incall/protocol/PrimaryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IZZZZZZLjava/lang/String;Lcom/android/dialer/multimedia/MultimediaData;I)V

    .line 752
    invoke-interface {v1, v4}, Lcom/android/incallui/incall/protocol/InCallScreen;->setPrimary(Lcom/android/incallui/incall/protocol/PrimaryInfo;)V

    goto/16 :goto_9

    .line 771
    :cond_4
    iget-object v1, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v1, :cond_f

    .line 772
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update primary display info for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v6}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 775
    iget-object v1, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-direct {v0, v1}, Lcom/android/incallui/CallCardPresenter;->getNameForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v1

    .line 777
    iget-object v3, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v3}, Lcom/android/incallui/call/DialerCall;->getChildNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v3, v4

    .line 778
    iget-object v6, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v6}, Lcom/android/incallui/call/DialerCall;->getLastForwardedNumber()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/2addr v6, v4

    .line 779
    iget-object v7, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    invoke-direct {v0, v7}, Lcom/android/incallui/CallCardPresenter;->shouldShowCallSubject(Lcom/android/incallui/call/DialerCall;)Z

    move-result v7

    if-eqz v7, :cond_5

    move-object v6, v5

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_6

    .line 784
    iget-object v6, v0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    const v8, 0x7f110131

    new-array v9, v4, [Ljava/lang/Object;

    iget-object v10, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v10}, Lcom/android/incallui/call/DialerCall;->getChildNumber()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-virtual {v6, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_6
    if-eqz v6, :cond_7

    .line 787
    iget-object v6, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v6}, Lcom/android/incallui/call/DialerCall;->getLastForwardedNumber()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 789
    :cond_7
    iget-object v6, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v6, v6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    :goto_1
    if-eqz v1, :cond_8

    .line 792
    iget-object v8, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v8, v8, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    move v8, v4

    goto :goto_2

    :cond_8
    const/4 v8, 0x0

    .line 795
    :goto_2
    iget-object v9, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-wide v9, v9, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->userType:J

    const-wide/16 v11, 0x1

    cmp-long v9, v9, v11

    if-nez v9, :cond_9

    move v9, v4

    goto :goto_3

    :cond_9
    const/4 v9, 0x0

    .line 796
    :goto_3
    iget-object v13, v0, Lcom/android/incallui/CallCardPresenter;->mInCallScreen:Lcom/android/incallui/incall/protocol/InCallScreen;

    new-instance v12, Lcom/android/incallui/incall/protocol/PrimaryInfo;

    iget-object v10, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    .line 799
    invoke-virtual {v10, v1}, Lcom/android/incallui/call/DialerCall;->updateNameIfRestricted(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v10, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v10, v10, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->shouldShowLocation:Z

    .line 801
    invoke-static {v8, v10}, Lcom/android/incallui/CallCardPresenter;->shouldShowLocationAsLabel(ZZ)Z

    move-result v10

    if-eqz v10, :cond_a

    iget-object v10, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v10, v10, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    goto :goto_4

    :cond_a
    move-object v10, v5

    :goto_4
    if-nez v3, :cond_c

    if-eqz v7, :cond_b

    goto :goto_5

    :cond_b
    iget-object v3, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v3, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    goto :goto_6

    :cond_c
    :goto_5
    move-object v3, v5

    :goto_6
    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v11, v5, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget v7, v5, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photoType:I

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v5, v5, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isSipCall:Z

    if-nez v15, :cond_e

    if-eqz v9, :cond_d

    goto :goto_7

    :cond_d
    const/4 v15, 0x0

    goto :goto_8

    :cond_e
    :goto_7
    move v15, v4

    :goto_8
    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    .line 810
    invoke-virtual {v4}, Lcom/android/incallui/call/DialerCall;->isSpam()Z

    move-result v16

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    .line 811
    invoke-virtual {v4}, Lcom/android/incallui/call/DialerCall;->answeringDisconnectsForegroundVideoCall()Z

    move-result v17

    .line 812
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->shouldShowLocation()Z

    move-result v18

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v4, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->lookupKey:Ljava/lang/String;

    move-object/from16 v19, v4

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    .line 815
    invoke-virtual {v4}, Lcom/android/incallui/call/DialerCall;->getNumberPresentation()I

    move-result v21

    move v4, v5

    move-object v5, v12

    move/from16 v22, v7

    move-object v7, v1

    move-object v9, v10

    move-object v10, v3

    move-object v1, v12

    move/from16 v12, v22

    move-object v3, v13

    move v13, v4

    invoke-direct/range {v5 .. v21}, Lcom/android/incallui/incall/protocol/PrimaryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IZZZZZZLjava/lang/String;Lcom/android/dialer/multimedia/MultimediaData;I)V

    .line 796
    invoke-interface {v3, v1}, Lcom/android/incallui/incall/protocol/InCallScreen;->setPrimary(Lcom/android/incallui/incall/protocol/PrimaryInfo;)V

    goto :goto_9

    .line 818
    :cond_f
    iget-object v1, v0, Lcom/android/incallui/CallCardPresenter;->mInCallScreen:Lcom/android/incallui/incall/protocol/InCallScreen;

    invoke-static {}, Lcom/android/incallui/incall/protocol/PrimaryInfo;->createEmptyPrimaryInfo()Lcom/android/incallui/incall/protocol/PrimaryInfo;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/incallui/incall/protocol/InCallScreen;->setPrimary(Lcom/android/incallui/incall/protocol/PrimaryInfo;)V

    .line 821
    :goto_9
    iget-boolean v1, v0, Lcom/android/incallui/CallCardPresenter;->isInCallScreenReady:Z

    if-eqz v1, :cond_10

    .line 822
    iget-object v1, v0, Lcom/android/incallui/CallCardPresenter;->mInCallScreen:Lcom/android/incallui/incall/protocol/InCallScreen;

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getLocationFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/incallui/incall/protocol/InCallScreen;->showLocationUi(Landroidx/fragment/app/Fragment;)V

    goto :goto_a

    :cond_10
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "UI not ready, not showing location"

    .line 824
    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_a
    return-void
.end method

.method private updateSecondaryDisplayInfo()V
    .locals 12

    .line 924
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mInCallScreen:Lcom/android/incallui/incall/protocol/InCallScreen;

    if-nez v0, :cond_0

    return-void

    .line 927
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/call/DialerCall;

    if-nez v1, :cond_1

    .line 929
    iget-boolean v1, p0, Lcom/android/incallui/CallCardPresenter;->mIsFullscreen:Z

    invoke-static {v1}, Lcom/android/incallui/incall/protocol/SecondaryInfo;->createEmptySecondaryInfo(Z)Lcom/android/incallui/incall/protocol/SecondaryInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/incallui/incall/protocol/InCallScreen;->setSecondary(Lcom/android/incallui/incall/protocol/SecondaryInfo;)V

    return-void

    .line 932
    :cond_1
    invoke-virtual {v1}, Lcom/android/incallui/call/DialerCall;->isMergeInProcess()Z

    move-result v0

    const-string v1, "CallCardPresenter.updateSecondaryDisplayInfo"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "secondary call is merge in process, clearing info"

    .line 933
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 936
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mInCallScreen:Lcom/android/incallui/incall/protocol/InCallScreen;

    iget-boolean v1, p0, Lcom/android/incallui/CallCardPresenter;->mIsFullscreen:Z

    invoke-static {v1}, Lcom/android/incallui/incall/protocol/SecondaryInfo;->createEmptySecondaryInfo(Z)Lcom/android/incallui/incall/protocol/SecondaryInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/incallui/incall/protocol/InCallScreen;->setSecondary(Lcom/android/incallui/incall/protocol/SecondaryInfo;)V

    return-void

    .line 939
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->isConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 940
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mInCallScreen:Lcom/android/incallui/incall/protocol/InCallScreen;

    new-instance v10, Lcom/android/incallui/incall/protocol/SecondaryInfo;

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/call/DialerCall;

    const/4 v4, 0x2

    .line 944
    invoke-virtual {v3, v4}, Lcom/android/incallui/call/DialerCall;->hasProperty(I)Z

    move-result v3

    .line 943
    invoke-static {v1, v3}, Lcom/android/incallui/CallerInfoUtils;->getConferenceString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/call/DialerCall;

    .line 947
    invoke-virtual {v1}, Lcom/android/incallui/call/DialerCall;->getCallProviderLabel()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/call/DialerCall;

    .line 949
    invoke-virtual {v1}, Lcom/android/incallui/call/DialerCall;->isVideoCall()Z

    move-result v8

    iget-boolean v9, p0, Lcom/android/incallui/CallCardPresenter;->mIsFullscreen:Z

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lcom/android/incallui/incall/protocol/SecondaryInfo;-><init>(ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZ)V

    .line 940
    invoke-interface {v0, v10}, Lcom/android/incallui/incall/protocol/InCallScreen;->setSecondary(Lcom/android/incallui/incall/protocol/SecondaryInfo;)V

    goto :goto_0

    .line 951
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v0, :cond_5

    .line 952
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 953
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-direct {p0, v0}, Lcom/android/incallui/CallCardPresenter;->getNameForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 954
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v1, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    :cond_4
    move v6, v2

    .line 955
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mInCallScreen:Lcom/android/incallui/incall/protocol/InCallScreen;

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v2, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/android/incallui/incall/protocol/InCallScreen;->setSecondaryNumber(Ljava/lang/String;)V

    .line 956
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mInCallScreen:Lcom/android/incallui/incall/protocol/InCallScreen;

    new-instance v2, Lcom/android/incallui/incall/protocol/SecondaryInfo;

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/call/DialerCall;

    .line 959
    invoke-virtual {v3, v0}, Lcom/android/incallui/call/DialerCall;->updateNameIfRestricted(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v7, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/call/DialerCall;

    .line 962
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getCallProviderLabel()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/call/DialerCall;

    .line 964
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->isVideoCall()Z

    move-result v10

    iget-boolean v11, p0, Lcom/android/incallui/CallCardPresenter;->mIsFullscreen:Z

    move-object v3, v2

    invoke-direct/range {v3 .. v11}, Lcom/android/incallui/incall/protocol/SecondaryInfo;-><init>(ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZ)V

    .line 956
    invoke-interface {v1, v2}, Lcom/android/incallui/incall/protocol/InCallScreen;->setSecondary(Lcom/android/incallui/incall/protocol/SecondaryInfo;)V

    goto :goto_0

    .line 968
    :cond_5
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mInCallScreen:Lcom/android/incallui/incall/protocol/InCallScreen;

    iget-boolean v1, p0, Lcom/android/incallui/CallCardPresenter;->mIsFullscreen:Z

    invoke-static {v1}, Lcom/android/incallui/incall/protocol/SecondaryInfo;->createEmptySecondaryInfo(Z)Lcom/android/incallui/incall/protocol/SecondaryInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/incallui/incall/protocol/InCallScreen;->setSecondary(Lcom/android/incallui/incall/protocol/SecondaryInfo;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getDefaultContactPhotoDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 593
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/ContactInfoCache;->getDefaultContactPhotoDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public onCallStateButtonClicked()V
    .locals 4

    .line 570
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/Bindings;->get(Landroid/content/Context;)Lcom/android/incallui/bindings/InCallUiBindings;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/android/incallui/bindings/InCallUiBindings;->getCallStateButtonBroadcastIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 572
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sending call state button broadcast: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "CallCardPresenter.onCallStateButtonClicked"

    invoke-static {v3, v1, v2}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 575
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDetailsChanged(Lcom/android/incallui/call/DialerCall;Landroid/telecom/Call$Details;)V
    .locals 1

    .line 364
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryCallState()V

    const/16 v0, 0x80

    .line 366
    invoke-virtual {p1, v0}, Lcom/android/incallui/call/DialerCall;->can(I)Z

    move-result p1

    .line 367
    invoke-virtual {p2, v0}, Landroid/telecom/Call$Details;->can(I)Z

    move-result p2

    if-eq p1, p2, :cond_0

    .line 368
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->maybeShowManageConferenceCallButton()V

    :cond_0
    return-void
.end method

.method public onDialerCallChildNumberChange()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "CallCardPresenter.onDialerCallChildNumberChange"

    const-string v2, ""

    .line 398
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 400
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    if-nez v0, :cond_0

    return-void

    .line 403
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryDisplayInfo()V

    return-void
.end method

.method public onDialerCallDisconnect()V
    .locals 0

    return-void
.end method

.method public onDialerCallLastForwardedNumberChange()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "CallCardPresenter.onDialerCallLastForwardedNumberChange"

    const-string v2, ""

    .line 409
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 411
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    if-nez v0, :cond_0

    return-void

    .line 414
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryDisplayInfo()V

    .line 415
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryCallState()V

    return-void
.end method

.method public onDialerCallSessionModificationStateChange()V
    .locals 4

    const-string v0, "CallCardPresenter.onDialerCallSessionModificationStateChange"

    .line 424
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    if-nez v0, :cond_0

    return-void

    .line 429
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/incall/protocol/InCallScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    .line 431
    invoke-virtual {v1}, Lcom/android/incallui/call/DialerCall;->getVideoTech()Lcom/android/incallui/videotech/VideoTech;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/incallui/videotech/VideoTech;->getSessionModificationState()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 430
    :goto_0
    invoke-interface {v0, v1, v3}, Lcom/android/incallui/incall/protocol/InCallScreen;->setEndCallButtonEnabled(ZZ)V

    .line 434
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryCallState()V

    return-void
.end method

.method public onDialerCallUpdate()V
    .locals 0

    return-void
.end method

.method public onDialerCallUpgradeToVideo()V
    .locals 0

    return-void
.end method

.method public onEndCallClicked()V
    .locals 3

    .line 1062
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnecting call: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "CallCardPresenter.onEndCallClicked"

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1063
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    if-eqz v0, :cond_0

    .line 1064
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->disconnect()V

    :cond_0
    return-void
.end method

.method public onEnrichedCallSessionUpdate()V
    .locals 1

    const-string v0, "CallCardPresenter.onEnrichedCallSessionUpdate"

    .line 391
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 392
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryDisplayInfo()V

    return-void
.end method

.method public onFullscreenModeChanged(Z)V
    .locals 0

    .line 1075
    iput-boolean p1, p0, Lcom/android/incallui/CallCardPresenter;->mIsFullscreen:Z

    .line 1076
    iget-object p1, p0, Lcom/android/incallui/CallCardPresenter;->mInCallScreen:Lcom/android/incallui/incall/protocol/InCallScreen;

    if-nez p1, :cond_0

    return-void

    .line 1079
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->maybeShowManageConferenceCallButton()V

    return-void
.end method

.method public onHandoverToWifiFailure()V
    .locals 0

    return-void
.end method

.method public onInCallScreenDelegateInit(Lcom/android/incallui/incall/protocol/InCallScreen;)V
    .locals 4

    .line 160
    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iput-object p1, p0, Lcom/android/incallui/CallCardPresenter;->mInCallScreen:Lcom/android/incallui/incall/protocol/InCallScreen;

    .line 162
    iget-object p1, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/incallui/ContactsPreferencesFactory;->newContactsPreferences(Landroid/content/Context;)Lcom/android/contacts/common/preference/ContactsPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/incallui/CallCardPresenter;->mContactsPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    .line 165
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/incallui/call/CallList;->getFirstCall()Lcom/android/incallui/call/DialerCall;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 167
    iput-object p1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    .line 168
    invoke-direct {p0, p1}, Lcom/android/incallui/CallCardPresenter;->shouldShowNoteSentToast(Lcom/android/incallui/call/DialerCall;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mInCallScreen:Lcom/android/incallui/incall/protocol/InCallScreen;

    invoke-interface {v1}, Lcom/android/incallui/incall/protocol/InCallScreen;->showNoteSentToast()V

    .line 171
    :cond_0
    invoke-virtual {p1, p0}, Lcom/android/incallui/call/DialerCall;->addListener(Lcom/android/incallui/call/DialerCallListener;)V

    .line 174
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->isConferenceCall()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 175
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, p1, v2, v1}, Lcom/android/incallui/CallCardPresenter;->startContactInfoSearch(Lcom/android/incallui/call/DialerCall;ZZ)V

    goto :goto_1

    .line 177
    :cond_2
    invoke-direct {p0, v0, v2}, Lcom/android/incallui/CallCardPresenter;->updateContactEntry(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    .line 181
    :cond_3
    :goto_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object p1

    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/incallui/CallCardPresenter;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/call/CallList;)V

    return-void
.end method

.method public onInCallScreenPaused()V
    .locals 0

    return-void
.end method

.method public onInCallScreenReady()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "CallCardController.onInCallScreenReady"

    const/4 v2, 0x0

    .line 186
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    iget-boolean v0, p0, Lcom/android/incallui/CallCardPresenter;->isInCallScreenReady:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/dialer/common/Assert;->checkState(Z)V

    .line 188
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mContactsPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    if-eqz v0, :cond_0

    const-string v2, "android.contacts.DISPLAY_ORDER"

    .line 189
    invoke-virtual {v0, v2}, Lcom/android/contacts/common/preference/ContactsPreferences;->refreshValue(Ljava/lang/String;)V

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v0, :cond_1

    .line 194
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryDisplayInfo()V

    .line 198
    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 199
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 200
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    .line 201
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addInCallEventListener(Lcom/android/incallui/InCallPresenter$InCallEventListener;)V

    .line 202
    iput-boolean v1, p0, Lcom/android/incallui/CallCardPresenter;->isInCallScreenReady:Z

    .line 205
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    invoke-static {v0}, Lcom/android/incallui/CallCardPresenter;->isOutgoingEmergencyCall(Lcom/android/incallui/call/DialerCall;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 206
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/logging/DialerImpression$Type;->EMERGENCY_NEW_EMERGENCY_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {v0, v1}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    goto :goto_0

    .line 207
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    invoke-static {v0}, Lcom/android/incallui/CallCardPresenter;->isIncomingEmergencyCall(Lcom/android/incallui/call/DialerCall;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/call/DialerCall;

    invoke-static {v0}, Lcom/android/incallui/CallCardPresenter;->isIncomingEmergencyCall(Lcom/android/incallui/call/DialerCall;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 208
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/logging/DialerImpression$Type;->EMERGENCY_CALLBACK:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {v0, v1}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 212
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->shouldShowLocation()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 213
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryDisplayInfo()V

    .line 216
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->hasLocationPermission()Z

    move-result v0

    if-nez v0, :cond_5

    .line 217
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/logging/DialerImpression$Type;->EMERGENCY_NO_LOCATION_PERMISSION:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {v0, v1}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    goto :goto_1

    .line 218
    :cond_5
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->isBatteryTooLowForEmergencyLocation()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 219
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/logging/DialerImpression$Type;->EMERGENCY_BATTERY_TOO_LOW_TO_GET_LOCATION:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 220
    invoke-interface {v0, v1}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    goto :goto_1

    .line 221
    :cond_6
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->callLocation:Lcom/android/incallui/calllocation/CallLocation;

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/android/incallui/calllocation/CallLocation;->canGetLocation(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 222
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/logging/DialerImpression$Type;->EMERGENCY_CANT_GET_LOCATION:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {v0, v1}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public onInCallScreenResumed()V
    .locals 4

    .line 1124
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryDisplayInfo()V

    .line 1126
    iget-boolean v0, p0, Lcom/android/incallui/CallCardPresenter;->shouldSendAccessibilityEvent:Z

    if-eqz v0, :cond_0

    .line 1127
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->sendAccessibilityEventRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onInCallScreenUnready()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "CallCardController.onInCallScreenUnready"

    const/4 v3, 0x0

    .line 229
    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    iget-boolean v1, p0, Lcom/android/incallui/CallCardPresenter;->isInCallScreenReady:Z

    invoke-static {v1}, Lcom/android/dialer/common/Assert;->checkState(Z)V

    .line 233
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 234
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 235
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallPresenter;->removeDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    .line 236
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallPresenter;->removeInCallEventListener(Lcom/android/incallui/InCallPresenter$InCallEventListener;)V

    .line 237
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    if-eqz v1, :cond_0

    .line 238
    invoke-virtual {v1, p0}, Lcom/android/incallui/call/DialerCall;->removeListener(Lcom/android/incallui/call/DialerCallListener;)V

    .line 241
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->callLocation:Lcom/android/incallui/calllocation/CallLocation;

    invoke-interface {v1}, Lcom/android/incallui/calllocation/CallLocation;->close()V

    .line 243
    iput-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    .line 244
    iput-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 245
    iput-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 246
    iput-boolean v0, p0, Lcom/android/incallui/CallCardPresenter;->isInCallScreenReady:Z

    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/call/DialerCall;)V
    .locals 0

    .line 252
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/incallui/CallCardPresenter;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/call/CallList;)V

    return-void
.end method

.method public onInternationalCallOnWifi()V
    .locals 0

    return-void
.end method

.method public onManageConferenceClicked()V
    .locals 2

    .line 581
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mInCallScreen:Lcom/android/incallui/incall/protocol/InCallScreen;

    .line 582
    invoke-interface {v0}, Lcom/android/incallui/incall/protocol/InCallScreen;->getInCallScreenFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    check-cast v0, Lcom/android/incallui/InCallActivity;

    const/4 v1, 0x1

    .line 583
    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->showConferenceFragment(Z)V

    return-void
.end method

.method public onSecondaryInfoClicked()V
    .locals 4

    .line 1048
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/call/DialerCall;

    const/4 v1, 0x0

    const-string v2, "CallCardPresenter.onSecondaryInfoClicked"

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "secondary info clicked but no secondary call."

    .line 1049
    invoke-static {v2, v1, v0}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1055
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "swapping call to foreground: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1057
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->unhold()V

    return-void
.end method

.method public onSendStaticImageStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onSessionModificationStateChange(Lcom/android/incallui/call/DialerCall;)V
    .locals 0

    return-void
.end method

.method public onShrinkAnimationComplete()V
    .locals 1

    .line 588
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->onShrinkAnimationComplete()V

    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/call/CallList;)V
    .locals 11

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v3, 0x1

    aput-object p2, v1, v3

    const-string v4, "CallCardPresenter.onStateChange"

    const-string v5, "oldState: %s, newState: %s"

    .line 257
    invoke-static {v4, v5, v1}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mInCallScreen:Lcom/android/incallui/incall/protocol/InCallScreen;

    if-nez v1, :cond_0

    return-void

    .line 263
    :cond_0
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    const/4 v5, 0x0

    if-ne p2, v1, :cond_1

    .line 264
    invoke-virtual {p3}, Lcom/android/incallui/call/CallList;->getIncomingCall()Lcom/android/incallui/call/DialerCall;

    move-result-object p3

    move-object v1, v5

    goto :goto_2

    .line 265
    :cond_1
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p2, v1, :cond_4

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v1, :cond_2

    goto :goto_0

    .line 273
    :cond_2
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v1, :cond_3

    .line 274
    invoke-direct {p0, p3, v5, v2}, Lcom/android/incallui/CallCardPresenter;->getCallToDisplay(Lcom/android/incallui/call/CallList;Lcom/android/incallui/call/DialerCall;Z)Lcom/android/incallui/call/DialerCall;

    move-result-object v1

    .line 275
    invoke-direct {p0, p3, v1, v3}, Lcom/android/incallui/CallCardPresenter;->getCallToDisplay(Lcom/android/incallui/call/CallList;Lcom/android/incallui/call/DialerCall;Z)Lcom/android/incallui/call/DialerCall;

    move-result-object p3

    goto :goto_1

    :cond_3
    move-object p3, v5

    move-object v1, p3

    goto :goto_2

    .line 266
    :cond_4
    :goto_0
    invoke-virtual {p3}, Lcom/android/incallui/call/CallList;->getOutgoingCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v1

    if-nez v1, :cond_5

    .line 268
    invoke-virtual {p3}, Lcom/android/incallui/call/CallList;->getPendingOutgoingCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v1

    .line 272
    :cond_5
    invoke-direct {p0, p3, v5, v3}, Lcom/android/incallui/CallCardPresenter;->getCallToDisplay(Lcom/android/incallui/call/CallList;Lcom/android/incallui/call/DialerCall;Z)Lcom/android/incallui/call/DialerCall;

    move-result-object p3

    :goto_1
    move-object v10, v1

    move-object v1, p3

    move-object p3, v10

    .line 278
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "primary call: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v4, v6, v7}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "secondary call: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v4, v6, v7}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    .line 281
    invoke-static {v4, p3}, Lcom/android/incallui/call/DialerCall;->areSame(Lcom/android/incallui/call/DialerCall;Lcom/android/incallui/call/DialerCall;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    invoke-static {v4, p3}, Lcom/android/incallui/call/DialerCall;->areSameNumber(Lcom/android/incallui/call/DialerCall;Lcom/android/incallui/call/DialerCall;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_3

    :cond_6
    move v4, v2

    goto :goto_4

    :cond_7
    :goto_3
    move v4, v3

    .line 282
    :goto_4
    iget-object v6, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/call/DialerCall;

    .line 283
    invoke-static {v6, v1}, Lcom/android/incallui/call/DialerCall;->areSame(Lcom/android/incallui/call/DialerCall;Lcom/android/incallui/call/DialerCall;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/call/DialerCall;

    .line 284
    invoke-static {v6, v1}, Lcom/android/incallui/call/DialerCall;->areSameNumber(Lcom/android/incallui/call/DialerCall;Lcom/android/incallui/call/DialerCall;)Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_5

    :cond_8
    move v6, v2

    goto :goto_6

    :cond_9
    :goto_5
    move v6, v3

    .line 286
    :goto_6
    iput-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/call/DialerCall;

    .line 287
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    .line 288
    iput-object p3, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    .line 289
    invoke-static {}, Lcom/android/tct/common/RttManager;->getInstance()Lcom/android/tct/common/RttManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v7, v8}, Lcom/android/tct/common/RttManager;->onPrimaryCallStateChange(Lcom/android/incallui/call/DialerCall;)V

    .line 291
    iget-object v7, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    if-eqz v7, :cond_a

    .line 292
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v7

    iget-object v8, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v7, v8}, Lcom/android/incallui/InCallPresenter;->onForegroundCallChanged(Lcom/android/incallui/call/DialerCall;)V

    .line 293
    iget-object v7, p0, Lcom/android/incallui/CallCardPresenter;->mInCallScreen:Lcom/android/incallui/incall/protocol/InCallScreen;

    invoke-interface {v7}, Lcom/android/incallui/incall/protocol/InCallScreen;->updateInCallScreenColors()V

    :cond_a
    if-eqz v4, :cond_b

    .line 296
    invoke-direct {p0, p3}, Lcom/android/incallui/CallCardPresenter;->shouldShowNoteSentToast(Lcom/android/incallui/call/DialerCall;)Z

    move-result p3

    if-eqz p3, :cond_b

    .line 297
    iget-object p3, p0, Lcom/android/incallui/CallCardPresenter;->mInCallScreen:Lcom/android/incallui/incall/protocol/InCallScreen;

    invoke-interface {p3}, Lcom/android/incallui/incall/protocol/InCallScreen;->showNoteSentToast()V

    .line 303
    :cond_b
    invoke-direct {p0, v4}, Lcom/android/incallui/CallCardPresenter;->shouldRefreshPrimaryInfo(Z)Z

    move-result p3

    const/4 v7, 0x4

    if-eqz p3, :cond_e

    if-eqz v1, :cond_c

    .line 306
    invoke-virtual {v1, p0}, Lcom/android/incallui/call/DialerCall;->removeListener(Lcom/android/incallui/call/DialerCallListener;)V

    .line 308
    :cond_c
    iget-object p3, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {p3, p0}, Lcom/android/incallui/call/DialerCall;->addListener(Lcom/android/incallui/call/DialerCallListener;)V

    .line 310
    iget-object p3, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    .line 312
    invoke-virtual {v8}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v9

    if-ne v9, v7, :cond_d

    move v9, v3

    goto :goto_7

    :cond_d
    move v9, v2

    .line 311
    :goto_7
    invoke-static {p3, v8, v9}, Lcom/android/incallui/ContactInfoCache;->buildCacheEntryFromCall(Landroid/content/Context;Lcom/android/incallui/call/DialerCall;Z)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object p3

    iput-object p3, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 313
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryDisplayInfo()V

    .line 314
    iget-object p3, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    invoke-direct {p0, p3, v3}, Lcom/android/incallui/CallCardPresenter;->maybeStartSearch(Lcom/android/incallui/call/DialerCall;Z)V

    :cond_e
    if-eqz v1, :cond_f

    .line 317
    iget-object p3, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    if-nez p3, :cond_f

    .line 318
    invoke-virtual {v1, p0}, Lcom/android/incallui/call/DialerCall;->removeListener(Lcom/android/incallui/call/DialerCallListener;)V

    .line 321
    :cond_f
    iget-object p3, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/call/DialerCall;

    if-nez p3, :cond_10

    .line 323
    iput-object v5, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 324
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->updateSecondaryDisplayInfo()V

    goto :goto_9

    :cond_10
    if-eqz v6, :cond_12

    .line 327
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    .line 329
    invoke-virtual {p3}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v5

    if-ne v5, v7, :cond_11

    move v5, v3

    goto :goto_8

    :cond_11
    move v5, v2

    .line 328
    :goto_8
    invoke-static {v1, p3, v5}, Lcom/android/incallui/ContactInfoCache;->buildCacheEntryFromCall(Landroid/content/Context;Lcom/android/incallui/call/DialerCall;Z)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object p3

    iput-object p3, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 330
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->updateSecondaryDisplayInfo()V

    .line 331
    iget-object p3, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/call/DialerCall;

    invoke-direct {p0, p3, v2}, Lcom/android/incallui/CallCardPresenter;->maybeStartSearch(Lcom/android/incallui/call/DialerCall;Z)V

    .line 336
    :cond_12
    :goto_9
    iget-object p3, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    if-eqz p3, :cond_13

    .line 337
    invoke-virtual {p3}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v0

    .line 338
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callState  ="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string/jumbo v1, "yzc"

    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryCallState()V

    goto :goto_a

    .line 341
    :cond_13
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/incall/protocol/InCallScreen;

    move-result-object p3

    invoke-static {}, Lcom/android/incallui/incall/protocol/PrimaryCallState;->createEmptyPrimaryCallState()Lcom/android/incallui/incall/protocol/PrimaryCallState;

    move-result-object v1

    invoke-interface {p3, v1}, Lcom/android/incallui/incall/protocol/InCallScreen;->setCallState(Lcom/android/incallui/incall/protocol/PrimaryCallState;)V

    .line 344
    :goto_a
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->maybeShowManageConferenceCallButton()V

    .line 347
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/incall/protocol/InCallScreen;

    move-result-object p3

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    .line 349
    invoke-direct {p0, v1, v0}, Lcom/android/incallui/CallCardPresenter;->shouldShowEndCallButton(Lcom/android/incallui/call/DialerCall;I)Z

    move-result v1

    if-eq v0, v7, :cond_14

    move v2, v3

    .line 348
    :cond_14
    invoke-interface {p3, v1, v2}, Lcom/android/incallui/incall/protocol/InCallScreen;->setEndCallButtonEnabled(ZZ)V

    .line 352
    invoke-direct {p0, p1, p2, v4}, Lcom/android/incallui/CallCardPresenter;->maybeSendAccessibilityEvent(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Z)V

    .line 355
    iget-object p1, p0, Lcom/android/incallui/CallCardPresenter;->mInCallScreen:Lcom/android/incallui/incall/protocol/InCallScreen;

    if-eqz p1, :cond_15

    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->isVZWSimCard()Z

    move-result p1

    if-nez p1, :cond_15

    .line 356
    invoke-static {}, Lcom/android/incallui/shaken/ContactGrideVerstat;->getInstance()Lcom/android/incallui/shaken/ContactGrideVerstat;

    move-result-object p1

    iget-object p2, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/call/DialerCall;

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mInCallScreen:Lcom/android/incallui/incall/protocol/InCallScreen;

    .line 357
    invoke-interface {v0}, Lcom/android/incallui/incall/protocol/InCallScreen;->getInCallScreenFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 356
    invoke-virtual {p1, p2, p3, v0}, Lcom/android/incallui/shaken/ContactGrideVerstat;->setPrimary(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public onWiFiToLteHandover()V
    .locals 0

    return-void
.end method
