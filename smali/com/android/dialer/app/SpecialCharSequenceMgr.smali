.class public Lcom/android/dialer/app/SpecialCharSequenceMgr;
.super Ljava/lang/Object;
.source "SpecialCharSequenceMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/app/SpecialCharSequenceMgr$SpecialCharListener;,
        Lcom/android/dialer/app/SpecialCharSequenceMgr$QueryHandler;,
        Lcom/android/dialer/app/SpecialCharSequenceMgr$SimContactQueryCookie;,
        Lcom/android/dialer/app/SpecialCharSequenceMgr$HandleMmiAccountSelectedCallback;,
        Lcom/android/dialer/app/SpecialCharSequenceMgr$HandleAdnEntryAccountSelectedCallback;
    }
.end annotation


# static fields
.field public static final ACTION_USBDEBUG_CHANGED:Ljava/lang/String; = "action.usbdebug.changed"

.field public static final ACTION_USB_PROTECT_CHANGED:Ljava/lang/String; = "action.usbprotect.changed"

.field private static final ADN_NAME_COLUMN_NAME:Ljava/lang/String; = "name"

.field private static final ADN_PHONE_NUMBER_COLUMN_NAME:Ljava/lang/String; = "number"

.field private static final ADN_QUERY_TOKEN:I = -0x1

.field private static AUDIO_FILENAME:Ljava/lang/String; = "/system/vendor/etc/audio_ver"

.field private static final DIAGPROTECTOR_MODE:Ljava/lang/String; = "###2324#"

.field private static final DISPLAY_SIMLOCK:Ljava/lang/String; = "#83865625#"

.field private static final DISPLAY_SIMLOCK_STATUS:Ljava/lang/String; = "#83782887#"

.field private static final HIDDEN_MENU_OMADM:Ljava/lang/String; = "##66266#"

.field private static final HIDE_MMS_MENU:Ljava/lang/String; = "*#66746#*"

.field private static final MEMORY_LIFE_TIME:Ljava/lang/String; = "*#*#8281234#*#*"

.field private static final MHS_CHECK:Ljava/lang/String; = "*#731#*"

.field private static final MMITEST_MODE:Ljava/lang/String; = "*#2886#"

.field private static final MMI_IMEI_DISPLAY:Ljava/lang/String; = "*#06#"

.field private static final MMI_REGULATORY_INFO_DISPLAY:Ljava/lang/String; = "*#07#"

.field private static final MMI_TOTAL_CALL_DURATION_DISPLAY:Ljava/lang/String; = "###232#"

.field private static final NUM_PARAMETER_VER:Ljava/lang/String; = "##782#"

.field private static final PRL_VERSION_DISPLAY:Ljava/lang/String; = "*#0000#"

.field public static final PROPERTY_DIAGPROTECT:Ljava/lang/String; = "persist.sys.usb.protect"

.field private static final START_ROBUST:Ljava/lang/String; = "*#2887#*"

.field private static final TAG:Ljava/lang/String; = "SpecialCharSequenceMgr"

.field private static final TAG_SELECT_ACCT_FRAGMENT:Ljava/lang/String; = "tag_select_acct_fragment"

.field private static final VVM_CHECK:Ljava/lang/String; = "*#886#*"

.field private static final WARRANTY_TIME_CODE:Ljava/lang/String; = "*#2467#*"

.field private static final WIFI_BT_FILENAME:Ljava/lang/String; = "/system/vendor/etc/wifi/bt_wlan_ver"

.field public static mTctDialog:Landroid/app/TctDialog;

.field private static sPreviousAdnQueryHandler:Lcom/android/dialer/app/SpecialCharSequenceMgr$QueryHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/app/SpecialCharSequenceMgr$QueryHandler;Lcom/android/dialer/app/SpecialCharSequenceMgr$SimContactQueryCookie;Landroid/net/Uri;)V
    .locals 0

    .line 83
    invoke-static {p0, p1, p2}, Lcom/android/dialer/app/SpecialCharSequenceMgr;->handleAdnQuery(Lcom/android/dialer/app/SpecialCharSequenceMgr$QueryHandler;Lcom/android/dialer/app/SpecialCharSequenceMgr$SimContactQueryCookie;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/dialer/app/SpecialCharSequenceMgr$QueryHandler;)Lcom/android/dialer/app/SpecialCharSequenceMgr$QueryHandler;
    .locals 0

    .line 83
    sput-object p0, Lcom/android/dialer/app/SpecialCharSequenceMgr;->sPreviousAdnQueryHandler:Lcom/android/dialer/app/SpecialCharSequenceMgr$QueryHandler;

    return-object p0
.end method

.method public static cleanup()V
    .locals 1

    .line 527
    invoke-static {}, Lcom/android/dialer/common/Assert;->isMainThread()V

    .line 529
    sget-object v0, Lcom/android/dialer/app/SpecialCharSequenceMgr;->sPreviousAdnQueryHandler:Lcom/android/dialer/app/SpecialCharSequenceMgr$QueryHandler;

    if-eqz v0, :cond_0

    .line 530
    invoke-virtual {v0}, Lcom/android/dialer/app/SpecialCharSequenceMgr$QueryHandler;->cancel()V

    const/4 v0, 0x0

    .line 531
    sput-object v0, Lcom/android/dialer/app/SpecialCharSequenceMgr;->sPreviousAdnQueryHandler:Lcom/android/dialer/app/SpecialCharSequenceMgr$QueryHandler;

    :cond_0
    return-void
.end method

.method private static getMeidOrEsn(Landroid/telephony/TelephonyManager;Landroid/telephony/SubscriptionManager;I)Ljava/lang/String;
    .locals 6

    if-eqz p0, :cond_1

    .line 884
    invoke-virtual {p0, p2}, Landroid/telephony/TelephonyManager;->getMeid(I)Ljava/lang/String;

    move-result-object v0

    .line 885
    invoke-static {v0}, Lcom/android/dialer/app/SpecialCharSequenceMgr;->isValidMeid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 887
    invoke-virtual {p1, p2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 890
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string v1, "getEsn"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 891
    invoke-virtual {p2, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 892
    invoke-virtual {p2, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v2, [Ljava/lang/Object;

    .line 893
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-virtual {p2, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 899
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 897
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 895
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method private static getSvn(Landroid/content/Context;Landroid/telephony/TelephonyManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "ro.vendor.tct.svn"

    .line 697
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 698
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x2

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 699
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 701
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "ro.def.svn.countrycode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 703
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object p1

    .line 704
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const v4, 0x7f11048d

    if-nez v3, :cond_1

    .line 705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 707
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-lt p1, v2, :cond_3

    const/4 p1, 0x0

    .line 708
    invoke-virtual {v0, p1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v1, "ro.svn.get.last.two.digits"

    .line 709
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "true"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 710
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 712
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 714
    :cond_3
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "svn= "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SpecialCharSequenceMgr"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static handWifiFirmwareAndNvDisplay(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "##782#"

    .line 196
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 200
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/android/dialer/app/TctActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 201
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static handleAdnEntry(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;)Z
    .locals 7

    const-string v0, "phone"

    .line 566
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 568
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v0, "keyguard"

    .line 577
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 578
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 582
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_4

    const/4 v3, 0x5

    if-ge v0, v3, :cond_4

    const-string v3, "#"

    .line 583
    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    sub-int/2addr v0, v2

    .line 586
    :try_start_0
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 596
    new-instance v0, Lcom/android/dialer/app/SpecialCharSequenceMgr$QueryHandler;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/dialer/app/SpecialCharSequenceMgr$QueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 599
    new-instance v3, Lcom/android/dialer/app/SpecialCharSequenceMgr$SimContactQueryCookie;

    sub-int/2addr p1, v2

    const/4 v4, -0x1

    invoke-direct {v3, p1, v0, v4}, Lcom/android/dialer/app/SpecialCharSequenceMgr$SimContactQueryCookie;-><init>(ILcom/android/dialer/app/SpecialCharSequenceMgr$QueryHandler;I)V

    .line 603
    iput p1, v3, Lcom/android/dialer/app/SpecialCharSequenceMgr$SimContactQueryCookie;->contactNum:I

    .line 604
    invoke-virtual {v3, p2}, Lcom/android/dialer/app/SpecialCharSequenceMgr$SimContactQueryCookie;->setTextField(Landroid/widget/EditText;)V

    .line 607
    new-instance p1, Landroid/app/ProgressDialog;

    invoke-direct {p1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, v3, Lcom/android/dialer/app/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    .line 608
    iget-object p1, v3, Lcom/android/dialer/app/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const p2, 0x7f11043f

    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 609
    iget-object p1, v3, Lcom/android/dialer/app/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const p2, 0x7f11043e

    invoke-virtual {p0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 610
    iget-object p1, v3, Lcom/android/dialer/app/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 611
    iget-object p1, v3, Lcom/android/dialer/app/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 612
    iget-object p1, v3, Lcom/android/dialer/app/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1, v3}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 613
    iget-object p1, v3, Lcom/android/dialer/app/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/Window;->addFlags(I)V

    .line 616
    invoke-static {p0}, Lcom/android/dialer/calllogutils/PhoneAccountUtils;->getSubscriptionPhoneAccounts(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    .line 617
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string v4, "tel"

    .line 620
    invoke-static {p2, v4}, Lcom/android/dialer/telecom/TelecomUtil;->getDefaultOutgoingPhoneAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v4

    .line 619
    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 623
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    if-le v5, v2, :cond_3

    if-eqz v4, :cond_2

    goto :goto_0

    .line 627
    :cond_2
    new-instance v4, Lcom/android/dialer/app/SpecialCharSequenceMgr$HandleAdnEntryAccountSelectedCallback;

    invoke-direct {v4, p2, v0, v3}, Lcom/android/dialer/app/SpecialCharSequenceMgr$HandleAdnEntryAccountSelectedCallback;-><init>(Landroid/content/Context;Lcom/android/dialer/app/SpecialCharSequenceMgr$QueryHandler;Lcom/android/dialer/app/SpecialCharSequenceMgr$SimContactQueryCookie;)V

    .line 631
    invoke-static {p1, v4, v6}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->newInstance(Ljava/util/List;Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;Ljava/lang/String;)Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;

    move-result-object p1

    .line 633
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string p2, "tag_select_acct_fragment"

    invoke-virtual {p1, p0, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1

    .line 624
    :cond_3
    :goto_0
    invoke-static {p2, v6}, Lcom/android/dialer/telecom/TelecomUtil;->getAdnUriForPhoneAccount(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;

    move-result-object p0

    .line 625
    invoke-static {v0, v3, p0}, Lcom/android/dialer/app/SpecialCharSequenceMgr;->handleAdnQuery(Lcom/android/dialer/app/SpecialCharSequenceMgr$QueryHandler;Lcom/android/dialer/app/SpecialCharSequenceMgr$SimContactQueryCookie;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return v2

    :catch_0
    :cond_4
    :goto_2
    return v1
.end method

.method private static handleAdnQuery(Lcom/android/dialer/app/SpecialCharSequenceMgr$QueryHandler;Lcom/android/dialer/app/SpecialCharSequenceMgr$SimContactQueryCookie;Landroid/net/Uri;)V
    .locals 9

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 651
    :cond_0
    iget-object v0, p1, Lcom/android/dialer/app/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    const/4 v2, -0x1

    const-string v0, "number"

    .line 654
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v1 .. v8}, Lcom/android/dialer/app/SpecialCharSequenceMgr$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    sget-object p1, Lcom/android/dialer/app/SpecialCharSequenceMgr;->sPreviousAdnQueryHandler:Lcom/android/dialer/app/SpecialCharSequenceMgr$QueryHandler;

    if-eqz p1, :cond_1

    .line 665
    invoke-virtual {p1}, Lcom/android/dialer/app/SpecialCharSequenceMgr$QueryHandler;->cancel()V

    .line 667
    :cond_1
    sput-object p0, Lcom/android/dialer/app/SpecialCharSequenceMgr;->sPreviousAdnQueryHandler:Lcom/android/dialer/app/SpecialCharSequenceMgr$QueryHandler;

    return-void

    :cond_2
    :goto_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "SpecialCharSequenceMgr.handleAdnQuery"

    const-string p2, "queryAdn parameters incorrect"

    .line 646
    invoke-static {p1, p2, p0}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static handleChars(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;)Z
    .locals 1

    const/4 v0, 0x0

    .line 154
    invoke-static {p0, p1, p2, v0}, Lcom/android/dialer/app/SpecialCharSequenceMgr;->handleChars(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;Lcom/android/dialer/app/SpecialCharSequenceMgr$SpecialCharListener;)Z

    move-result p0

    return p0
.end method

.method public static handleChars(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;Lcom/android/dialer/app/SpecialCharSequenceMgr$SpecialCharListener;)Z
    .locals 2

    .line 160
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 163
    invoke-static {p0, p3}, Lcom/android/dialer/app/SpecialCharSequenceMgr;->handWifiFirmwareAndNvDisplay(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 164
    invoke-static {p0, p3}, Lcom/android/dialer/app/SpecialCharSequenceMgr;->handleDeviceIdDisplay(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 166
    invoke-static {p0, p3}, Lcom/android/dialer/app/SpecialCharSequenceMgr;->handlePRLVersion(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 167
    invoke-static {p0, p3}, Lcom/android/dialer/app/SpecialCharSequenceMgr;->handleRegulatoryInfoDisplay(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 168
    invoke-static {p0, p3}, Lcom/android/dialer/app/SpecialCharSequenceMgr;->handlePinEntry(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 169
    invoke-static {p0, p3, p2}, Lcom/android/dialer/app/SpecialCharSequenceMgr;->handleAdnEntry(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 170
    invoke-static {p0, p3}, Lcom/android/dialer/app/SpecialCharSequenceMgr;->handleMMITestMode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 172
    invoke-static {p0, p3}, Lcom/android/dialer/app/SpecialCharSequenceMgr;->handleWarrantyTimeDisplay(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 174
    invoke-static {p0, p3}, Lcom/android/dialer/app/SpecialCharSequenceMgr;->handleSecretCode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 177
    invoke-static {p0, p3}, Lcom/android/dialer/app/SpecialCharSequenceMgr;->handleStartRobust(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 178
    invoke-static {p0, p3}, Lcom/android/dialer/app/SpecialCharSequenceMgr;->handleHideMmsMenu(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 180
    invoke-static {p0, p3}, Lcom/android/dialer/app/SpecialCharSequenceMgr;->handleDisplaySimLock(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 181
    invoke-static {p0, p3}, Lcom/android/dialer/app/SpecialCharSequenceMgr;->handleOmaDmStack(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 182
    invoke-static {p0, p3}, Lcom/android/dialer/app/SpecialCharSequenceMgr;->handleDisplaySimLockStatus(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 187
    :cond_0
    invoke-static {p0, p1}, Lcom/android/dialer/oem/MotorolaUtils;->handleSpecialCharSequence(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method static handleDeviceIdDisplay(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 13

    const-string v0, ""

    const-string v1, "phone"

    .line 723
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 724
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    const v3, 0x104000a

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_1

    const-string v7, "*#*#8281234#*#*"

    .line 727
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 732
    :try_start_0
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    const-string v2, "/sys/class/mmc_host/mmc0/mmc0:0001/life_time"

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 733
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    const-string v1, " "

    .line 735
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 736
    aget-object p1, p1, v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 737
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Memory life_time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object p1, v0

    .line 739
    :goto_0
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    const/4 v1, -0x1

    .line 741
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_2

    :pswitch_0
    const-string v2, "0x0B"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v1, 0xb

    goto/16 :goto_2

    :pswitch_1
    const-string v2, "0x0A"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v1, 0xa

    goto/16 :goto_2

    :pswitch_2
    const-string v2, "0x09"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v1, 0x9

    goto :goto_2

    :pswitch_3
    const-string v2, "0x08"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v1, 0x8

    goto :goto_2

    :pswitch_4
    const-string v2, "0x07"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x7

    goto :goto_2

    :pswitch_5
    const-string v2, "0x06"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x6

    goto :goto_2

    :pswitch_6
    const-string v2, "0x05"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x5

    goto :goto_2

    :pswitch_7
    const-string v2, "0x04"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x4

    goto :goto_2

    :pswitch_8
    const-string v2, "0x03"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x3

    goto :goto_2

    :pswitch_9
    const-string v2, "0x02"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    goto :goto_2

    :pswitch_a
    const-string v2, "0x01"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move v1, v5

    goto :goto_2

    :pswitch_b
    const-string v2, "0x00"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move v1, v6

    :cond_0
    :goto_2
    packed-switch v1, :pswitch_data_2

    const-string p1, "Reserved"

    goto :goto_3

    :pswitch_c
    const-string p1, "Exceeded its maximum estimated device life time"

    goto :goto_3

    :pswitch_d
    const-string p1, "90%-100% device life time used"

    goto :goto_3

    :pswitch_e
    const-string p1, "80%-90% device life time used"

    goto :goto_3

    :pswitch_f
    const-string p1, "70%-80% device life time used"

    goto :goto_3

    :pswitch_10
    const-string p1, "60%-70% device life time used"

    goto :goto_3

    :pswitch_11
    const-string p1, "50%-60% device life time used"

    goto :goto_3

    :pswitch_12
    const-string p1, "40%-50% device life time used"

    goto :goto_3

    :pswitch_13
    const-string p1, "30%-40% device life time used"

    goto :goto_3

    :pswitch_14
    const-string p1, "20%-30% device life time used"

    goto :goto_3

    :pswitch_15
    const-string p1, "10%-20% device life time used"

    goto :goto_3

    :pswitch_16
    const-string p1, "0%-10% device life time used"

    goto :goto_3

    :pswitch_17
    const-string p1, "Not defined"

    .line 791
    :goto_3
    new-instance v1, Landroid/app/TctDialog;

    invoke-direct {v1, p0}, Landroid/app/TctDialog;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/dialer/app/SpecialCharSequenceMgr;->mTctDialog:Landroid/app/TctDialog;

    .line 792
    invoke-virtual {v1, v0}, Landroid/app/TctDialog;->setDialogTitle(Ljava/lang/CharSequence;)Landroid/app/TctDialog;

    .line 793
    sget-object p0, Lcom/android/dialer/app/SpecialCharSequenceMgr;->mTctDialog:Landroid/app/TctDialog;

    new-array v0, v5, [Ljava/lang/String;

    aput-object p1, v0, v6

    invoke-virtual {p0, v0, v4}, Landroid/app/TctDialog;->setListItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/TctDialog;

    .line 794
    sget-object p0, Lcom/android/dialer/app/SpecialCharSequenceMgr;->mTctDialog:Landroid/app/TctDialog;

    invoke-virtual {p0, v6}, Landroid/app/TctDialog;->setCancelable(Z)V

    .line 795
    sget-object p0, Lcom/android/dialer/app/SpecialCharSequenceMgr;->mTctDialog:Landroid/app/TctDialog;

    new-instance p1, Lcom/android/dialer/app/SpecialCharSequenceMgr$3;

    invoke-direct {p1}, Lcom/android/dialer/app/SpecialCharSequenceMgr$3;-><init>()V

    invoke-virtual {p0, v3, p1}, Landroid/app/TctDialog;->setCenterButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/TctDialog;

    .line 802
    sget-object p0, Lcom/android/dialer/app/SpecialCharSequenceMgr;->mTctDialog:Landroid/app/TctDialog;

    invoke-virtual {p0}, Landroid/app/TctDialog;->show()V

    return v5

    :cond_1
    if-eqz v1, :cond_a

    const-string v0, "*#06#"

    .line 810
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 811
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f110265

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 813
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 814
    invoke-static {v1}, Lcom/android/contacts/common/compat/TelephonyManagerCompat;->getPhoneCount(Landroid/telephony/TelephonyManager;)I

    move-result v8

    const-string v9, ": "

    if-le v8, v5, :cond_7

    move-object v10, v4

    move v8, v6

    .line 817
    :goto_4
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v11

    if-ge v8, v11, :cond_5

    .line 818
    invoke-static {v1, v2, v8}, Lcom/android/dialer/app/SpecialCharSequenceMgr;->getMeidOrEsn(Landroid/telephony/TelephonyManager;Landroid/telephony/SubscriptionManager;I)Ljava/lang/String;

    move-result-object v11

    if-nez v10, :cond_2

    .line 819
    invoke-static {v11}, Lcom/android/dialer/app/SpecialCharSequenceMgr;->isValidMeid(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_3

    :cond_2
    if-eqz v10, :cond_4

    .line 820
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 821
    invoke-static {v11}, Lcom/android/dialer/app/SpecialCharSequenceMgr;->isValidMeid(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 822
    :cond_3
    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v8, v8, 0x1

    move-object v10, v11

    goto :goto_4

    :cond_5
    move v2, v6

    .line 828
    :goto_5
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v8

    if-ge v2, v8, :cond_9

    .line 829
    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v8

    .line 830
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 831
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 835
    :cond_7
    invoke-static {v1, v2, v6}, Lcom/android/dialer/app/SpecialCharSequenceMgr;->getMeidOrEsn(Landroid/telephony/TelephonyManager;Landroid/telephony/SubscriptionManager;I)Ljava/lang/String;

    move-result-object v2

    .line 836
    invoke-static {v2}, Lcom/android/dialer/app/SpecialCharSequenceMgr;->isValidMeid(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 837
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 839
    :cond_8
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getImei()Ljava/lang/String;

    move-result-object v2

    .line 840
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 841
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    const v0, 0x7f11048d

    .line 844
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/android/dialer/app/SpecialCharSequenceMgr;->getSvn(Landroid/content/Context;Landroid/telephony/TelephonyManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 845
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 855
    new-instance v0, Landroid/app/TctDialog;

    invoke-direct {v0, p0}, Landroid/app/TctDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/dialer/app/SpecialCharSequenceMgr;->mTctDialog:Landroid/app/TctDialog;

    .line 856
    invoke-virtual {v0, p1}, Landroid/app/TctDialog;->setDialogTitle(Ljava/lang/CharSequence;)Landroid/app/TctDialog;

    .line 857
    sget-object p0, Lcom/android/dialer/app/SpecialCharSequenceMgr;->mTctDialog:Landroid/app/TctDialog;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v7, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, v4}, Landroid/app/TctDialog;->setListItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/TctDialog;

    .line 858
    sget-object p0, Lcom/android/dialer/app/SpecialCharSequenceMgr;->mTctDialog:Landroid/app/TctDialog;

    invoke-virtual {p0, v6}, Landroid/app/TctDialog;->setCancelable(Z)V

    .line 859
    sget-object p0, Lcom/android/dialer/app/SpecialCharSequenceMgr;->mTctDialog:Landroid/app/TctDialog;

    new-instance p1, Lcom/android/dialer/app/SpecialCharSequenceMgr$4;

    invoke-direct {p1}, Lcom/android/dialer/app/SpecialCharSequenceMgr$4;-><init>()V

    invoke-virtual {p0, v3, p1}, Landroid/app/TctDialog;->setCenterButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/TctDialog;

    .line 865
    sget-object p0, Lcom/android/dialer/app/SpecialCharSequenceMgr;->mTctDialog:Landroid/app/TctDialog;

    invoke-virtual {p0}, Landroid/app/TctDialog;->show()V

    return v5

    :cond_a
    return v6

    nop

    :pswitch_data_0
    .packed-switch 0x179a48
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x179a59
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch
.end method

.method private static handleDiagProtector(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 6

    const-string p2, "###2324#"

    .line 287
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    new-array p1, p2, [Ljava/lang/Object;

    const-string v0, "SpecialCharSequenceMgr"

    const-string v1, "handleDiagProtector"

    .line 288
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 289
    new-instance p1, Landroid/content/Intent;

    const-string v1, "action.usbprotect.changed"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.settings"

    .line 290
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "persist.sys.usb.protect"

    const-string v2, "1"

    .line 291
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 292
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string/jumbo v4, "usbprotect"

    if-eqz v3, :cond_0

    new-array v3, p2, [Ljava/lang/Object;

    const-string v5, "handleDiagProtector diagprotect_off"

    .line 293
    invoke-static {v0, v5, v3}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "0"

    .line 294
    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    new-array v3, p2, [Ljava/lang/Object;

    const-string v5, "handleDiagProtector diagprotect_on"

    .line 296
    invoke-static {v0, v5, v3}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 301
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    .line 302
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 303
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1101c8

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 305
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1101c9

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 315
    :goto_1
    new-instance v0, Landroid/app/TctDialog;

    invoke-direct {v0, p0}, Landroid/app/TctDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/dialer/app/SpecialCharSequenceMgr;->mTctDialog:Landroid/app/TctDialog;

    const p0, 0x7f1101ca

    .line 316
    invoke-virtual {v0, p0}, Landroid/app/TctDialog;->setDialogTitle(I)Landroid/app/TctDialog;

    .line 317
    sget-object p0, Lcom/android/dialer/app/SpecialCharSequenceMgr;->mTctDialog:Landroid/app/TctDialog;

    invoke-virtual {p0, p1}, Landroid/app/TctDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/TctDialog;

    .line 318
    sget-object p0, Lcom/android/dialer/app/SpecialCharSequenceMgr;->mTctDialog:Landroid/app/TctDialog;

    invoke-virtual {p0, p2}, Landroid/app/TctDialog;->setCancelable(Z)V

    .line 319
    sget-object p0, Lcom/android/dialer/app/SpecialCharSequenceMgr;->mTctDialog:Landroid/app/TctDialog;

    const p1, 0x104000a

    new-instance p2, Lcom/android/dialer/app/SpecialCharSequenceMgr$1;

    invoke-direct {p2}, Lcom/android/dialer/app/SpecialCharSequenceMgr$1;-><init>()V

    invoke-virtual {p0, p1, p2}, Landroid/app/TctDialog;->setCenterButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/TctDialog;

    .line 326
    sget-object p0, Lcom/android/dialer/app/SpecialCharSequenceMgr;->mTctDialog:Landroid/app/TctDialog;

    invoke-virtual {p0}, Landroid/app/TctDialog;->show()V

    const/4 p0, 0x1

    return p0

    :cond_2
    return p2
.end method

.method private static handleDisplaySimLock(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "#83865625#"

    .line 952
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->isTracfoneProduct()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "SpecialCharSequenceMgr"

    const-string v0, "handleDisplaySimLock - intent action = com.tct.intent.action.DISPLAY_SIMLOCK"

    .line 954
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.tct.intent.action.DISPLAY_SIMLOCK"

    .line 956
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 957
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 958
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 959
    instance-of p1, p0, Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 960
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static handleDisplaySimLockStatus(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "#83782887#"

    .line 939
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->isTracfoneProduct()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "SpecialCharSequenceMgr"

    const-string v0, "handleDisplaySimLockStatus - intent action = com.tct.intent.action.DISPLAY_SIMLOCK_STATUS"

    .line 941
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.tct.intent.action.DISPLAY_SIMLOCK_STATUS"

    .line 943
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 944
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 945
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static handleEnabledVvm(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .line 420
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "*#886#*"

    .line 425
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 426
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "enabled_vvm"

    const/4 v2, 0x1

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const-string v3, "SpecialCharSequenceMgr"

    if-nez p1, :cond_1

    const-string p1, "enable_vvm"

    .line 427
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p1, "enabled vvm"

    .line 429
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    const-string p1, "disabled_vvm"

    .line 431
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p1, "disabled vvm"

    .line 433
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return v2

    :cond_2
    return v1
.end method

.method private static handleHideImsApn(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    const-string v0, "*#467#*"

    .line 363
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 364
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "show_ims"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v2, 0x1

    const-string v3, "SpecialCharSequenceMgr"

    if-nez p1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string v4, "Handle IMS show"

    .line 365
    invoke-static {v3, v4, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 366
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p1, "show ims apn"

    .line 367
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    new-array p1, v0, [Ljava/lang/Object;

    const-string v4, "Handle IMS hide"

    .line 369
    invoke-static {v3, v4, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 370
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p1, "hide ims apn"

    .line 371
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return v2

    :cond_1
    return v0
.end method

.method private static handleHideMmsMenu(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "*#66746#*"

    .line 380
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "SpecialCharSequenceMgr"

    const-string v0, "handleHideMmsMenu sending intent to mms app"

    .line 381
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.mms"

    const-string v2, "com.android.mms.ui.MMSHideMenuActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 385
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 387
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startActivity() failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static handleMHSCheck(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "*#731#*"

    .line 346
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    const-string v2, "VZWHotSpot check "

    .line 347
    invoke-static {v0, v2, p1}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 348
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "VZWCHECK"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 349
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p1, "VZW hotspot check is off"

    .line 350
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 352
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p1, "VZW hotspot check is on"

    .line 353
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return v2

    :cond_1
    return v1
.end method

.method private static handleMMITestMode(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "*#2886#"

    .line 493
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 495
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.mmi"

    const-string v2, "com.android.mmi.MMITest"

    .line 496
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 497
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "SpecialCharSequenceMgr"

    const-string v0, "no activity to handle MMITest."

    .line 500
    invoke-static {p1, v0, p0}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method private static handleOmaDmStack(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "##66266#"

    .line 926
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 927
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.ActionHiddenMenuOMADM"

    .line 928
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 929
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string p0, "SpecialCharSequenceMgr"

    const-string p1, "handleOmaDmStack, android.intent.action.ActionHiddenMenuOMADM"

    .line 930
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static handlePRLVersion(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "*#0000#"

    .line 508
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 510
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v1, "org.codeaurora.intent.action.ACTION_DEVICEINFO"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 511
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 512
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "SpecialCharSequenceMgr"

    const-string v1, "no activity to handle showing device info"

    .line 515
    invoke-static {p1, v1, p0}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return v0
.end method

.method static handlePinEntry(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    const-string v0, "**04"

    .line 671
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "**05"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 673
    invoke-static {p0}, Lcom/android/dialer/calllogutils/PhoneAccountUtils;->getSubscriptionPhoneAccounts(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    const-string v1, "tel"

    .line 676
    invoke-static {p0, v1}, Lcom/android/dialer/telecom/TelecomUtil;->getDefaultOutgoingPhoneAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    .line 675
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 678
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v2, v4, :cond_2

    if-eqz v1, :cond_1

    goto :goto_0

    .line 683
    :cond_1
    new-instance v1, Lcom/android/dialer/app/SpecialCharSequenceMgr$HandleMmiAccountSelectedCallback;

    invoke-direct {v1, p0, p1}, Lcom/android/dialer/app/SpecialCharSequenceMgr$HandleMmiAccountSelectedCallback;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 686
    invoke-static {v0, v1, v3}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->newInstance(Ljava/util/List;Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;Ljava/lang/String;)Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;

    move-result-object p1

    .line 688
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string v0, "tag_select_acct_fragment"

    invoke-virtual {p1, p0, v0}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return v4

    .line 681
    :cond_2
    :goto_0
    invoke-static {p0, p1, v3}, Lcom/android/dialer/telecom/TelecomUtil;->handleMmi(Landroid/content/Context;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)Z

    move-result p0

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private static handleRegulatoryInfoDisplay(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "*#07#"

    .line 909
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "SpecialCharSequenceMgr.handleRegulatoryInfoDisplay"

    const-string v1, "sending intent to settings app"

    .line 910
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 912
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.settings.SHOW_REGULATORY_INFO"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 914
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "startActivity() failed: "

    .line 916
    invoke-static {v0, p1, p0}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method static handleSecretCode(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .line 545
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-le v0, v2, :cond_2

    const-string v2, "*#*#"

    .line 546
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "#*#*"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    sub-int/2addr v0, v2

    .line 549
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "248"

    .line 550
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 553
    :cond_1
    invoke-static {p0, p1}, Lcom/android/contacts/common/compat/TelephonyManagerCompat;->handleSecretCode(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method private static handleStartRobust(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "*#2887#*"

    .line 399
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "SpecialCharSequenceMgr"

    const-string v0, "handleStartRobust() sending intent to settings app"

    .line 400
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.tct.robust"

    const-string v2, "com.tct.robust.activity.RobustTest"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 404
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 406
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startActivity() failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static handleWarrantyTimeDisplay(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const-string v0, "SpecialCharSequenceMgr"

    const-string v1, "*#2467#*"

    .line 443
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    const-string p1, "phone"

    .line 446
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    const-string p1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 454
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no contentTime Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 457
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleWarrantyTimeDisplay contentTime is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "0/0/0, 0:0"

    .line 463
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1105ab

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 471
    new-instance v2, Landroid/app/TctDialog;

    invoke-direct {v2, p0}, Landroid/app/TctDialog;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/android/dialer/app/SpecialCharSequenceMgr;->mTctDialog:Landroid/app/TctDialog;

    .line 472
    invoke-virtual {v2, v0}, Landroid/app/TctDialog;->setDialogTitle(Ljava/lang/CharSequence;)Landroid/app/TctDialog;

    .line 473
    sget-object p0, Lcom/android/dialer/app/SpecialCharSequenceMgr;->mTctDialog:Landroid/app/TctDialog;

    invoke-virtual {p0, p1}, Landroid/app/TctDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/TctDialog;

    .line 474
    sget-object p0, Lcom/android/dialer/app/SpecialCharSequenceMgr;->mTctDialog:Landroid/app/TctDialog;

    invoke-virtual {p0, v1}, Landroid/app/TctDialog;->setCancelable(Z)V

    .line 475
    sget-object p0, Lcom/android/dialer/app/SpecialCharSequenceMgr;->mTctDialog:Landroid/app/TctDialog;

    const p1, 0x104000a

    new-instance v0, Lcom/android/dialer/app/SpecialCharSequenceMgr$2;

    invoke-direct {v0}, Lcom/android/dialer/app/SpecialCharSequenceMgr$2;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/app/TctDialog;->setCenterButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/TctDialog;

    .line 482
    sget-object p0, Lcom/android/dialer/app/SpecialCharSequenceMgr;->mTctDialog:Landroid/app/TctDialog;

    invoke-virtual {p0}, Landroid/app/TctDialog;->show()V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method private static isValidMeid(Ljava/lang/String;)Z
    .locals 1

    .line 875
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "000000"

    .line 876
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static sendUSBDebugChangeBC(Landroid/content/Context;)V
    .locals 2

    .line 338
    new-instance v0, Landroid/content/Intent;

    const-string v1, "action.usbdebug.changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.settings"

    .line 339
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
